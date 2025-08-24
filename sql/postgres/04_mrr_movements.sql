-- Monthly MRR movements: New / Expansion / Contraction / Churned
-- Output: month, new_mrr, expansion_mrr, contraction_mrr, churned_mrr

WITH w AS (
  SELECT
    s.*,
    LAG(mrr) OVER (PARTITION BY customer_id ORDER BY month) AS prev_mrr
  FROM subscriptions s
),
mov AS (
  SELECT
    *,
    CASE
      WHEN mrr > 0 AND COALESCE(prev_mrr,0) = 0 THEN 'new'
      WHEN mrr > prev_mrr AND prev_mrr > 0     THEN 'expansion'
      WHEN mrr < prev_mrr AND mrr > 0          THEN 'contraction'
      WHEN prev_mrr > 0 AND mrr = 0            THEN 'churn'
      ELSE NULL
    END AS movement
  FROM w
)
SELECT
  month,
  SUM(CASE WHEN movement = 'new'        THEN mrr            END)                           AS new_mrr,
  SUM(CASE WHEN movement = 'expansion'  THEN mrr - prev_mrr END)                           AS expansion_mrr,
  SUM(CASE WHEN movement = 'contraction'THEN mrr - prev_mrr END)                           AS contraction_mrr,
  SUM(CASE WHEN movement = 'churn'      THEN prev_mrr       END)                           AS churned_mrr
FROM mov
GROUP BY 1
ORDER BY 1;
