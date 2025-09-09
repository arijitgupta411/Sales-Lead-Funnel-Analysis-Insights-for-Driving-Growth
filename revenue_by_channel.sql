-- revenue_by_channel.sql
SELECT l.lead_source, p.category,
       COUNT(s.sale_id) AS num_sales,
       SUM(s.amount) FILTER (WHERE s.stage = 'Closed Won') AS revenue
FROM sales s
LEFT JOIN leads l ON s.lead_id = l.lead_id
LEFT JOIN products p ON s.product_id = p.product_id
GROUP BY l.lead_source, p.category
ORDER BY revenue DESC NULLS LAST;