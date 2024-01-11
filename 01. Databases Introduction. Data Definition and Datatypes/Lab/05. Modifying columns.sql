SELECT * FROM employees;

CREATE TABLE people (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(50) NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

SELECT first_name, last_name FROM employees;

CREATE TABLE categories(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL
);

CREATE TABLE products (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
category_id INT NOT NULL 
);

INSERT INTO employees VALUES(10,"Pesho",NULL);

INSERT INTO employees (first_name) VALUES("Gosho");

SELECT * FROM employees;

INSERT INTO employees (first_name, last_name) 
VALUES("Mariya", "Zaharieva"),
	  ("Deyan", "Zahariev"),
      ("Beni", "Zaharieva");

SELECT * FROM employees;

ALTER TABLE employees 
ADD COLUMN middle_name VARCHAR(50) NOT NULL;

SELECT * FROM employees;


ALTER TABLE employees 
MODIFY COLUMN middle_name VARCHAR(100);











