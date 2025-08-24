\c saas_retention

-- Logo retention CSV
\copy (
  WITH base AS (
    SELECT customer_id, cohort_month, month,
           (DATE_PART('year', age(month, cohort_month))*12
            + DATE_PART('month', age(month, cohort_month)))::int AS month_offset
    FROM subscriptions
    WHERE mrr > 0
  ),
  cohort_size AS (
    SELECT cohort_month, COUNT(DISTINCT customer_id) AS n0
    FROM base WHERE month_offset=0
    GROUP BY 1
  )
  SELECT b.cohort_month, b.month_offset,
         COUNT(DISTINCT b.customer_id) AS active_customers,
         cs.n0 AS cohort_size,
         ROUND(100.0*COUNT(DISTINCT b.customer_id)::numeric/NULLIF(cs.n0,0),2) AS logo_retention_pct
  FROM base b
  JOIN cohort_size cs USING (cohort_month)
  GROUP BY 1,2,cs.n0
  ORDER BY 1,2
) TO '/cohort_logo_retention.csv' CSV HEADER;

-- Revenue retention CSV
\copy (
  WITH base AS (
    SELECT cohort_month, month,
           (DATE_PART('year', age(month, cohort_month))*12
            + DATE_PART('month', age(month, cohort_month)))::int AS month_offset,
           mrr
    FROM subscriptions
  ),
  m0 AS (
    SELECT cohort_month, SUM(mrr) AS m0_mrr
    FROM base WHERE month_offset=0
    GROUP BY 1
  )
  SELECT b.cohort_month, b.month_offset,
         SUM(b.mrr) AS cohort_mrr,
         m0.m0_mrr,
         ROUND(100.0*SUM(b.mrr)::numeric/NULLIF(m0.m0_mrr,0),2) AS revenue_retention_pct
  FROM base b
  JOIN m0 USING (cohort_month)
  GROUP BY 1,2,m0.m0_mrr
  ORDER BY 1,2
) TO '/cohort_rev_retention.csv' CSV HEADER;

-- MRR movements CSV
\copy (
  WITH w AS (
    SELECT s.*, LAG(mrr) OVER (PARTITION BY customer_id ORDER BY month) AS prev_mrr
    FROM subscriptions s
  ),
  mov AS (
    SELECT *,
      CASE
        WHEN mrr>0 AND COALESCE(prev_mrr,0)=0 THEN 'new'
        WHEN mrr>prev_mrr AND prev_mrr>0     THEN 'expansion'
        WHEN mrr<prev_mrr AND mrr>0          THEN 'contraction'
        WHEN prev_mrr>0 AND mrr=0            THEN 'churn'
        ELSE NULL
      END AS movement
    FROM w
  )
  SELECT month,
         SUM(CASE WHEN movement='new'        THEN mrr            END) AS new_mrr,
         SUM(CASE WHEN movement='expansion'  THEN mrr-prev_mrr   END) AS expansion_mrr,
         SUM(CASE WHEN movement='contraction'THEN mrr-prev_mrr   END) AS contraction_mrr,
         SUM(CASE WHEN movement='churn'      THEN prev_mrr       END) AS churned_mrr
  FROM mov
  GROUP BY 1
  ORDER BY 1
) TO '/subs_export.csv' CSV HEADER;

-- docker cp postgres-retention:/subs_export.csv ./exports/
