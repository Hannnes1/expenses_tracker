CREATE VIEW last_12_months_category_average AS
SELECT
    user_id,
    category_id,
    AVG(total_amount) AS average_amount
FROM
    monthly_category_totals
WHERE
    month >= NOW() - INTERVAL '12 months'
GROUP BY
    user_id, category_id;

INSERT INTO schema_changes (version_number, script_name) VALUES (1, '03_change_0002.sql');