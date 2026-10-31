SELECT 'Project ' || p.id AS name,
       SUM(w.salary) *
       ((EXTRACT(YEAR FROM p.finish_date) - EXTRACT(YEAR FROM p.start_date)) * 12
        + (EXTRACT(MONTH FROM p.finish_date) - EXTRACT(MONTH FROM p.start_date))) AS price
FROM project p
JOIN project_worker pw ON pw.project_id = p.id
JOIN worker w ON w.id = pw.worker_id
GROUP BY p.id, p.start_date, p.finish_date
ORDER BY price DESC;