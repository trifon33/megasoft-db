SELECT c.name AS name, COUNT(p.id) AS project_count
FROM client c
JOIN project p ON p.client_id = c.id
GROUP BY c.id, c.name
HAVING COUNT(p.id) = (
    SELECT MAX(cnt)
    FROM (
        SELECT COUNT(*) AS cnt
        FROM project
        GROUP BY client_id
    ) t
);