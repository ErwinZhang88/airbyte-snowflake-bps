WITH raw_data AS (
    -- Select all columns from the raw table
    SELECT * 
    FROM raw.bps.tr_rkt
)

-- Transform the period_budget column from VARCHAR to DATE
SELECT
    *,
    -- Use TRY_TO_DATE to handle invalid date formats without failing the transformation
    TRY_TO_DATE(substring(period_budget,1,10), 'YYYY-MM-DD') AS period_budget_date
FROM raw_data;
