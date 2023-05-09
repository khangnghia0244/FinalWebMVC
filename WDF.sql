create database WDF

use WDF

create table login (
usename varchar(30),
password varchar(30)
)

create table Product(
ProductID varchar(30) primary key,
ProductName varchar(30),
Price int)

create table Staff(
StaffID varchar(30) primary key,
StaffName varchar(30),
Address varchar(30))

create table Orders(
OrderID varchar(30) primary key,
OrderDate Date,
StaffID varchar(30))

create table Goodeliverynote(
ID varchar(30) primary key,
OrderID varchar(30),
ProductID varchar(30),
Quantity INT,
Delivery varchar(30),
UnitAmount varchar(30))

create table GoodsReceived(
ReceivedID char(5) ,
Date date,
TotalPrice int)

INSERT INTO login (username, password)
values ( 'admin23', 123456)

INSERT INTO Product (ProductID, ProductName, Price)
VALUES
('P001', 'iPhone 13 Pro', 1099.00),
('P002', 'Samsung Galaxy S21', 799.00),
('P003', 'Google Pixel 6', 599.00),
('P004', 'OnePlus 9 Pro', 1069.00),
('P005', 'Xiaomi Mi 11 Ultra', 1199.00),
('P006', 'Sony Xperia 1 III', 1299.00),
('P007', 'LG V70 ThinQ', 699.00),
('P008', 'Motorola Edge 20', 699.00),
('P009', 'Nokia X20', 699.00),
('P010', 'Asus ROG Phone 5', 999.00),
('P011', 'Oppo Find X3 Pro', 1199.00),
('P012', 'Realme GT', 599.00),
('P013', 'Vivo X70 Pro+', 899.00),
('P014', 'Lenovo Legion Phone Duel 2', 999.00),
('P015', 'HTC Desire 21 Pro', 399.00),
('P016', 'BlackBerry Key3', 699.00),
('P017', 'ZTE Axon 30', 599.00),
('P018', 'Cat S62 Pro', 649.00),
('P019', 'Razer Phone 3', 799.00),
('P020', 'Huawei P50 Pro', 1299.00);

INSERT INTO Staff (StaffID, StaffName, Address)
VALUES
('ST001', 'John Doe', '123 Main St, Anytown, USA'),
('ST002', 'Jane Smith', '456 Elm St, Anytown, USA'),
('ST003', 'Bob Johnson', '789 Oak St, Anytown, USA'),
('ST004', 'Mary Davis', '101 Pine St, Anytown, USA'),
('ST005', 'David Lee', '222 Maple St, Anytown, USA'),
('ST006', 'Sara Martinez', '333 Cherry St, Anytown, USA'),
('ST007', 'Michael Brown', '444 Cedar St, Anytown, USA'),
('ST008', 'Karen Wilson', '555 Walnut St, Anytown, USA'),
('ST009', 'Tom Jackson', '666 Oak St, Anytown, USA'),
('ST010', 'Jenny Kim', '777 Pine St, Anytown, USA'),
('ST011', 'Chris Wong', '888 Elm St, Anytown, USA'),
('ST012', 'Amanda Rodriguez', '999 Maple St, Anytown, USA'),
('ST013', 'Peter Davis', '111 Cedar St, Anytown, USA'),
('ST014', 'Rachel Chen', '222 Walnut St, Anytown, USA'),
('ST015', 'Mark Thompson', '333 Cherry St, Anytown, USA'),
('ST016', 'Emily Jones', '444 Oak St, Anytown, USA'),
('ST017', 'Andrew Nguyen', '555 Pine St, Anytown, USA'),
('ST018', 'Alex Johnson', '666 Elm St, Anytown, USA'),
('ST019', 'Jennifer Brown', '777 Maple St, Anytown, USA'),
('ST020', 'Daniel Lee', '888 Cedar St, Anytown, USA');

INSERT INTO Orders (OrderID, OrderDate, StaffID)
VALUES
('ORD001', '2023-04-23', 'S001'),
('ORD002', '2023-04-23', 'S002'),
('ORD003', '2023-04-22', 'S003'),
('ORD004', '2023-04-22', 'S004'),
('ORD005', '2023-04-21', 'S005'),
('ORD006', '2023-04-21', 'S006'),
('ORD007', '2023-04-20', 'S007'),
('ORD008', '2023-04-20', 'S008'),
('ORD009', '2023-04-19', 'S009'),
('ORD010', '2023-04-19', 'S010'),
('ORD011', '2023-04-18', 'S011'),
('ORD012', '2023-04-18', 'S012'),
('ORD013', '2023-04-17', 'S013'),
('ORD014', '2023-04-17', 'S014'),
('ORD015', '2023-04-16', 'S015'),
('ORD016', '2023-04-16', 'S016'),
('ORD017', '2023-04-15', 'S017'),
('ORD018', '2023-04-15', 'S018'),
('ORD019', '2023-04-14', 'S019'),
('ORD020', '2023-04-14', 'S020');

INSERT INTO Goodeliverynote (ID, OrderID, ProductID, Quantity ,Delivery, UnitAmount)
VALUES
(1, 'ORD001', 'PROD001', 2,'delivery', 5000000),
(2, 'ORD001', 'PROD002', 1,'delivery', 12000000),
(3, 'ORD002', 'PROD003', 3,'not delivery', 8000000),
(4, 'ORD003', 'PROD004', 2,'not delivery', 7000000),
(5, 'ORD003', 'PROD005', 1,'delivery', 9000000),
(6, 'ORD003', 'PROD006', 4,'delivery', 6000000),
(7, 'ORD004', 'PROD007', 2,'not delivery', 10000000),
(8, 'ORD005', 'PROD008', 1,'delivery', 12000000),
(9, 'ORD005', 'PROD009', 1,'delivery', 15000000),
(10, 'ORD006', 'PROD010', 3,'not delivery', 8000000),
(11, 'ORD007', 'PROD011', 2,'not delivery', 9000000),
(12, 'ORD007', 'PROD012', 1,'delivery', 12000000),
(13, 'ORD008', 'PROD013', 4,'delivery', 5000000),
(14, 'ORD009', 'PROD014', 2,'delivery', 7000000),
(15, 'ORD010', 'PROD015', 1,'not delivery', 9000000),
(16, 'ORD011', 'PROD016', 1,'delivery', 12000000),
(17, 'ORD012', 'PROD017', 3,'not delivery', 8000000),
(18, 'ORD013', 'PROD018', 2,'not delivery', 10000000),
(19, 'ORD014', 'PROD019', 1,'delivery', 15000000),
(20, 'ORD015', 'PROD020', 4,' not delivery', 6000000);

INSERT INTO GoodsReceived (ReceivedID, Date, TotalPrice) 
VALUES 
('GR001', '2022-01-01', 5000),
('GR002', '2022-01-03', 3500),
('GR003', '2022-01-05', 6000),
('GR004', '2022-01-08', 4500),
('GR005', '2022-01-10', 8000),
('GR006', '2022-01-12', 2000),
('GR007', '2022-01-15', 9000),
('GR008', '2022-01-17', 1500),
('GR009', '2022-01-20', 7000),
('GR010', '2022-01-22', 5500),
('GR011', '2022-01-25', 4000),
('GR012', '2022-01-27', 7500),
('GR013', '2022-01-30', 3000),
('GR014', '2022-02-02', 8500),
('GR015', '2022-02-05', 5000),
('GR016', '2022-02-08', 9500),
('GR017', '2022-02-11', 6500),
('GR018', '2022-02-14', 3000),
('GR019', '2022-02-17', 4000),
('GR020', '2022-02-20', 7000);

ALTER TABLE Orders
ADD CONSTRAINT fk_Orders_StaffID
FOREIGN KEY (StaffID)
REFERENCES Staff(StaffID);

ALTER TABLE OrderDetail
ADD CONSTRAINT fk_OrderDetail_OrderID
FOREIGN KEY (OrderID)
REFERENCES Orders(OrderID);

ALTER TABLE OrderDetail
ADD CONSTRAINT fk_OrderDetail_ProductID
FOREIGN KEY (ProductID)
REFERENCES Product(ProductID);

select  * from Product
select  * from Staff
select  * from Goodeliverynote
select  * from Orders
