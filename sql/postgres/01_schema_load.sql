-- Create DB (run from the default postgres db). If you're already in saas_retention, skip CREATE DATABASE and \c.
CREATE DATABASE saas_retention;

\c saas_retention

DROP TABLE IF EXISTS subscriptions;

CREATE TABLE subscriptions (
    customer_id   TEXT        NOT NULL,
    month         DATE        NOT NULL,
    mrr           NUMERIC     NOT NULL,
    contract_type TEXT,
    churn_flag    INT         NOT NULL,   -- 1 on churn month else 0
    cohort_month  DATE        NOT NULL,   -- first paid month
    is_active     INT         NOT NULL    -- 1 if mrr>0 else 0
);


COPY subscriptions
FROM '/subscriptions.csv'
DELIMITER ','
CSV HEADER;

-- sanity checks
SELECT COUNT(*) AS rows_loaded FROM subscriptions;
SELECT MIN(month) AS min_month, MAX(month) AS max_month FROM subscriptions;
SELECT COUNT(DISTINCT customer_id) AS customers FROM subscriptions;
