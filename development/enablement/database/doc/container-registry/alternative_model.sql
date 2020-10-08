BEGIN;

CREATE TABLE public.media_types (
    created_at timestamp WITH time zone NOT NULL DEFAULT now(),
    id smallint NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    media_type text not null,
    CONSTRAINT ck_media_types_type_length CHECK ((char_length(media_type) <= 255)),
    CONSTRAINT pk_media_types PRIMARY KEY (id),
    CONSTRAINT uq_media_types_type UNIQUE (media_type)
);

CREATE TABLE public.blobs (
      digest bytea not null,
      size bigint NOT NULL,
      media_type_id smallint not null references media_types (id),
      created_at timestamp WITH time zone NOT NULL DEFAULT now(),
      CONSTRAINT pk_blobs PRIMARY KEY (digest)
) PARTITION BY HASH (digest);

CREATE TABLE public.repositories (
    id bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    parent_id bigint REFERENCES repositories (id) on delete cascade,
    created_at timestamp WITH time zone NOT NULL DEFAULT now(),
    updated_at timestamp WITH time zone,
    name text NOT NULL,
    path text NOT NULL,
    CONSTRAINT pk_repositories PRIMARY KEY (id),
    CONSTRAINT uq_repositories_path UNIQUE (path),
    CONSTRAINT ck_repositories_name_length CHECK ((char_length(name) <= 255)),
    CONSTRAINT ck_repositories_path_length CHECK ((char_length(path) <= 255))
);

CREATE TABLE public.manifests (
    id bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    repository_id bigint not null references repositories (id) ON DELETE CASCADE,
    created_at timestamp WITH time zone NOT NULL DEFAULT now(),
    schema_version integer NOT NULL,
    media_type_id smallint not null references media_types (id),
    digest bytea not null,
    payload bytea NOT NULL,
    configuration_payload bytea,     -- the actual configuration payload
    configuration_media_type_id smallint references media_types (id),
    configuration_blob_digest bytea references blobs (digest), -- references a blob for the configuration
    CONSTRAINT pk_manifests PRIMARY KEY (repository_id, id),
    CONSTRAINT uq_manifests_repository_id_digest UNIQUE (repository_id, digest)
) PARTITION BY HASH (repository_id);

CREATE TABLE public.manifest_references (
    id bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    repository_id bigint not null,
    parent_id bigint NOT NULL,
    child_id bigint NOT NULL,
    created_at timestamp WITH time zone NOT NULL DEFAULT now(),
    CONSTRAINT pk_manifest_references PRIMARY KEY (repository_id, id),
    CONSTRAINT uq_manifest_references_parent_id_child_id UNIQUE (repository_id, parent_id, child_id),
    CONSTRAINT ck_manifest_references_parent_id_child_id_differ CHECK (parent_id <> child_id),
    CONSTRAINT fk_manifest_references_repository_id_parent_id_manifests FOREIGN KEY (repository_id, parent_id) REFERENCES manifests (repository_id, id) ON DELETE CASCADE,
    CONSTRAINT fk_manifest_references_repository_id_child_id_manifests FOREIGN KEY (repository_id, child_id) REFERENCES manifests (repository_id, id) ON DELETE CASCADE
) PARTITION BY HASH (repository_id);

CREATE TABLE public.layers (
     id bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY,
     repository_id bigint not null,
     manifest_id bigint NOT NULL,

     digest bytea not null references blobs (digest),

     -- this is redundant to blobs - would help to avoid large joins.
     size bigint NOT NULL,
     media_type_id smallint not null references media_types (id),

     created_at timestamp WITH time zone NOT NULL DEFAULT now(),
     CONSTRAINT pk_layers PRIMARY KEY (repository_id, id),
     CONSTRAINT uq_layers_repository_id_manifest_id_digest UNIQUE (repository_id, manifest_id, digest),
     CONSTRAINT fk_layers_repository_id_manifest_id_manifests FOREIGN KEY (repository_id, manifest_id) REFERENCES manifests (repository_id, id) ON DELETE CASCADE
) PARTITION BY HASH (repository_id);

-- illustrative purposes only - those are blobs to be "reviewed" if they are actually dangling an can be deleted
-- this is an alternative to setting blobs_layers references to NULL
CREATE TABLE public.blob_review_queue (
  digest bytea not null primary key,
  review_after timestamp with time zone not null default now() + INTERVAL '1 day'
);

CREATE FUNCTION public.track_blob_usage() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
IF (TG_OP = 'DELETE') THEN
  -- TODO: We can do more stuff here, this is just for illustrative purposes. 
  -- Note: This doesn't have to be a trigger, it can also be application logic
  IF (SELECT COUNT(*) FROM blobs_layers WHERE id <> OLD.id AND digest = OLD.digest AND layer_id IS NOT NULL) = 0 THEN
    INSERT INTO blob_review_queue (digest) VALUES (OLD.digest) ON CONFLICT (digest) DO NOTHING;
  END IF;
ELSIF (TG_OP = 'INSERT') THEN
  INSERT INTO blobs_layers (digest, repository_id, layer_id)
  VALUES (NEW.digest, NEW.repository_id, NEW.id)
  ON CONFLICT (digest, layer_id) DO NOTHING;

  INSERT INTO repository_blobs (repository_id, blob_digest)
  VALUES (NEW.repository_id, NEW.digest)
  ON CONFLICT (repository_id, blob_digest) DO NOTHING;
END IF;

RETURN NULL;

END
$$;

CREATE TRIGGER track_blob_usage_trigger AFTER INSERT OR UPDATE OR DELETE ON public.layers FOR EACH ROW EXECUTE PROCEDURE public.track_blob_usage();

-- this gets managed through INSERT TRIGGER on layers
CREATE TABLE public.blobs_layers (
  id bigint not null generated by default as identity,

  digest bytea not null REFERENCES blobs (digest) ON DELETE CASCADE,

  repository_id bigint NOT NULL,
  layer_id bigint NOT NULL,

  CONSTRAINT pk_blobs_layers PRIMARY KEY (digest, id),
  CONSTRAINT uq_blobs_layers_digest_layer_id UNIQUE (digest, layer_id),
  CONSTRAINT fk_blobs_layers_repository_id_layer_id_layers FOREIGN KEY (repository_id, layer_id) REFERENCES layers (repository_id, id) ON DELETE CASCADE
) PARTITION BY HASH (digest);

CREATE TABLE public.tags (
     id bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY,
     repository_id bigint NOT NULL,
     manifest_id bigint NOT NULL,
     created_at timestamp WITH time zone NOT NULL DEFAULT now(),
     updated_at timestamp WITH time zone,
     name text NOT NULL,
     CONSTRAINT pk_tags PRIMARY KEY (repository_id, id),
     CONSTRAINT uq_tags_repository_id_name UNIQUE (repository_id, name),
     CONSTRAINT ck_tags_name_length CHECK ((char_length(name) <= 255)),
     CONSTRAINT fk_tags_repository_id_manifest_id_manifests FOREIGN KEY (repository_id, manifest_id) REFERENCES manifests (repository_id, id) ON DELETE CASCADE
) PARTITION BY HASH (repository_id);

CREATE TABLE public.repository_blobs (
      id bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY,
      repository_id bigint NOT NULL REFERENCES repositories (id) ON DELETE CASCADE,
      blob_digest bytea not null REFERENCES blobs (digest) ON DELETE CASCADE,
      created_at timestamp WITH time zone NOT NULL DEFAULT now(),
      CONSTRAINT pk_repository_blobs PRIMARY KEY (repository_id, id),
      CONSTRAINT uq_repository_blobs_repository_id_blob_digest UNIQUE (repository_id, blob_digest)
) PARTITION BY HASH (repository_id);

CREATE SCHEMA partitions;

SET search_path=partitions;

-- who says HASH cannot have default partitions?
CREATE TABLE blobs_default PARTITION OF public.blobs FOR VALUES WITH (MODULUS 1, REMAINDER 0);
CREATE TABLE manifests_default PARTITION OF public.manifests FOR VALUES WITH (MODULUS 1, REMAINDER 0);
CREATE TABLE manifest_references_default PARTITION OF public.manifest_references FOR VALUES WITH (MODULUS 1, REMAINDER 0);
CREATE TABLE layers_default PARTITION OF public.layers FOR VALUES WITH (MODULUS 1, REMAINDER 0);
CREATE TABLE blobs_layers_default PARTITION OF public.blobs_layers FOR VALUES WITH (MODULUS 1, REMAINDER 0);
CREATE TABLE tags_default PARTITION OF public.tags FOR VALUES WITH (MODULUS 1, REMAINDER 0);
CREATE TABLE repository_blobs_default PARTITION OF public.repository_blobs FOR VALUES WITH (MODULUS 1, REMAINDER 0);

SET search_path=public;

INSERT INTO media_types (media_type) VALUES ('default');
INSERT INTO repositories (name, path) VALUES ('testrepo', 'testrepo');
INSERT INTO manifests (repository_id, schema_version, media_type_id, digest, payload) VALUES (1, 1, 1, decode('00112233', 'hex'), decode('00', 'hex'));
INSERT INTO blobs (digest, size, media_type_id) VALUES (decode('0011223344', 'hex'), 32, 1);
INSERT INTO layers (repository_id, manifest_id, digest, size, media_type_id) VALUES (1, 1, decode('0011223344', 'hex'), 32, 1);

COMMIT;

