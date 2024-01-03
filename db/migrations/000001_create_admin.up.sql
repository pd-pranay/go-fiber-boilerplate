CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE IF NOT EXISTS admin (
	id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
	index SERIAL,
	name TEXT NOT NULL,
	email TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
	created_at timestamptz DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
) WITH (
  OIDS=FALSE
);