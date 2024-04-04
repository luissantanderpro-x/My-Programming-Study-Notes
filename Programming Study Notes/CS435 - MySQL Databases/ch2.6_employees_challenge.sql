# <MySQL> | Ch2.6 - Employees Challenge 

CREATE DATABASE company_db;

USE company_db;

CREATE TABLE employees (
	id INT NOT NULL AUTO_INCREMENT
	, last_name VARCHAR(50) NOT NULL
	, first_name VARCHAR(50) NOT NULL 
	, middle_name VARCHAR(50) NOT NULL
	, age INT NOT NULL
	, current_status VARCHAR(50) NOT NULL DEFAULT 'employed'
	, PRIMARY KEY(id)
);

DESC employees;

INSERT INTO employees(last_name, first_name, middle_name, age, current_status) 
VALUES ("doe", "john", "edward", 45, "employed");
INSERT INTO employees(last_name, first_name, middle_name, age, current_status)
VALUES ("doe", "jane", "edward", 46, "employed");
INSERT INTO employees(last_name, first_name, middle_name, age, current_status) 
VALUES ("doe", "max", "edward" , 48, "employed");
INSERT INTO employees(last_name, first_name, middle_name, age, current_status) 
VALUES ("doe", "john", "edward", 45, "employed");

SELECT * FROM employees; 