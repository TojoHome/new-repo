create database_crud;
use crud;
-- Table: persons

-- DROP TABLE persons;

CREATE TABLE persons
(
  id serial NOT NULL,
  "firstName" character varying(100) DEFAULT NULL::character varying,
  "lastName" character varying(100) DEFAULT NULL::character varying,
  gender character varying(100) DEFAULT NULL::character varying,
  address character varying(200) DEFAULT NULL::character varying,
  dob date,
  CONSTRAINT persons_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE persons
  OWNER TO postgres;