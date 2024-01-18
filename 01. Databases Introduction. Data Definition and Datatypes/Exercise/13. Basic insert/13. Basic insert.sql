CREATE TABLE towns (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30)
);

CREATE TABLE addresses (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
address_text VARCHAR(30),
town_id INT NOT NULL,
FOREIGN KEY (town_id) REFERENCES towns(id)
);

CREATE TABLE departaments (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30)
);

CREATE TABLE employees (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(30),
middle_name VARCHAR(30),
last_name VARCHAR(30),
job_title VARCHAR(30),
departament_id INT NOT NULL,
hire_date DATE, 
salary DOUBLE NOT NULL, 
address_id INT NOT NULL,
FOREIGN KEY (departament_id) REFERENCES departaments(id),
FOREIGN KEY (address_id) REFERENCES addresses(id)
);

INSERT INTO towns (name)
VALUES('Sofia'),
('Plovdiv'),
('Varna'),
('Burgas');

INSERT INTO addresses (address_text, town_id) VALUES
('addressOfSofia', 1),
('addressOfPlovdiv', 2),
('addressOfVarna', 3),
('addressOfBurgas', 4);

INSERT INTO departaments (name)
VALUES('Engineering'),
('Sales'),
('Marketing'),
('Software Development'),
('Quality Assurance');

INSERT INTO employees (first_name,middle_name,last_name,job_title,departament_id,hire_date,salary,address_id)
VALUES('Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 4, '2013-02-01', 3500.00, 1),
('Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1, '2004-03-02', 4000.00, 2),
('Maria', 'Petrova', 'Ivanova', 'Intern', 5, '2016-08-28', 525.25, 3),
('Georgi', 'Terziev', 'Ivanov', 'CEO', 2, '2007-12-09', 3000.00, 3),
('Peter', 'Pan', 'Pan', 'Intern', 3, '2016-08-28', 599.88, 4);

SELECT * FROM employees;

