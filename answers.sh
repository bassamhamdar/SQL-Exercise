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

