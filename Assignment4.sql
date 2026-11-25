CREATE DATABASE IF NOT EXISTS interview_commands_practice;
USE interview_commands_practice;
SET autocommit = 1;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(60),
    department VARCHAR(30),
    city VARCHAR(40),
    salary DECIMAL(10, 2),
    employment_status VARCHAR(15),
    phone VARCHAR(15) UNIQUE
) ENGINE = InnoDB;

INSERT INTO employees
    (employee_id, employee_name, department, city, salary, employment_status, phone)
VALUES
    (1, 'Rahul Sharma', 'IT', 'Delhi', 45000.00, 'Active', '9000000001'),
    (2, 'Priya Verma', 'HR', 'Mumbai', 42000.00, 'Active', '9000000002'),
    (3, 'Amit Patel', 'Sales', 'Ahmedabad', 38000.00, 'Inactive', '9000000003'),
    (4, 'Anjali Singh', 'IT', 'Kolkata', 50000.00, 'Active', '9000000004'),
    (5, 'Vijay Kumar', 'Finance', 'Bangalore', 55000.00, 'Active', '9000000005'),
    (6, 'Sanjay Reddy', 'Sales', 'Hyderabad', 36000.00, 'Active', '9000000006'),
    (7, 'Megha Iyer', 'IT', 'Chennai', 48000.00, 'Active', '9000000007'),
    (8, 'Neha Gupta', 'HR', 'Delhi', 32000.00, 'Inactive', '9000000008'),
    (9, 'Arjun Mehta', 'Finance', 'Pune', 52000.00, 'Active', '9000000009'),
    (10, 'Pooja Shah', 'Sales', 'Mumbai', 40000.00, 'Active', '9000000010');
COMMIT; 
select * from employees;

INSERT INTO employees values(11,'Karan Malhotra','IT','Noida',41000,'Active','9000000011');
select * from employees;

use interview_commands_practice;

INSERT INTO employees values(12,'Simran Kaur','HR','Delhi',35000,'Active','9000000012'),
(13,'Rohan Das','Sales','Pune',33000,'Inactive','9000000013');

UPDATE employees set city='Gurgaon', salary=46000
WHERE employee_id=11;

UPDATE employees set salary=salary*1.10 
WHERE employee_id in (1,4,7);

DELETE FROM employees
WHERE employee_id in (3,8,13);

ALTER TABLE employees add column experience int;

UPDATE employees set experience = 2
WHERE employee_id in (1,2,4,5);

UPDATE employees set experience = 5 
WHERE employee_id in (6,7,9,10,11,12);

UPDATE employees set salary = salary + 5000 
WHERE department = 'HR';

SET SQL_SAFE_UPDATES = 0;
update employees set salary = salary + 5000 where department = 'HR';
SET SQL_SAFE_UPDATES = 1;

alter table employees add column status varchar(20) default 'Active';

UPDATE employees set status = 'Inactive' 
WHERE employee_id = 11;

DELETE FROM employees 
WHERE employee_id = 12;

select * from employees;

select * from employees 
WHERE department = 'HR';

select * from employees 
WHERE salary > 50000;

select * from employees
order by salary desc;

select * from employees 
where employee_name like 'A%';

select department, count(*) as total from employees group by department;