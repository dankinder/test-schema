--liquibase formatted sql

--changeset dkinder:DBOPS-1

CREATE TABLE thing (
  id SERIAL NOT NULL,
  name TEXT NOT NULL,
  url TEXT NOT NULL,
);
CREATE INDEX url ON thing USING btree (url);

--rollback DROP INDEX url;
--rollback DROP TABLE thing;
