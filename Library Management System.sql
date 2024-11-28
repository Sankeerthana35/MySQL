CREATE DATABASE Library;

USE Library;

CREATE TABLE Branch(
Branch_no INT PRIMARY KEY,
Manager_ID INT,
Branch_address VARCHAR(150),
Contact_no VARCHAR(20));


CREATE TABLE Employee(
Emp_Id INT PRIMARY KEY,
Emp_name VARCHAR(100),
Position VARCHAR(80),
Salary DECIMAL(10,2),
Branch_no INT,
FOREIGN KEY(Branch_no)REFERENCES Branch(Branch_no));


CREATE TABLE Books(
ISBN VARCHAR(20) PRIMARY KEY,
Book_title VARCHAR(150),
Category VARCHAR(60),
Rental_price DECIMAL(10,2),
Status VARCHAR(20) CHECK (Status IN ('yes','no')),
Author VARCHAR(120),
Publisher VARCHAR(100));

CREATE TABLE Customer(
Customer_Id INT PRIMARY KEY,
Customer_name VARCHAR(80),
Customer_address VARCHAR(150),
Reg_date DATE);


CREATE TABLE IssueStatus(
Issue_Id INT PRIMARY KEY,
Issued_cust INT,
FOREIGN KEY(Issued_cust) REFERENCES Customer(Customer_Id),
Issued_book_name VARCHAR(150),
Issue_date Date,
Isbn_book VARCHAR(20),
FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN));


CREATE TABLE ReturnStatus(
Return_Id INT PRIMARY KEY,
Return_cust INT,
Return_book_name VARCHAR(150),
Return_date DATE,
Isbn_book2 VARCHAR(20),
FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN));

INSERT INTO Branch(Branch_no,Manager_Id,Branch_address,Contact_no)VALUES
(1,1001,'234 Main st,Kannur','9876543210'),
(2,1002,'125 AKG road,Thrissur','9765432108'),
(3,1003,'456 ATM st,Kasargod','9654321087'),
(4,1004,'789 Sam st,Thrissur','95432109876'),
(5,1005,'115 Diya st,Tirur','9432108765'),
(6,1006,'116 Don st,Koyilandi','9321087654'),
(7,1007,'117 Main st,Azhikode','9210876543'),
(8,1008,'118 Tvs st,Chovva','9108765432'),
(9,1009,'119 Emi st,Talap','9087654321'),
(10,1010,'120 Redwood st,Cochi','8765432109'),
(11,1011,'121 Cypress st,Thana','8765432109'),
(12,1012,'122 Spain st,TVM','8654321097'),
(13,1013,'123 Birch st,Kannur','8543210976'),
(14,1014,'124 Poplar st,Shevil','8432109765'),
(15,1015,'125 Birch st,Indore','8321097654'),
(16,1016,'126 Olak st,Bhopal','8210976543'),
(17,1017,'127 Walnut st,Delhi','8109765432'),
(18,1018,'128 Maple st,Pune','7654321098'),
(19,1019,'129 Fir st,Chennai','7543210986'),
(20,1020,'130 Chestnut st,Karnataka','7432109865'),
(21,1021,'131 Pine st,Kerala','7321098654'),
(22,1022,'132 Ceadar st,Tamilnadu','7210986543'),
(23,1023,'133 Sequoia st,Delhi','7109865432'),
(24,1024,'134 william st,Munnar','7098654321'),
(25,1025,'135 Elm st,Ooty','9765432108');


INSERT INTO Employee(Emp_Id,Emp_name,Position,Salary,Branch_no)VALUES
(2001,'Marin Mathew','Manager',60000,1),
(2002,'Emmy Jackson','Assitant',45000,2),
(2003,'Divya Unni','Manager',55000,3),
(2004,'Niya Jacob','Clerk',48000,4),
(2005,'Sharon Kumar','Salesperson',47000,5),
(2006,'Sreeram Kshekar','Technician',50000,6),
(2007,'Alice JOhnson','Engineer',52000,7),
(2008,'Bob Smith','Analyst',53000,8),
(2009,'Charlie Brown','HR Specialist',49000,9),
(2010,'Ivy Martinez','Technician',46000,10),
(2011,'Frank White','Manager',61000,11),
(2012,'Jake Turner','Analyst',48000,12),
(2013,'Liam Scott','Salesperson',58000,13),
(2014,'Olivia James','Engineer',60000,14),
(2015,'Paul Rogers','Clerk',47000,15),
(2016,'Rachel Baker','HR Specialist',54000,16),
(2017,'Sam Carter','Assistant',62000,17),
(2018,'Vera Kelly','HR Manager',43000,18),
(2019,'Wendy Hughes','Sales Associate',51000,19),
(2020,'Tina Sanders','Branch Manager',60000,20),
(2021,'Sandra Ram','Customer Support',59000,21),
(2022,'Shiva Feroz','HR Manager',53000,22),
(2023,'Kiara Fiona','Sales Associate',50000,23),
(2024,'Keerthy Suresh','Branch Manager',49000,24),
(2025,'Sidharth Malohtra','Analyst',34000,25);


INSERT INTO Books(ISBN,Book_title,Category,Rental_price,Status,Author,Publisher)VALUES
('978-0743273565', 'The Great Gatsby', 'Fiction', 15.99, 'yes', 'F. Scott Fitzgerald', 'Scribner'),
('978-0451524935', '1984', 'Dystopian', 12.99, 'yes', 'George Orwell', 'Secker & Warburg'),
('978-0060935467', 'To Kill a Mockingbird', 'Fiction', 10.99, 'no', 'Harper Lee', 'J.B. Lippincott & Co.'),
('978-0316769488', 'The Catcher in the Rye', 'Fiction', 14.99, 'yes', 'J.D. Salinger', 'Little, Brown and Company'),
('978-1503290563', 'Pride and Prejudice', 'Romance', 9.99, 'yes', 'Jane Austen', 'T. Egerton'),
('978-1503280786', 'Moby-Dick', 'Adventure', 17.99, 'no', 'Herman Melville', 'Harper & Brothers'),
('978-1400079988', 'War and Peace', 'Historical', 20.99, 'yes', 'Leo Tolstoy', 'The Russian Messenger'),
('978-0547928227', 'The Hobbit', 'Fantasy', 13.99, 'no', 'J.R.R. Tolkien', 'George Allen & Unwin'),
('978-0618640157', 'The Lord of the Rings', 'Fantasy', 25.99, 'yes', 'J.R.R. Tolkien', 'George Allen & Unwin'),
('978-0385504201', 'The Da Vinci Code', 'Thriller', 18.99, 'no', 'Dan Brown', 'Doubleday'),
('978-0439708180', 'Harry Potter and the Sorcerer\'s Stone', 'Fantasy', 22.99, 'yes', 'J.K. Rowling', 'Bloomsbury'),
('978-0061122415', 'The Alchemist', 'Adventure', 12.99, 'yes', 'Paulo Coelho', 'HarperCollins'),
('978-0307743657', 'The Shining', 'Horror', 16.99, 'no', 'Stephen King', 'Doubleday'),
('978-0060850524', 'Brave New World', 'Dystopian', 14.99, 'yes', 'Aldous Huxley', 'Chatto & Windus'),
('978-0486454115', 'Crime and Punishment', 'Philosophical', 19.99, 'yes', 'Fyodor Dostoevsky', 'The Russian Messenger'),
('978-0486278070', 'The Picture of Dorian Gray', 'Fiction', 11.99, 'no', 'Oscar Wilde', 'Ward, Lock & Co.'),
('978-0307588364', 'Gone Girl', 'Thriller', 15.99, 'yes', 'Gillian Flynn', 'Crown Publishing Group'),
('978-0307387899', 'The Road', 'Post-Apocalyptic', 13.99, 'no', 'Cormac McCarthy', 'Alfred A. Knopf'),
('978-0439023528', 'The Hunger Games', 'Dystopian', 17.99, 'yes', 'Suzanne Collins', 'Scholastic Press'),
('978-1451673319', 'Fahrenheit 451', 'Dystopian', 12.99, 'no', 'Ray Bradbury', 'Ballantine Books'),
('978-0375842207', 'The Book Thief', 'Historical Fiction', 18.99, 'yes', 'Markus Zusak', 'Picador'),
('978-0441172719', 'Dune', 'Science Fiction', 20.99, 'no', 'Frank Herbert', 'Chilton Books'),
('978-0756404741', 'The Name of the Wind', 'Fantasy', 14.99, 'yes', 'Patrick Rothfuss', 'DAW Books'),
('978-1250301697', 'The Silent Patient', 'Thriller', 13.99, 'yes', 'Alex Michaelides', 'Celadon Books'),
('978-0062316097', 'Sapiens: A Brief History of Humankind', 'Non-Fiction', 21.99, 'yes', 'Yuval Noah Harari', 'Harvill Secker');


INSERT INTO Customer(Customer_Id,Customer_name,Customer_Address,Reg_date)VALUES
(201, 'Alice Johnson', '123 Main St, Springfield', '2024-10-01'),
(202, 'Bob Smith', '456 Oak St, Lincoln', '2024-09-15'),
(203, 'Catherine Lee', '789 Pine St, Riverside', '2024-08-21'),
(204, 'Daniel Harris', '321 Elm St, Centerville', '2024-10-05'),
(205, 'Emma Davis', '654 Maple St, Lakeview', '2024-07-12'),
(206, 'Frank White', '111 Birch St, Riverton', '2024-09-03'),
(207, 'Grace Miller', '987 Cedar St, Hilltop', '2024-08-14'),
(208, 'Henry Clark', '222 Palm St, Brookfield', '2024-06-25'),
(209, 'Isabella Turner', '333 Cypress St, Westfield', '2024-07-19'),
(210, 'Jack Wilson', '444 Willow St, Kingswood', '2024-05-11'),
(211, 'Karen Thomas', '555 Fir St, Greenwood', '2024-09-20'),
(212, 'Liam Martinez', '666 Redwood St, Springtown', '2024-06-02'),
(213, 'Mia Brown', '777 Pineapple St, Bayside', '2024-04-18'),
(214, 'Nathan Scott', '888 Spruce St, Elk Grove', '2024-07-08'),
(215, 'Olivia Adams', '999 Juniper St, Lakeside', '2024-09-01'),
(216, 'Paul Baker', '111 Cedarwood St, Foxville', '2024-08-22'),
(217, 'Quinn Roberts', '222 Evergreen St, Northport', '2024-10-10'),
(218, 'Ryan Davis', '333 Magnolia St, Eastwood', '2024-09-25'),
(219, 'Sophia Moore', '444 Sequoia St, Willowbrook', '2024-05-05'),
(220, 'Thomas Taylor', '555 Sycamore St, Meadowbrook', '2024-06-16'),
(221, 'Uma Collins', '666 Acacia St, Northgate', '2024-07-30'),
(222, 'Victor Sanchez', '777 Pinewood St, Fairview', '2024-08-08'),
(223, 'Wendy Hall', '888 Holly St, Millcreek', '2024-10-03'),
(224, 'Xander Murphy', '999 Chestnut St, Belmont', '2024-09-09'),
(225, 'Yara King', '111 Cypresswood St, Bridgeport', '2024-04-28');


INSERT INTO Issuestatus (Issue_id, Issued_cust, Issued_book_name, Issue_date, Isbn_book)
VALUES 
(1, 201, 'The Great Gatsby', '2024-10-10', '978-0743273565'),
(2, 202, '1984', '2024-09-15', '978-0451524935'),
(3, 203, 'To Kill a Mockingbird', '2024-08-21', '978-0060935467'),
(4, 204, 'The Catcher in the Rye', '2024-10-05', '978-0316769488'),
(5, 205, 'Pride and Prejudice', '2024-07-12', '978-1503290563'),
(6, 206, 'Moby-Dick', '2024-09-03', '978-1503280786'),
(7, 207, 'War and Peace', '2024-08-14', '978-1400079988'),
(8, 208, 'The Hobbit', '2024-06-25', '978-0547928227'),
(9, 209, 'The Lord of the Rings', '2024-07-19', '978-0618640157'),
(10, 210, 'The Da Vinci Code', '2024-05-11', '978-0385504201'),
(11, 211, 'Harry Potter and the Sorcerer\'s Stone', '2024-09-20', '978-0439708180'),
(12, 212, 'The Alchemist', '2024-06-02', '978-0061122415'),
(13, 213, 'The Shining', '2024-04-18', '978-0307743657'),
(14, 214, 'Brave New World', '2024-07-08', '978-0060850524'),
(15, 215, 'Crime and Punishment', '2024-09-01', '978-0486454115'),
(16, 216, 'The Picture of Dorian Gray', '2024-08-22', '978-0486278070'),
(17, 217, 'Gone Girl', '2024-10-10', '978-0307588364'),
(18, 218, 'The Road', '2024-09-25', '978-0307387899'),
(19, 219, 'The Hunger Games', '2024-05-05', '978-0439023528'),
(20, 220, 'Fahrenheit 451', '2024-06-16', '978-1451673319'),
(21, 221, 'The Book Thief', '2024-07-30', '978-0375842207'),
(22, 222, 'Dune', '2024-08-08', '978-0441172719'),
(23, 223, 'The Name of the Wind', '2024-10-03', '978-0756404741'),
(24, 224, 'The Silent Patient', '2024-09-09', '978-1250301697'),
(25, 225, 'Sapiens: A Brief History of Humankind', '2024-04-28', '978-0062316097');


INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, isbn_book2)
VALUES 
(1, 201, 'The Great Gatsby', '2024-10-12', '978-0743273565'),
(2, 202, '1984', '2024-09-18', '978-0451524935'),
(3, 203, 'To Kill a Mockingbird', '2024-08-25', '978-0060935467'),
(4, 204, 'The Catcher in the Rye', '2024-10-07', '978-0316769488'),
(5, 205, 'Pride and Prejudice', '2024-07-15', '978-1503290563'),
(6, 206, 'Moby-Dick', '2024-09-05', '978-1503280786'),
(7, 207, 'War and Peace', '2024-08-18', '978-1400079988'),
(8, 208, 'The Hobbit', '2024-06-28', '978-0547928227'),
(9, 209, 'The Lord of the Rings', '2024-07-22', '978-0618640157'),
(10, 210, 'The Da Vinci Code', '2024-05-15', '978-0385504201'),
(11, 211, 'Harry Potter and the Sorcerer\'s Stone', '2024-09-25', '978-0439708180'),
(12, 212, 'The Alchemist', '2024-06-10', '978-0061122415'),
(13, 213, 'The Shining', '2024-04-20', '978-0307743657'),
(14, 214, 'Brave New World', '2024-07-12', '978-0060850524'),
(15, 215, 'Crime and Punishment', '2024-09-05', '978-0486454115'),
(16, 216, 'The Picture of Dorian Gray', '2024-08-28', '978-0486278070'),
(17, 217, 'Gone Girl', '2024-10-15', '978-0307588364'),
(18, 218, 'The Road', '2024-09-28', '978-0307387899'),
(19, 219, 'The Hunger Games', '2024-05-07', '978-0439023528'),
(20, 220, 'Fahrenheit 451', '2024-06-18', '978-1451673319'),
(21, 221, 'The Book Thief', '2024-07-30', '978-0375842207'),
(22, 222, 'Dune', '2024-08-09', '978-0441172719'),
(23, 223, 'The Name of the Wind', '2024-10-05', '978-0756404741'),
(24, 224, 'The Silent Patient', '2024-09-12', '978-1250301697'),
(25, 225, 'Sapiens: A Brief History of Humankind', '2024-04-30', '978-0062316097');

SELECT Book_title,Category,Rental_Price
FROM Books
WHERE Status = 'yes';


SELECT Emp_name,Salary
FROM Employee 
ORDER BY Salary DESC;


SELECT Books.Book_title,Customer.Customer_name
FROM IssueStatus
JOIN Books ON IssueStatus.Isbn_book = Books.ISBN
JOIN Customer ON IssueStatus.Issued_cust = Customer.Customer_Id;


SELECT Category,COUNT(*) AS Total_books
FROM Books
GROUP BY Category;


SELECT Emp_name,position
FROM Employee
WHERE Salary>50000;


SELECT Customer.Customer_name
FROM Customer
LEFT JOIN IssueStatus ON Customer.Customer_id=IssueStatus.Issued_cust
WHERE Customer.Reg_date <'2022-01-01' AND IssueStatus.Issued_cust IS NULL;


SELECT Branch.Branch_no, COUNT(Employee.Emp_Id) AS Employee_Count 
FROM Branch 
JOIN Employee ON Branch.Branch_no = Employee.Branch_no 
GROUP BY Branch.Branch_no;


SELECT Customer.Customer_name 
FROM IssueStatus 
JOIN Customer ON IssueStatus.Issued_cust = Customer.Customer_id 
WHERE IssueStatus.Issue_date BETWEEN '2023-06-01' AND '2023-06-30';


SELECT Book_Title
FROM Books 
WHERE Books.Isbn IN (SELECT Isbn_book FROM IssueStatus);


SELECT Branch.Branch_no, COUNT(Employee.Emp_Id) AS Employee_Count 
FROM Branch 
JOIN Employee ON Branch.Branch_no = Employee.Branch_no 
GROUP BY Branch.Branch_no 
HAVING COUNT(Employee.Emp_Id) > 5;


SELECT Employee.Emp_name, Branch.Branch_address 
FROM Employee 
JOIN Branch ON Employee.Emp_Id = Branch.Manager_Id;


SELECT Customer.Customer_name 
FROM IssueStatus 
JOIN Books ON IssueStatus.Isbn_book = Books.Isbn 
JOIN Customer ON IssueStatus.Issued_cust = Customer.Customer_id 
WHERE Books.Rental_price > 25;