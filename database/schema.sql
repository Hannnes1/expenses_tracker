CREATE OR REPLACE FUNCTION set_updated_at()   
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW;   
END;
$$ language 'plpgsql';

CREATE TABLE users (
  id uuid PRIMARY KEY,
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
);

CREATE TABLE accounts (
  id uuid PRIMARY KEY,
  user_id uuid REFERENCES users(id),
  name text,
  description text,
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
);

CREATE TABLE categories (
  id uuid PRIMARY KEY,
  name text,
  description text,
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
);

CREATE TABLE transactions (
  id uuid PRIMARY KEY,
  user_id uuid REFERENCES users(id),
  account_id uuid REFERENCES accounts(id),
  category_id uuid REFERENCES categories(id),
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
);

/*
 * Table to track schema changes
 */
CREATE TABLE schema_changes (
    id SERIAL PRIMARY KEY,
    version_number INTEGER,
    script_name TEXT,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
);

INSERT INTO schema_changes (version_number, script_name) VALUES (1, '01_init.sql');
