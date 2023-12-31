-- DROP DATABASE university_manaagement2;

-- CREATE DATABASE test1;

-- ALTER DATABASE test1 RENAME TO test3

-- create table  ::::

-- CREATE TABLE student (

--     student_id INT,

--     first_name VARCHAR(40),

--     last_name VARCHAR(30),

--     cgpa NUMERIC(1,2)

-- )

-- update table name ::

--  ALTER TABLE learners RENAME TO student;

----### Delete a table ::::

-- DROP TABLE student;

CREATE TABLE
    "user1"(
        user_id SERIAL,
        user_name VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL,
        age int DEFAULT 18,
    );

-- insert into user1 (1,'abc', 'ab@gmail.com',20)

-- SELECT * from user1;

INSERT INTO
    "user1" (user_id, user_name, email, age)
VALUES (
        2,
        'sarwar',
        'sarwarasik@gamail.com',
        24
    );

INSERT INTO
    user1 (user_name, email)
VALUES (
        'muktadir vai',
        'muktadir@gmail.com'
    ), (
        'mohammad',
        'mahammod@gmail.com'
    );

-- ALTER TABLE user1

-- add COLUMN password VARCHAR(255) DEFAULT 'admin1234' NOT NULL

alter TABLE user1 DROP COLUMN age;

-- SELECT * from user1

-- TRUNCATE TABLE user1

ALTER TABLE user1 add COLUMN demo int;

ALTER TABLE user1 ALTER COLUMN demo TYPE TEXT;

ALTER TABLE user1 alter column country set DEFAULT 'bangladesh';

insert into user1 values (5,'Imdad','imdad@gmail.com');

-- rename a column ADD

ALTER TABLE user1 RENAME COLUMN demo to country;

-- add constrains

ALTER TABLE user1 alter COLUMN country set NOT NULL;

ALTER TABLE user1 add constraint unique_email UNIQUE(email);

-- Employee Table ::::

--  Employee table under to a department ::::

CREATE TABLE
    Department(
        deptID SERIAL PRIMARY KEY,
        deptName VARCHAR(50)
    );

-- create table data of department:::

INSERT into department VALUES(1,'IT');

DELETE from department  WHERE deptID =1 ;

SELECT * from department;

CREATE TABLE
    Employee(
        empID SERIAL PRIMARY KEY,
        empName VARCHAR(50) NOT NULL,
        departmentID INT,
        CONSTRAINT fk_constraints_dept FOREIGN KEY (departmentID) REFERENCES Department(deptID)
    );


-- create employe table data::::
INSERT INTO Employee VALUES(1,'KHorshed',1);


SELECT * from employee;


-- course table ::::


---- create course table::::
CREATE Table courses (
  course_id SERIAL PRIMARY KEY,
  course_name VARCHAR(255) NOT NULL,
  description VARCHAR(255),
  published_date DATE

);

------- create courses table data ::::
INSERT INTO courses(course_name,description, published_date)
  VALUES
  ('frontend developer','A complete frontend developer','2023-07-13'),
  ('backend developer','A complete backend developer',NULL),
  ('complete web developer','A  complete web developer','2023-05-10');


-- update a table data ::::

UPDATE courses 
 set
 description ='be a smart tech learner'
 WHERE course_id > 1 or  course_id  < 5
 ;


-- delete a data ::::

DELETE FROM courses 
WHERE course_id = 4;


CREATE table IF NOT EXISTs department(
    deptID SERIAL PRIMARY KEY,
    name TEXT not NULL
);

INSERT INTO department (deptname)
VALUES
('Marketing'),
('Finance'),
('Sales');

CREATE TABLE if not exists employee(
    empID SERIAL PRIMARY key,
    name text not null,
    email TEXT NOT  NULL,
    salary INTEGER NOT NULL,
    joining_date date not NULL,
    deptID INTEGER not NULL,
    constraint  fk_deptID
       FOREIGN KEY(deptID)
       REFERENCES department(deptID)
);

INSERT INTO employee (name, email, salary, joining_date, deptID)
VALUES
     ('Samuel Harris', 'samuel@example.com', 52000, '2024-02-20', 1),
    ('Grace Turner', 'grace@example.com', 54000, '2024-03-12', 2),
    ('Liam Mitchell', 'liam@example.com', 61000, '2024-04-25', 3),
   
    ('Emma Adams', 'emma@example.com', 49000, '2024-05-30', 1),
    ('Logan Cook', 'logan@example.com', 57000, '2024-06-05', 2),
    ('Chloe Bennett', 'chloe@example.com', 53000, '2024-07-18', 3);



SELECT * from department;
SELECT name,email,joining_date from employee;

SELECT * from employee
WHERE salary > 55000 and salary < 60000