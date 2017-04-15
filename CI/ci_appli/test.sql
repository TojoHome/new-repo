CREATE DATABASE database_crud
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'French_France.1252'
       LC_CTYPE = 'French_France.1252'
       CONNECTION LIMIT = -1;

use database_crud;
	   
CREATE TABLE persons
(
  id serial NOT NULL,
  firstname character varying(100) DEFAULT NULL::character varying,
  lastname character varying(100) DEFAULT NULL::character varying,
  gender character varying(100) DEFAULT NULL::character varying,
  address character varying(200) DEFAULT NULL::character varying,
  dob date,
  photo character varying(255) DEFAULT NULL::character varying,
  CONSTRAINT persons_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE persons
  OWNER TO postgres;
