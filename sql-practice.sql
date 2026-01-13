-- =========================================
-- SQL Practice: User Management Operations
-- =========================================

-- -------------------------
-- INSERT: Add new users
-- -------------------------

INSERT INTO users (username, firstName, lastName, age)
VALUES
 ('asmith', 'Alice', 'Smith', 20),
 ('bdoe', 'Bob', 'Doe', 33),
 ('cjohnson', 'Charlie', 'Johnson', 41),
 ('dlee', 'David', 'Lee', 19),
 ('ejones', 'Eve', 'Jones', 30),
 ('fkim', 'Frank', 'Kim', 15),
 ('gwhite', 'Grace', 'White', 22),
 ('hwang', 'Henry', 'Wang', 19),
 ('ijones', 'Ivy', 'Jones', 50),
 ('jdoe', 'John', 'Doe', 65),
 ('klee', 'Kevin', 'Lee', 62),
 ('lchen', 'Linda', 'Chen', 24),
 ('mlee', 'Michael', 'Lee', 29),
 ('nkim', 'Nancy', 'Kim', 18),
 ('ojohnson', 'Oscar', 'Johnson', 40),
 ('pchen', 'Peter', 'Chen', 55),
 ('qwang', 'Quincy', 'Wang', 28),
 ('rjones', 'Rachel', 'Jones', 37),
 ('slee', 'Sam', 'Lee', 21),
 ('tkim', 'Tina', 'Kim', 26);

 -- -------------------------
-- SELECT: Basic queries
-- -------------------------

-- Select all users

select * from users;

-- -------------------------
-- UPDATE: Modify an existing user's name
-- -------------------------

UPDATE users SET firstName = 'Jane', lastName = 'Doe' WHERE username = 'jdoe';

-- -------------------------
-- DELETE: Remove a specific user
-- -------------------------

-- Explicit WHERE clause specifies which record to delete
DELETE FROM users WHERE username = 'jdoe';


-- -------------------------
-- SELECT: Retrieve users by last name
-- -------------------------
SELECT firstName, lastName FROM users WHERE lastName = 'Doe';

-- -------------------------
-- SELECT: Retrieve a user using compound conditions
-- -------------------------

-- Using AND
SELECT * FROM users WHERE lastName = 'Doe' AND firstName = 'John';

-- Using OR
SELECT * FROM users WHERE lastName = 'Doe' OR firstName = 'John';

-- Using AND NOT
SELECT * FROM users WHERE lastName = 'Doe' AND NOT firstName = 'John';

-- conditions grouped with parenthesis 
SELECT * FROM users WHERE lastName = 'Doe' AND (firstName = 'John' OR firstName = 'Jane');

-- select using Aliases
SELECT firstName AS First, lastName AS Last FROM users;

-- select using Calculated fields
SELECT username, age + 10 AS ageIn10Years FROM users;


-- -------------------------
-- ORDER BY: sort the results of a query by one or more columns
-- -------------------------

-- Age Descending 
SELECT * FROM users ORDER BY age DESC;

-- last name in ascending order and then by first name in ascending order 
SELECT * FROM users ORDER BY lastName ASC, firstName ASC;


-- -------------------------
-- LIMIT: limit the number of rows returned by a query
-- -------------------------

-- Limit to 5 users
SELECT * FROM users LIMIT 5;

-- -------------------------
-- OFFSET: control which portion of the query results is returned
-- -------------------------

-- retrieve the next 5 users in the table starting from the 6th user
SELECT * FROM users LIMIT 5 OFFSET 5;


-- -------------------------
-- Paging: retrieve and display large datasets in smaller, manageable chunks called "pages"
-- -------------------------

-- user is on page 3 and wants to see the next 10 users sorted by last name
SELECT * FROM users ORDER BY lastName ASC LIMIT 10 OFFSET 20;


