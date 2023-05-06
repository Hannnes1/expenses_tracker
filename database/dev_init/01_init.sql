CREATE OR REPLACE FUNCTION set_updated_at()   
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW;   
END;
$$ language 'plpgsql';

CREATE TABLE users (
  id TEXT PRIMARY KEY,
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE accounts (
  id uuid PRIMARY KEY,
  user_id TEXT REFERENCES users(id) NOT NULL,
  name TEXT NOT NULL,
  description TEXT,
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE categories (
  id uuid PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT,
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE transactions (
  id uuid PRIMARY KEY,
  user_id TEXT REFERENCES users(id) NOT NULL,
  date TIME NOT NULL,
  text TEXT NOT NULL,
  amount NUMERIC NOT NULL,
  account_id uuid REFERENCES accounts(id) NOT NULL,
  category_id uuid REFERENCES categories(id) NOT NULL,
  fixed_cost BOOLEAN NOT NULL,
  description TEXT,
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

/*
 * Table to track schema changes
 */
CREATE TABLE schema_changes (
    id SERIAL PRIMARY KEY,
    version_number INTEGER NOT NULL,
    script_name TEXT NOT NULL,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO schema_changes (version_number, script_name) VALUES (1, '01_init.sql');
