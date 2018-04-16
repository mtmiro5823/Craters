CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE obj (id uuid PRIMARY KEY, parent uuid REFERENCES obj, data json);
CREATE TABLE naming_authority (id uuid PRIMARY KEY, authority_name VARCHAR(120), description varchar(1024));
CREATE TABLE oname (id uuid PRIMARY KEY, name varchar (120), naming_authority uuid REFERENCES naming_authority, obj UUID REFERENCES obj);
CREATE TABLE observation (id uuid PRIMARY KEY, data json);
CREATE TABLE source (id uuid PRIMARY KEY, url varchar);
CREATE TABLE source_map (id uuid PRIMARY KEY,obs_id uuid REFERENCES observation, source_id uuid REFERENCES source);
