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
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id TEXT REFERENCES users(id) NOT NULL,
  name TEXT NOT NULL,
  description TEXT,
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE categories (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL,
  description TEXT,
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE transactions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id TEXT REFERENCES users(id) NOT NULL,
  date DATE NOT NULL,
  text TEXT NOT NULL,
  amount NUMERIC NOT NULL,
  account_id UUID REFERENCES accounts(id) NOT NULL,
  category_id UUID REFERENCES categories(id) NOT NULL,
  fixed_cost BOOLEAN NOT NULL,
  description TEXT,
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

/*
 * Summary of each months expenses per category.
 */
CREATE VIEW monthly_category_totals AS
SELECT
    transactions.user_id AS user_id,
    DATE_TRUNC('month', transactions.date) AS month,
    categories.id AS category_id,
    SUM(CASE WHEN transactions.amount < 0 THEN transactions.amount ELSE 0 END) AS negative_amount,
    SUM(CASE WHEN transactions.amount >= 0 THEN transactions.amount ELSE 0 END) AS positive_amount,
    SUM(transactions.amount) AS total_amount
FROM transactions
LEFT JOIN categories ON transactions.category_id = categories.id
GROUP BY transactions.user_id, month, categories.id
ORDER BY month;

/*
 * The fixed and variable costs per month.
 */
CREATE VIEW monthly_fixed_costs AS
SELECT
    transactions.user_id AS user_id,
    DATE_TRUNC('month', transactions.date) AS month,
    SUM(CASE WHEN transactions.fixed_cost THEN transactions.amount ELSE 0 END) AS fixed_cost_total,
    SUM(CASE WHEN NOT transactions.fixed_cost THEN transactions.amount ELSE 0 END) AS variable_cost_total
FROM transactions
GROUP BY transactions.user_id, MONTH
ORDER BY MONTH;

/*
 * The average monthly expenses the last year, with fixed and variable cost separated.
 */
CREATE VIEW year_monthly_average AS
SELECT
    user_id,
    AVG(CASE WHEN fixed_cost THEN monthly_sum END) AS average_fixed_cost,
    AVG(CASE WHEN NOT fixed_cost THEN monthly_sum END) AS average_variable_cost
FROM (
    SELECT
        transactions.user_id AS user_id,
        transactions.fixed_cost,
        DATE_TRUNC('month', transactions.date) AS month,
        SUM(transactions.amount) AS monthly_sum
    FROM transactions
    WHERE transactions.date >= CURRENT_DATE - INTERVAL '1 year'
    GROUP BY transactions.user_id, transactions.fixed_cost, month
) AS subquery
GROUP BY user_id;

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
