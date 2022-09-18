 -- SQL Lesson 10: Queries with aggregates (Pt. 1):
 Find the longest time that an employee has been at the studio :
 
 "SELECT MAX(years_employed) FROM employees
 GROUP BY role;"
 
 For each role, find the average number of years employed by employees in that role:
 
 "SELECT role, AVG(years_employed) FROM employees
 GROUP BY role;"
 
 
 Find the total number of employee years worked in each building:
 
 "SELECT building, SUM(years_employed) AS total
 FROM employees
 GROUP by building;"
 
 
 --  SQL Lesson 11: Queries with aggregates (Pt. 2) 
 
Find the number of Artists in the studio (without a HAVING clause):
 
SELECT role, COUNT(role) as artists_numbers 
FROM employees
WHERE employees.role = "Artist";


Find the number of Employees of each role in the studio 
-- Without HAVING clause;
SELECT role, COUNT(role) as artists_numbers 
FROM employees
WHERE employees.role = "Artist" OR employees.role = "Manager" OR employees.role = "Engineer"
GROUP by role;

-- With using having cleuse;
SELECT role, COUNT(role) as artists_numbers 
FROM employees
WHERE employees.role = "Artist" OR employees.role = "Manager" OR employees.role = "Engineer"
GROUP by role
HAVING COUNT(role) > 0;



-- Find the total number of years employed by all Engineers 
SELECT role, SUM(years_employed) as total_years 
FROM employees
GROUP by role
HAVING role = "Engineer";

