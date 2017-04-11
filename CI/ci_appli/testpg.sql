/*
File name: C:\Users\dev\Documents\test.sql
Creation date: 04/11/2017
Created by MySQL to PostgreSQL 3.3 [Demo]
--------------------------------------------------
More conversion tools at http://www.convert-in.com
*/

/*
Table structure for table 'public.acl'
*/

DROP TABLE IF EXISTS "acl" CASCADE;
CREATE TABLE "acl" (
	"ai" SERIAL NOT NULL,
	"action_id" BIGINT NOT NULL,
	"user_id" BIGINT
) WITH OIDS;
DROP INDEX IF EXISTS "primary";
ALTER TABLE "acl" ADD CONSTRAINT "primary" PRIMARY KEY("ai");
DROP INDEX IF EXISTS "action_id";
CREATE INDEX "action_id" ON "acl"("action_id");
DROP INDEX IF EXISTS "user_id";
CREATE INDEX "user_id" ON "acl"("user_id");

/*
Dumping data for table 'public.acl'
*/


/*
Table structure for table 'public.acl_actions'
*/

DROP TABLE IF EXISTS "acl_actions" CASCADE;
CREATE TABLE "acl_actions" (
	"action_id" SERIAL NOT NULL,
	"action_code" VARCHAR(100)  NOT NULL,
	"action_desc" VARCHAR(100)  NOT NULL,
	"category_id" BIGINT NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "primaryacl_actions";
ALTER TABLE "acl_actions" ADD CONSTRAINT "primaryacl_actions" PRIMARY KEY("action_id");
DROP INDEX IF EXISTS "category_id";
CREATE INDEX "category_id" ON "acl_actions"("category_id");

/*
Dumping data for table 'public.acl_actions'
*/


/*
Table structure for table 'public.acl_categories'
*/

DROP TABLE IF EXISTS "acl_categories" CASCADE;
CREATE TABLE "acl_categories" (
	"category_id" SERIAL NOT NULL,
	"category_code" VARCHAR(100)  NOT NULL,
	"category_desc" VARCHAR(100)  NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "primaryacl_categories";
ALTER TABLE "acl_categories" ADD CONSTRAINT "primaryacl_categories" PRIMARY KEY("category_id");
DROP INDEX IF EXISTS "category_code";
CREATE UNIQUE INDEX "category_code" ON "acl_categories"("category_code");
DROP INDEX IF EXISTS "category_desc";
CREATE UNIQUE INDEX "category_desc" ON "acl_categories"("category_desc");

/*
Dumping data for table 'public.acl_categories'
*/


/*
Table structure for table 'public.auth_sessions'
*/

DROP TABLE IF EXISTS "auth_sessions" CASCADE;
CREATE TABLE "auth_sessions" (
	"id" VARCHAR(128)  NOT NULL,
	"user_id" BIGINT NOT NULL,
	"login_time" TIMESTAMP,
	"modified_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	"ip_address" VARCHAR(45)  NOT NULL,
	"user_agent" VARCHAR(60) 
) WITH OIDS;
DROP INDEX IF EXISTS "primaryauth_sessions";
ALTER TABLE "auth_sessions" ADD CONSTRAINT "primaryauth_sessions" PRIMARY KEY("id");

/*
Dumping data for table 'public.auth_sessions'
*/


/*
Table structure for table 'public.ci_sessions'
*/

DROP TABLE IF EXISTS "ci_sessions" CASCADE;
CREATE TABLE "ci_sessions" (
	"id" VARCHAR(128)  NOT NULL,
	"ip_address" VARCHAR(45)  NOT NULL,
	"timestamp" BIGINT DEFAULT 0 NOT NULL,
	"data" BYTEA NOT NULL
) WITH OIDS;
DROP INDEX IF EXISTS "primaryci_sessions";
ALTER TABLE "ci_sessions" ADD CONSTRAINT "primaryci_sessions" PRIMARY KEY("id");
DROP INDEX IF EXISTS "ci_sessions_timestamp";
CREATE INDEX "ci_sessions_timestamp" ON "ci_sessions"("timestamp");

/*
Dumping data for table 'public.ci_sessions'
*/


/*
Table structure for table 'public.denied_access'
*/

DROP TABLE IF EXISTS "denied_access" CASCADE;
CREATE TABLE "denied_access" (
	"ai" SERIAL NOT NULL,
	"ip_address" VARCHAR(45)  NOT NULL,
	"time" TIMESTAMP,
	"reason_code" SMALLINT DEFAULT '0'
) WITH OIDS;
DROP INDEX IF EXISTS "primarydenied_access";
ALTER TABLE "denied_access" ADD CONSTRAINT "primarydenied_access" PRIMARY KEY("ai");

/*
Dumping data for table 'public.denied_access'
*/


/*
Table structure for table 'public.ips_on_hold'
*/

DROP TABLE IF EXISTS "ips_on_hold" CASCADE;
CREATE TABLE "ips_on_hold" (
	"ai" SERIAL NOT NULL,
	"ip_address" VARCHAR(45)  NOT NULL,
	"time" TIMESTAMP
) WITH OIDS;
DROP INDEX IF EXISTS "primaryips_on_hold";
ALTER TABLE "ips_on_hold" ADD CONSTRAINT "primaryips_on_hold" PRIMARY KEY("ai");

/*
Dumping data for table 'public.ips_on_hold'
*/


/*
Table structure for table 'public.login_errors'
*/

DROP TABLE IF EXISTS "login_errors" CASCADE;
CREATE TABLE "login_errors" (
	"ai" SERIAL NOT NULL,
	"username_or_email" VARCHAR(255)  NOT NULL,
	"ip_address" VARCHAR(45)  NOT NULL,
	"time" TIMESTAMP
) WITH OIDS;
DROP INDEX IF EXISTS "primarylogin_errors";
ALTER TABLE "login_errors" ADD CONSTRAINT "primarylogin_errors" PRIMARY KEY("ai");

/*
Dumping data for table 'public.login_errors'
*/


/*
Table structure for table 'public.username_or_email_on_hold'
*/

DROP TABLE IF EXISTS "username_or_email_on_hold" CASCADE;
CREATE TABLE "username_or_email_on_hold" (
	"ai" SERIAL NOT NULL,
	"username_or_email" VARCHAR(255)  NOT NULL,
	"time" TIMESTAMP
) WITH OIDS;
DROP INDEX IF EXISTS "primaryusername_or_email_on_hold";
ALTER TABLE "username_or_email_on_hold" ADD CONSTRAINT "primaryusername_or_email_on_hold" PRIMARY KEY("ai");

/*
Dumping data for table 'public.username_or_email_on_hold'
*/


/*
Table structure for table 'public.users'
*/

DROP TABLE IF EXISTS "users" CASCADE;
CREATE TABLE "users" (
	"user_id" BIGINT NOT NULL,
	"username" VARCHAR(12) ,
	"email" VARCHAR(255)  NOT NULL,
	"auth_level" SMALLINT NOT NULL,
	"banned" VARCHAR(3)  DEFAULT '0' NOT NULL,
	"passwd" VARCHAR(60)  NOT NULL,
	"passwd_recovery_code" VARCHAR(60) ,
	"passwd_recovery_date" TIMESTAMP,
	"passwd_modified_at" TIMESTAMP,
	"last_login" TIMESTAMP,
	"created_at" TIMESTAMP,
	"modified_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) WITH OIDS;
DROP INDEX IF EXISTS "primaryusers";
ALTER TABLE "users" ADD CONSTRAINT "primaryusers" PRIMARY KEY("user_id");
DROP INDEX IF EXISTS "email";
CREATE UNIQUE INDEX "email" ON "users"("email");
DROP INDEX IF EXISTS "username";
CREATE UNIQUE INDEX "username" ON "users"("username");

/*
Dumping data for table 'public.users'
*/

