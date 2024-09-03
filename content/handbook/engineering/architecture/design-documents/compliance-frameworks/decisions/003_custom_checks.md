---
title: "Compliance Frameworks ADR 003: Custom Checks"
toc_hide: true
---

## Context

We want the ability to create custom checks so that users don't need to rely only on the exhaustive list of checks that
GitLab supports or would support in the future. Users could also have external services that might impact
whether their projects are compliant to a standard or not.

## Approach

To allow users to create checks on their own as per their requirements we need to have the following types of checks:

1. [Custom checks](#custom-checks): Enable users to create logical expressions with all available project settings.
1. [External checks](#external-checks): Enable users to create checks that rely on their external services like HTTP servers.

### Custom checks

We would allow users to create logical expressions with all the available project settings. These expressions would
be the checks against which the projects would be evaluated. We would store these as a structured JSON in the
`compliance_checks` table with 'custom' as the `check_type`.

As an example: Consider expression `'merge_method' = 'merge commit' AND ('project_name' LIKE "%-team" OR 'compliance_framework' != 'SOC2')`.
This expression will be saved in the database as JSON with the following structure:

```json
{
  "operator": "AND",
  "conditions": [
    {
      "field": "merge_method",
      "operator": "=",
      "value": "merge commit"
    },
    {
      "operator": "OR",
      "conditions": [
        {
          "field": "project_name",
          "operator": "LIKE",
          "value": "%-team"
        },
        {
          "field": "compliance_framework",
          "operator": "!=",
          "value": "SOC2"
        }
      ]
    }
  ]
}
```

We can also store simple expressions like `merge_method = 'merge commit'`, this would be stored in the database as the
following JSON:

```json
{
  "operator": "=",
  "field": "merge_method",
  "value": "merge commit"
}
```

We would create schema validators for validating the input and store these in the `expression` jsonb column of the
`compliance_checks` database table.

We would have a UI on the frontend with dropdowns to choose the field, operator and values. This is created so that
the users don't have to write complex JSON expressions on their own.

The above JSON would be parsed using an evaluator and the expression would be evaluated to true or false. A basic
evaluator class would look like:

```ruby
module ComplianceManagement
  module ComplianceChecks
    class QueryEvaluator
      def initialize(query, project)
        @query = query
        @project = project
      end

      def evaluate
        evaluate_node(@query)
      end

      private

      def evaluate_node(node)
        if node['operator']
          evaluate_operator_node(node)
        else
          evaluate_condition(node)
        end
      end

      def evaluate_operator_node(node)
        operator = node['operator'].upcase
        conditions = node['conditions']

        # Handle the case of a single condition
        if conditions.nil? || conditions.empty?
          return evaluate_condition(node)
        end

        results = conditions.map { |condition| evaluate_node(condition) }

        case operator
        when 'AND'
          results.all?
        when 'OR'
          results.any?
        else
          raise "Unknown operator: #{operator}"
        end
      end

      def evaluate_condition(condition)
        field_value = get_field_value(condition['field'])

        case condition['operator']
        when '='
          field_value == condition['value']
        when '!='
          field_value != condition['value']
        when 'LIKE'
          field_value.to_s.match?(like_to_regex(condition['value']))
        else
          raise "Unknown condition operator: #{condition['operator']}"
        end
      end

      def get_field_value(field)
        case field
        when 'merge_method'
          @project.merge_method.to_s
        when 'project_name'
          @project.name
        when 'compliance_framework'
          frameworks = @project.compliance_management_frameworks
          frameworks ? frameworks.map(&:name) : []
        else
          raise "Unknown field: #{field}"
        end
      end

      def like_to_regex(pattern)
        regex_pattern = Regexp.escape(pattern).gsub('%', '.*')
        Regexp.new("^#{regex_pattern}$", Regexp::IGNORECASE)
      end
    end
  end
end
```

We can then use the above evaluator on the stored JSON expression:

```ruby
simple_query = {
  "operator" => "=",
  "field" => "merge_method",
  "value" => "merge"
}

complex_query = {
  "operator" => "AND",
  "conditions" => [
    {
       "field" => "merge_method",
       "operator" => "=",
       "value" => "merge"
    },
    {
       "operator" => "OR",
       "conditions" => [
         {
           "field" => "project_name",
           "operator" => "LIKE",
           "value" => "%-team"
         },
         {
           "field" => "compliance_framework",
           "operator" => "!=",
           "value" => "SOC2"
         }
       ]
     }
  ]
}

evaluator = ComplianceManagement::ComplianceChecks::QueryEvaluator.new(complex_query, project)
result = evaluator.evaluate # Returns true or false

evaluator = ComplianceManagement::ComplianceChecks::QueryEvaluator.new(simple_query, project)
result = evaluator.evaluate # Returns true or false
```

### External checks

We would store the external HTTP/HTTPS URLs for the user's external services in the compliance_checks table with
'external' as the `check_type`.

We would POST the latest project settings to these external services and expect a boolean status as the response.

## Workflow

```mermaid
    classDiagram
class namespaces {
    id: bigint
    name: text
    path: text
    ...(more columns)
}
class projects {
    id: bigint,
    name: text
    path: text
    description: text
    ...(more columns)
}
class compliance_management_frameworks {
    id: bigint,
    name: text,
    description: text,
    ...(more columns)
}

class compliance_requirements {
    id: bigint
    created_at: timestamp
    updated_at: timestamp
    namespace_id: bigint
    framework_id: bigint
    name: text
    description: text
}

class compliance_checks {
    id: bigint
    created_at: timestamp
    updated_at: timestamp
    requirement_id: bigint
    namespace_id: bigint
    name: text
    description: text
    check_type: smallint
    external_url: text
    expression: jsonb
}

class project_compliance_adherence {
    id: bigint
    created_at: timestamp
    updated_at: timestamp
    project_id: bigint
    namespace_id: bigint
    compliance_check_id: bigint
    status: smallint
}

compliance_requirements --> compliance_checks : has_many
compliance_requirements <-- compliance_checks : belongs_to
compliance_management_frameworks --> compliance_requirements : has_many
compliance_management_frameworks <-- compliance_requirements : belongs_to
compliance_management_frameworks <--> projects : many_to_many
projects <-- namespaces : has_many
projects --> namespaces : belongs_to
namespaces --> compliance_management_frameworks : has_many
namespaces <-- compliance_management_frameworks : belongs_to
projects --> project_compliance_adherence : has_many
projects <-- project_compliance_adherence : belongs_to
compliance_checks --> project_compliance_adherence : has_one
compliance_checks <-- project_compliance_adherence : belongs_to
```

We would update the existing table `compliance_checks` with the above schema. The `check_type` column can either have
'custom' or 'external' as the valid values.

The columns `expression` and `external_url` are mutually exclusive and depending upon the `check_type` one of these
columns would be non null. In an unforeseen circumstance where more than one of these columns are filled, we would only
honour the column associated with the given check type. For example: for a row, if `external_url` and `expression` both
have values but the value of `check_type` column is 'custom', we would ignore the value stored in the external_url
column and will consider this row as a custom check.

We would create a new table `project_compliance_adherence` to store the results of the checks. Unlike the current
implementation we would only store results for compliance checks for the projects that have compliance requirements
and checks configured.

Any update to the project setting or group settings that are cascaded to the project will serve as the trigger point
and we would re-calculate the result of all the checks for that project. This means that we now need a relationship
between `compliance_checks` and `project_compliance_adherence` database tables.

Whenever there is a change in the status of a check we would create an audit event. This will help in capturing the
historical changes of that check for the given project and would also help in identifying the user and the actions
that led to the change in the status of the check.

We would query the rows in the `project_compliance_adherence` table for the given namespace and display the results
on the adherence dashboard.

## Constraints

1. We should limit the maximum number of compliance frameworks a project can have.
1. We should limit the maximum number of compliance requirements a framework can have.
1. We should limit the maximum number of compliance checks a requirement can have.
1. We should limit the maximum number of fields an expression can have.
1. Without the above limitations it would be very easy for users to abuse our system leading to query timeouts
and poor user experience.

## Decision

TBD
