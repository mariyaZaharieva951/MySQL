CREATE DATABASE cars;
USE cars;
CREATE TABLE categories(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
category VARCHAR(30) NOT NULL,
daily_rate DOUBLE,
weekly_rate DOUBLE,
montly_rate DOUBLE,
weekend_rate DOUBLE
);

CREATE TABLE cars(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
plate_number VARCHAR(10) NOT NULL,
make VARCHAR(45),
model VARCHAR(45) NOT NULL,
car_year YEAR,
category_id INT NOT NULL,
doors INT,
pictures BLOB,
car_condition TEXT,
available BOOLEAN,
CONSTRAINT fk_cars_category
FOREIGN KEY cars(id) REFERENCES categories(id)
);

CREATE TABLE employees (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 first_name VARCHAR(30), 
 last_name VARCHAR(30),
 title VARCHAR(30), 
 notes TEXT
);
CREATE TABLE customers (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
driver_licence_number INT, 
full_name VARCHAR(30), 
address VARCHAR(30), 
city VARCHAR(30), 
zip_code INT, 
notes TEXT);

CREATE TABLE rental_orders (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
employee_id INT NOT NULL, 
customer_id INT NOT NULL, 
car_id INT NOT NULL, 
car_condition TEXT, 
tank_level INT,
 kilometrage_start INT,
 kilometrage_end INT,
 total_kilometrage INT,
 start_date DATE,
 end_date DATE,
 total_days INT,
 rate_applied DOUBLE,
 tax_rate DOUBLE,
 order_status BOOLEAN,
 notes TEXT,
 CONSTRAINT fk_rental_orders_employee FOREIGN KEY rental_orders(employee_id) REFERENCES employees(id),
 CONSTRAINT fk_rental_orders_customer FOREIGN KEY rental_orders(customer_id) REFERENCES customers(id),
 CONSTRAINT fk_rental_orders_car FOREIGN KEY rental_orders(car_id) REFERENCES cars(id)
 );

INSERT INTO categories (category, daily_rate, weekly_rate, montly_rate, weekend_rate) VALUES
('idk1', NULL, NULL, NULL, NULL),
('idk2', NULL, NULL, NULL, NULL),
('idk3', NULL, NULL, NULL, NULL);

INSERT INTO cars (plate_number, make, model, car_year, category_id, doors, pictures, car_condition, available) VALUES
('TT 1234 TT', NULL, 'X5', NULL, 1, NULL, NULL, NULL, NULL),
('EE 4321 EE', NULL, 'M10', NULL, 2, NULL, NULL, NULL, NULL),
('AA 0000 AA', NULL, 'X6', NULL, 3, NULL, NULL, NULL, NULL);

INSERT INTO employees (first_name, last_name, title, notes) VALUES
('pow', 'pew', NULL, NULL),
('row', 'rew', NULL, NULL),
('vow', 'vew', NULL, NULL);

INSERT INTO customers (driver_licence_number, full_name, address, city, zip_code, notes) VALUES
(683963, 'Ri Ro Re', NULL, NULL, NULL, NULL),
(834692, 'Pi Po Pe', NULL, NULL, NULL, NULL),
(132553, 'Li Lo Le', NULL, NULL, NULL, NULL);

INSERT INTO rental_orders (employee_id, customer_id, car_id, car_condition, tank_level, kilometrage_start, kilometrage_end, total_kilometrage, start_date, end_date, total_days, rate_applied, tax_rate, order_status, notes) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);



