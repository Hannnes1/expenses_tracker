-- Human readable view of transactions with category name and account name.
CREATE VIEW transactions_with_categories AS
SELECT t.*, c.name AS category_name, a.name AS account_name
FROM transactions t
INNER JOIN categories c ON t.category_id = c.id
INNER JOIN accounts a ON t.account_id = a.id;

INSERT INTO schema_changes (version_number, script_name) VALUES (4, '03_change_0004.sql');
