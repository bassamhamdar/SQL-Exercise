Problem 1: SELECT name FROM students;
Problem 2: SELECT * FROM students WHERE Age > 30;
problem 3: SELECT name FROM students WHERE Age = 30 AND Gender = 'F';
problem 4: SELECT Points FROM students WHERE name = 'Alex';
problem 5: INSERT INTO students(name, Age, Gender, Points) VALUES ('Bassam', 27, 'M', 4000);
problem 6: UPDATE students SET Points = Points + 10 WHERE name = 'Basma';
problem 7: UPDATE students SET Points = Points - 10 WHERE name = 'Alex';

Creating Table : 
CREATE TABLE graduates(
ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
Name varchar(255) NOT NULL UNIQUE,
Age INTEGER,
Gender varchar(1),
Points INTEGER,
Gradution varchar(10)


);

problem 1: INSERT INTO graduates(name, Age, Gender, Points)
            SELECT name, Age, Gender, Points  FROM students
            WHERE name = 'Layal';

problem 2: UPDATE graduates SET Gradution = '08/09/2018';
problem 3: DELETE FROM students WHERE name = 'Layal';


Joins

problem 1: SELECT employees.Name, companies.Name, companies.Date FROM employees INNER JOIN companies where companies.Name = employees.Company;
problem 2: SELECT employees.Name, companies.Name, companies.Date FROM employees INNER JOIN companies where companies.Name = employees.Company AND companies.Date < 2000;
problem 3: SELECT companies.Name FROM employees INNER JOIN companies where companies.Name = employees.Company AND upper(employees.Role) = upper('graphic designer');

Count and Filter

problem 1: SELECT  name, Points FROM students WHERE Points = (SELECT max(Points) FROM students);
problem 2: SELECT avg(Points) from students;
problem 3: SELECT count(Points) from students WHERE Points = 500;
problem 4: SELECT name from students WHERE name like '%s%';
problem 5: SELECT name, Points FROM students ORDER by Points DESC;
