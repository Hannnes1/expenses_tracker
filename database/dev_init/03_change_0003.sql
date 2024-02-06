CREATE OR REPLACE VIEW monthly_category_totals AS
SELECT
    u.user_id,
    m.month,
    c.id AS category_id,
    COALESCE(SUM(CASE WHEN t.amount < 0::numeric THEN t.amount ELSE 0::numeric END), 0) AS negative_amount,
    COALESCE(SUM(CASE WHEN t.amount >= 0::numeric THEN t.amount ELSE 0::numeric END), 0) AS positive_amount,
    COALESCE(SUM(t.amount), 0) AS total_amount
FROM
    generate_series(
        (SELECT date_trunc('month', min(date)) AS first_month FROM transactions),
        date_trunc('month', current_date),
        interval '1 month'
    ) AS m(month)
    CROSS JOIN (SELECT DISTINCT user_id FROM transactions) AS u
    LEFT JOIN categories AS c ON 1 = 1  -- Join to all categories
    LEFT JOIN transactions AS t ON
        t.user_id = u.user_id AND
        date_trunc('month', t.date) = m.month AND
        t.category_id = c.id
GROUP BY u.user_id, m.month, c.id
ORDER BY m.month;

INSERT INTO schema_changes (version_number, script_name) VALUES (3, '03_change_0003.sql');
