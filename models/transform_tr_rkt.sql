WITH raw_data AS (
    SELECT *
    FROM {{ source('bps', 'tr_rkt') }}  -- Replace 'your_schema' with your schema name
)

SELECT
    *,
    TRY_TO_DATE(period_budget, 'YYYY-MM-DD') AS period_budget_date  -- Convert period_budget from string to date
FROM raw_data;