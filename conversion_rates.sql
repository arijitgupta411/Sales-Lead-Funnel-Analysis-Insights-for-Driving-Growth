-- conversion_rates.sql
-- Funnel counts by lead_source
SELECT l.lead_source,
       COUNT(*) AS total_leads,
       SUM(CASE WHEN s.stage IN ('Contacted','Proposal','Closed Won','Closed Lost') THEN 1 ELSE 0 END) AS engaged,
       SUM(CASE WHEN s.stage = 'Closed Won' THEN 1 ELSE 0 END) AS closed_won,
       ROUND(1.0 * SUM(CASE WHEN s.stage = 'Closed Won' THEN 1 ELSE 0 END) / COUNT(*), 3) AS win_rate
FROM leads l
LEFT JOIN sales s ON l.lead_id = s.lead_id
GROUP BY l.lead_source;