-- Revenue (MRR) retention by cohort and month offset
-- Output: cohort_month, month_offset, cohort_mrr, m0_mrr, revenue_retention_pct

WITH base AS (
  SELECT
    cohort_month,
    month,
    (DATE_PART('year', age(month, cohort_month))*12
     + DATE_PART('month', age(month, cohort_month)))::int AS month_offset,
    mrr
  FROM subscriptions
),
m0 AS (
  SELECT cohort_month, SUM(mrr) AS m0_mrr
  FROM base
  WHERE month_offset = 0
  GROUP BY 1
)
SELECT
  b.cohort_month,
  b.month_offset,
  SUM(b.mrr) AS cohort_mrr,
  m0.m0_mrr,
  ROUND(100.0 * SUM(b.mrr)::numeric / NULLIF(m0.m0_mrr,0), 2) AS revenue_retention_pct
FROM base b
JOIN m0 USING (cohort_month)
GROUP BY 1,2,m0.m0_mrr
ORDER BY 1,2;
