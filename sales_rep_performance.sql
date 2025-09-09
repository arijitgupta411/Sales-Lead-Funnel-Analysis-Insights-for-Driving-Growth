-- sales_rep_performance.sql
SELECT sales_rep,
       COUNT(*) AS deals,
       SUM(CASE WHEN stage = 'Closed Won' THEN 1 ELSE 0 END) AS wins,
       ROUND(1.0 * SUM(CASE WHEN stage = 'Closed Won' THEN 1 ELSE 0 END) / COUNT(*), 3) AS win_rate,
       SUM(amount) FILTER (WHERE stage = 'Closed Won') AS revenue_won
FROM sales
GROUP BY sales_rep
ORDER BY revenue_won DESC;