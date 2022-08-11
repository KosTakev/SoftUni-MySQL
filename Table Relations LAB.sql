#many to one
CREATE TABLE mountains (
id INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(30) NOT NULL
);

CREATE TABLE peaks (
id INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(40) NOT NULL,
mountain_id INT,

);

ALTER TABLE peaks
ADD CONSTRAINT fk_peaks_mountains
FOREIGN KEY (mountain_id) 
REFERENCES mountains(id);

#many to many
CREATE TABLE employees (
id INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(40) NOT NULL
);

CREATE TABLE projects (
id INT PRIMARY KEY AUTO_INCREMENT,
`project_name` VARCHAR(60)
);

CREATE TABLE employees_to_projects (
id INT PRIMARY KEY AUTO_INCREMENT,
project_id INT,
employee_id INT,
CONSTRAINT `fk_projects`
FOREIGN KEY (project_id)
REFERENCES projects(id),
CONSTRAINT fk_employees
FOREIGN KEY (employee_id)
REFERENCES employees(id)
);

#join
SELECT * 
FROM campers AS c
JOIN vehicles AS v
ON v.driver_id = c.id;

drop SCHEMA soft_uni;
