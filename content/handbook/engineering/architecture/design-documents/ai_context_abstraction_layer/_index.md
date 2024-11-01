---
title: "AI Context Abstraction Layer"
status: ongoing
creation-date: "2024-09-11"
authors: [ "@dgruzd" ]
coaches: [ "@shekharpatnaik" ]
dris: []
owning-stage: "~devops::data stores"
participating-stages: []
toc_hide: true
---

<!-- Design Documents often contain forward-looking statements -->

<!-- This renders the design document header on the detail page, so don't remove it-->
{{< design-document-header >}}

## Summary

To enhance the grounding of our AI features, there is a need for Retrieval Augmented Generation (RAG). As RAG evolves, no single method or storage solution currently addresses all potential use cases. Additionally, with advances in LLMs and larger context windows, our solution must remain adaptable. We also observe that customers leverage a variety of vector stores for RAG, making a one-size-fits-all approach impractical. Hence, creating an abstraction layer that unifies various RAG and embedding solutions will enable us to support diverse use cases efficiently.

## Motivation

The RAG abstraction layer will provide several key benefits:

- **Customer Flexibility**: Customers can integrate their preferred data stores and models.
- **Avoid Vendor Lock-in**: The architecture is designed to prevent dependency on a single vendor.
- **Modular Feature Development**: Features can be built independently of underlying data store constraints.
- **Adaptability**: Our solution can evolve as new techniques, models, and vendors emerge.

## Goals

- Enable teams to easily integrate vector databases and embedding models.
- Build an abstraction layer for diverse features like chat routing, memory, issue search, and code context.

## Proposal

Here's the outline of the proposed interface for the GitLab Data Layer.

### Setup

When admins set up a new supported database, they are going to add it to the GitLab
Data Layer configuration. It needs to be one of the databases that has an
adapter implemented.

It could look like:

```ruby
gitlab_rails['ai_context_abstraction_layer'] = {
  enabled: true,
  databases: {
    es1: {
      adapter: 'elasticsearch',
      options: {
          prefix: 'gitlab', # Optional, but important to allow using the same DB for multiple instances
          url: 'https://elastic.host'
      }
    },
    pg1: {
      adapter: 'postgresql',
      options: {
          prefix: 'gitlab', # Optional, but important to allow using the same DB for multiple instances
          host: 'postgres.host',
          username: 'postgres',
          password: '..'
      }
    },
    # ...
  }
}
```

### Public interface

#### Data migration

##### Creating the collection

```ruby
class AddIssueCollection < Gitlab::Ai::Context::Migration[1.0]
  milestone '18.0'

  def migrate
    create_collection :issues, number_of_partitions: 5 do |c|
      c.bigint :issue_id
      c.bigint :namespace_id
      c.bigint :project_id
      c.prefix :traversal_ids
      c.vector :embeddings, options: { m: 16, ef_construction: 100 }
      c.integer :embeddings_version
    end
  end
end
```

##### Migrating the collection

```ruby
class AddContentToIssueCollection < Gitlab::Ai::Context::Migration[1.0]
  milestone '18.0'

  def migrate
    add_field :issues, field: :content, type: :text
  end
end
```

```ruby
class BackfillContentToIssueCollection < Gitlab::Ai::Context::Migration[1.0]
  milestone '18.0'

  def migrate
    backfill_collection :issues, field: :content
  end
end
```

#### Ingestion

```ruby
Gitlab::Ai::ContextAbstractionLayer.track!(objects)
```

This will create references under the hood and add these to sharded redis
ZSET's, which are used as deduplicated queues.

Then another worker/workers processes the queue to be within the specified rate
limits.

#### Retrieval

```ruby
embeddings = Gitlab::Ai::ContextAbstractionLayer.embeddings('Abstraction layer', collection: :issues, model_version: 0)

q = <<-CQL
traversal_ids ^= "9970-" AND embeddings_version = 0 AND embeddings <=> #{embeddings}
CQL

Gitlab::Ai::ContextAbstractionLayer.collection(:issues).query(q).limit(5)
```

The initial idea is to use the GLQL compiler to transform the query into an AST. Currently,
it is being [rewritten in Rust](https://gitlab.com/gitlab-org/gitlab-query-language/glql-rust),
which allows us to incorporate it as part of the abstraction layer in the monolith.

Another alternative is to use a JSON object to represent the query, similar to the approach Elasticsearch takes.
However, one downside of this approach is that it makes expressing complex AND/OR queries quite challenging.
A SQL-like syntax might be more convenient and familiar to the team members.

### Initial features

We have not yet received the list of initial features planned to use the abstraction layer, but for now,
we assume it needs to support use cases such as:

- Code embeddings
- Issue/MR/Epic embeddings
- CI logs embeddings

We could implement a subset of the abstraction layer to support some of these features.
