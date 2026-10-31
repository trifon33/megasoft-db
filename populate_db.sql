INSERT INTO worker (id, name, birthday, level, salary) VALUES
(1,  'Oleksandr Petrenko',  '1985-03-12', 'Senior',  8000),
(2,  'Maria Kovalenko',     '1990-07-25', 'Middle',  4500),
(3,  'Ivan Shevchenko',     '1995-11-02', 'Junior',  2000),
(4,  'Olena Bondarenko',    '2003-01-15', 'Trainee',  500),
(5,  'Andrii Melnyk',       '1988-05-30', 'Senior',  6500),
(6,  'Natalia Tkachenko',   '1992-09-09', 'Middle',  3800),
(7,  'Dmytro Kravets',      '1998-12-20', 'Junior',  1800),
(8,  'Yulia Savchenko',     '2004-04-04', 'Trainee',  700),
(9,  'Serhii Lysenko',      '1975-06-17', 'Senior',  5500),
(10, 'Kateryna Moroz',      '1993-02-28', 'Middle',  4000);

INSERT INTO client (id, name) VALUES
(1, 'Alpha Corp'),
(2, 'Beta Ltd'),
(3, 'Gamma Inc'),
(4, 'Delta Group'),
(5, 'Epsilon LLC');

INSERT INTO project (id, client_id, start_date, finish_date) VALUES
(1,  1, '2022-01-01', '2025-01-01'),  
(2,  1, '2023-03-01', '2023-09-01'),  
(3,  1, '2024-01-01', '2024-02-01'),  
(4,  2, '2021-05-01', '2024-05-01'),  
(5,  2, '2023-01-01', '2024-01-01'),  
(6,  2, '2024-06-01', '2024-12-01'),  
(7,  3, '2020-01-01', '2022-01-01'),  
(8,  3, '2023-07-01', '2023-10-01'),  
(9,  4, '2022-09-01', '2023-09-01'),  
(10, 5, '2024-02-01', '2026-02-01');  

INSERT INTO project_worker (project_id, worker_id) VALUES
(1, 1), (1, 2), (1, 3),
(2, 4),
(3, 5), (3, 6),
(4, 1), (4, 7), (4, 8), (4, 9), (4, 10),
(5, 2), (5, 3),
(6, 6),
(7, 5), (7, 9),
(8, 4), (8, 8),
(9, 10), (9, 1),
(10, 2), (10, 3), (10, 7);