create database ATM_management;
use ATM_management;

-- Create Customers table

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    account_num INT
);

-- Create Cards table

CREATE TABLE Cards (
    Card_num INT PRIMARY KEY,
    Customer_id INT,
    Card_Type VARCHAR(255),
    Pin INT,
    FOREIGN KEY (Customer_id) REFERENCES Customers(customer_id)
);

-- Create Accounts table


CREATE TABLE Accounts (
    Account_num INT PRIMARY KEY,
    Customer_id INT,
    Account_type VARCHAR(255),
    Transactions VARCHAR(255),
    FOREIGN KEY (Customer_id) REFERENCES Customers(customer_id)
);

-- Create Transactions table


CREATE TABLE Transactions (
    Transaction_id INT PRIMARY KEY,
    Account_num INT,
    Transaction_Type VARCHAR(255),
    Transaction_date DATE,
    Amounts DECIMAL(10, 2),
    FOREIGN KEY (Account_num) REFERENCES Accounts(Account_num)
);


-- Insert data into Customers table
INSERT INTO Customers (customer_id, Name, Address, account_num) VALUES
(1, 'John Smith', '123 Main St, Anytown', 1001),
(2, 'Alice Johnson', '456 Oak Ave, Anytown', 1002),
(3, 'Bob Williams', '789 Pine Ln, Anytown', 1003),
(4, 'Eve Davis', '101 Elm Rd, Anytown', 1004),
(5, 'Charlie Brown', '222 Maple Dr, Anytown', 1005),
(6, 'Diana Miller', '333 Cherry St, Anytown', 1006),
(7, 'George Wilson', '444 Birch Ct, Anytown', 1007),
(8, 'Hannah Moore', '555 Willow Way, Anytown', 1008),
(9, 'Ivan Taylor', '666 Cedar Pl, Anytown', 1009),
(10, 'Julia Anderson', '777 Spruce St, Anytown', 1010),
(11, 'Kevin White', '888 Oak St, Anytown', 1011),
(12, 'Linda Green', '999 Pine Ave, Anytown', 1012),
(13, 'Michael Black', '111 Elm Ln, Anytown', 1013),
(14, 'Nancy Blue', '222 Birch Rd, Anytown', 1014),
(15, 'Oliver Gray', '333 Willow Pl, Anytown', 1015),
(16, 'Patricia Red', '444 Cedar Ct, Anytown', 1016),
(17, 'Quinn Brown', '555 Spruce Way, Anytown', 1017),
(18, 'Robert White', '666 Main St, Anytown', 1018),
(19, 'Susan Green', '777 Oak Ave, Anytown', 1019),
(20, 'Tom Black', '888 Pine Ln, Anytown', 1020);

-- Insert data into Cards table
INSERT INTO Cards (Card_num, Customer_id, Card_Type, Pin) VALUES
(11111111, 1, 'Visa', 1234),
(22222222, 2, 'MasterCard', 5678),
(33333333, 3, 'Visa', 9012),
(44444444, 4, 'Amex', 3456),
(55555555, 5, 'MasterCard', 7890),
(66666666, 6, 'Visa', 2345),
(77777777, 7, 'Discover', 6789),
(88888888, 8, 'MasterCard', 0123),
(99999999, 9, 'Visa', 4567),
(10000000, 10, 'Amex', 8901),
(11000001, 11, 'Visa', 1122),
(12000002, 12, 'MasterCard', 3344),
(13000003, 13, 'Visa', 5566),
(14000004, 14, 'Discover', 7788),
(15000005, 15, 'MasterCard', 9900),
(16000006, 16, 'Visa', 2211),
(17000007, 17, 'Amex', 4433),
(18000008, 18, 'Visa', 6655),
(19000009, 19, 'MasterCard', 8877),
(20000010, 20, 'Discover', 0099);

-- Insert data into Accounts table
INSERT INTO Accounts (Account_num, Customer_id, Account_type, Transactions) VALUES
(1001, 1, 'Checking', 'Withdrawal'),
(1002, 2, 'Savings', 'Deposit'),
(1003, 3, 'Checking', 'Transfer'),
(1004, 4, 'Savings', 'Withdrawal'),
(1005, 5, 'Checking', 'Deposit'),
(1006, 6, 'Savings', 'Transfer'),
(1007, 7, 'Checking', 'Withdrawal'),
(1008, 8, 'Savings', 'Deposit'),
(1009, 9, 'Checking', 'Transfer'),
(1010, 10, 'Savings', 'Withdrawal'),
(1011, 11, 'Checking', 'Deposit'),
(1012, 12, 'Savings', 'Transfer'),
(1013, 13, 'Checking', 'Withdrawal'),
(1014, 14, 'Savings', 'Deposit'),
(1015, 15, 'Checking', 'Transfer'),
(1016, 16, 'Savings', 'Withdrawal'),
(1017, 17, 'Checking', 'Deposit'),
(1018, 18, 'Savings', 'Transfer'),
(1019, 19, 'Checking', 'Withdrawal'),
(1020, 20, 'Savings', 'Deposit');

-- Insert data into Transactions table
INSERT INTO Transactions (Transaction_id, Account_num, Transaction_Type, Transaction_date, Amounts) VALUES
(1, 1001, 'Withdrawal', '2025-03-15', 50.00),
(2, 1002, 'Deposit', '2025-03-15', 100.00),
(3, 1003, 'Transfer', '2025-03-14', 25.00),
(4, 1004, 'Withdrawal', '2025-03-14', 75.00),
(5, 1005, 'Deposit', '2025-03-13', 120.00),
(6, 1006, 'Transfer', '2025-03-13', 30.00),
(7, 1007, 'Withdrawal', '2025-03-12', 40.00),
(8, 1008, 'Deposit', '2025-03-12', 90.00),
(9, 1009, 'Transfer', '2025-03-11', 15.00),
(10, 1010, 'Withdrawal', '2025-03-11', 60.00),
(11, 1011, 'Deposit', '2025-03-10', 80.00),
(12, 1012, 'Transfer', '2025-03-10', 35.00),
(13, 1013, 'Withdrawal', '2025-03-09', 45.00),
(14, 1014, 'Deposit', '2025-03-09', 95.00),
(15, 1015, 'Transfer', '2025-03-08', 20.00),
(16, 1016, 'Withdrawal', '2025-03-08', 65.00),
(17, 1017, 'Deposit', '2025-03-07', 110.00),
(18, 1018, 'Transfer', '2025-03-07', 28.00),
(19, 1019, 'Withdrawal', '2025-03-06', 55.00),
(20, 1020, 'Deposit', '2025-03-06', 105.00);


use atm_management;

-- insert a new customer

DELIMITER //
CREATE PROCEDURE AddCustomer(
    IN cust_id INT,
    IN cust_name VARCHAR(255),
    IN cust_address VARCHAR(255),
    IN acc_num INT
)
BEGIN
    INSERT INTO Customers (customer_id, Name, Address, account_num) 
    VALUES (21, 'krish', '103 vgp selvs nag', 3465);
END //
DELIMITER ;


-- Get account balance by account number

DELIMITER //
CREATE PROCEDURE GetBalance(IN acc_num INT)
BEGIN
    SELECT SUM(Amounts) AS Balance FROM Transactions WHERE Account_num = acc_num;
END //
DELIMITER ;


-- retriew the customer details 
 
 delimiter $$
 create procedure get_cust(in cuts_id int)
 begin
 select * from customers
 where customer_id=10;
 end $$
 delimiter ;

 -- Update PIN for a card
 
DELIMITER //
CREATE PROCEDURE UpdatePIN(
    IN card_num INT,
    IN new_pin INT
)
BEGIN
    UPDATE Cards SET Pin = 3454 WHERE Card_num = '1''2';
END //
DELIMITER ;

-- Get transaction history by account number

DELIMITER //
CREATE PROCEDURE GetTransc_History(IN acc_num INT)
BEGIN
    SELECT * FROM Transactions
    WHERE account_num=1018
    ORDER BY Transaction_date DESC;
END //
DELIMITER ;

-- update a accounts type

delimiter %%
create procedure update_type(in acc_type varchar(255))
begin
update account_type
set account_type=currentaccount
where aaccount_num= 1;
end %%
delimiter ;

 -- Delete  customer and their accounts

DELIMITER //
CREATE PROCEDURE DeleteCustomer(IN cust_id INT)
BEGIN
   SELECT Account_num FROM Accounts WHERE Customer_id = 15;
   DELETE FROM Transactions WHERE Account_num =1018; 
    DELETE FROM Cards WHERE Customer_id = 17;
    DELETE FROM Accounts WHERE Customer_id = 20;
    DELETE FROM Customers WHERE customer_id = 7;
END //
DELIMITER ;
 
 -- check the avg transaction amounts

delimiter $$
create procedure transaction_acc(in acc_num int)
begin
select avg(transactions)
from accounts
where account_num>=1;
end $$
delimiter ;

call transaction_acc(1002);
-- account details

delimiter //
create procedure acc_details(in cust_id int)
begin
select* from accounts;
end //
delimiter ;

call acc_details(1);
-- use join to get customers and cards details

DELIMITER //
CREATE PROCEDURE GetCustomerCardDetails(IN cust_id INT)
BEGIN
    SELECT c.customer_id, c.Name, ca.Card_num, ca.Card_Type
    FROM Customers 
    JOIN Cards  ON c.customer_id = ca.Customer_id
    WHERE c.customer_id >= 12;
END //
DELIMITER ;

-- create view

create view accounts_detail as 
select  account_num,account_type,transactions
from accounts
where account_num >=1012;

select *from accounts_detail;

create view cut_acc_details as
select customers.name,accounts.account_type,accounts.transactions from  customers
join accounts
on customers.customer_id= accounts.customer_id and customers.account_num=accounts.account_num
;


select * from cut_trans_details;