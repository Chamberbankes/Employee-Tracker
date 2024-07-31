INSERT INTO department (department_name) VALUES
('X-Men'),
('Brotherhood of Mutants');


INSERT INTO role (title, salary, department_id) VALUES
('Team Leader', 100000.00, 1),
('Strategist', 95000.00, 1),
('Member', 80000.00, 1),
('Team Leader', 105000.00, 2),
('Member', 90000.00, 2);


INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
('Cyclops', 'Summers', 1, NULL),
('Storm', 'Munroe', 2, 1),
('Wolverine', 'Logan', 3, 1),
('Jean', 'Grey', 2, 1),
('Nightcrawler', 'Wagner', 3, 1),
('Rogue', 'Dane', 3, 1),
('Gambit', 'LeBeau', 3, 1),
('Iceman', 'Bobby', 3, 1),
('Magneto', 'Lensherr', 4, NULL),
('Mystique', 'Raven', 5, 4),
('Toad', 'Unknown', 5, 4);