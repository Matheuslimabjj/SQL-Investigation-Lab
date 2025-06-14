1- Retrieve after hours failed login attempts

SELECT * FROM log_in_attempts
WHERE login_time > '18:00:00'
AND success = 0;


2- Retrieve login attempts on specific dates

SELECT * FROM log_in_attempts
WHERE login_date = '2022-05-09'
OR login_date = '2022-05-08';


3- Retrieve login attempts outside Mexico

SELECT * FROM log_in_attempts
WHERE country != 'MEX%';

4- Retrieve employees in Marketing (East building)

SELECT * FROM employees
WHERE department = 'Marketing'
AND office LIKE 'East%';


5- Retrieve employees in Finance or Sales

SELECT * FROM employees
WHERE department NOT LIKE '%Tecnologia da Informação%';
