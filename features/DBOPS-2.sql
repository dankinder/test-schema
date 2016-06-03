--liquibase formatted sql

--changeset dkinder:DBOPS-2

ALTER TABLE thing ADD updated_at TIMESTAMP;

--rollback ALTER TABLE thing DROP updated_at;
