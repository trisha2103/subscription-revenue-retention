-- Logo retention by cohort and month offset
-- Output: cohort_month, month_offset, active_customers, cohort_size, logo_retention_pct

WITH base AS (
  SELECT
    customer_id,
    cohort_month,
    month,
    (DATE_PART('year', age(month, cohort_month))*12
     + DATE_PART('month', age(month, cohort_month)))::int AS month_offset
  FROM subscriptions
  WHERE mrr > 0
),
cohort_size AS (
  SELECT cohort_month, COUNT(DISTINCT customer_id) AS n0
  FROM base
  WHERE month_offset = 0
  GROUP BY 1
)
SELECT
  b.cohort_month,
  b.month_offset,
  COUNT(DISTINCT b.customer_id) AS active_customers,
  cs.n0 AS cohort_size,
  ROUND(100.0 * COUNT(DISTINCT b.customer_id)::numeric / NULLIF(cs.n0,0), 2) AS logo_retention_pct
FROM base b
JOIN cohort_size cs USING (cohort_month)
GROUP BY 1,2,cs.n0
ORDER BY 1,2;
