SELECT 'Project ' || id AS name,
       (EXTRACT(YEAR FROM finish_date) - EXTRACT(YEAR FROM start_date)) * 12
       + (EXTRACT(MONTH FROM finish_date) - EXTRACT(MONTH FROM start_date)) AS month_count
FROM project
WHERE (EXTRACT(YEAR FROM finish_date) - EXTRACT(YEAR FROM start_date)) * 12
      + (EXTRACT(MONTH FROM finish_date) - EXTRACT(MONTH FROM start_date)) = (
    SELECT MAX((EXTRACT(YEAR FROM finish_date) - EXTRACT(YEAR FROM start_date)) * 12
               + (EXTRACT(MONTH FROM finish_date) - EXTRACT(MONTH FROM start_date)))
    FROM project
);