-- A. USERS
--1
SELECT * FROM users ORDER BY user_name ASC;
--2
SELECT * FROM users ORDER BY user_name DESC;
--3
SELECT * FROM users WHERE user_name LIKE 'A%';
--4
SELECT * FROM users WHERE user_name LIKE '%a%';
--5
SELECT * FROM users WHERE user_email LIKE '%gmail%';
--6
SELECT * FROM users WHERE user_email LIKE '%@gmail.com';
--7
SELECT * FROM users WHERE user_email LIKE '%@gmail.com' AND user_name <> '';
--8
SELECT * FROM users WHERE user_email LIKE '%@gmail.com' AND LENGTH(user_name) > 5;
--9
SELECT * FROM users WHERE user_email NOT LIKE '%@gmail.com';
--10
SELECT * FROM users WHERE LENGTH(user_email) > 10;