use Axis_Bookstore
go
/****This is a Sample Procedure****/
CREATE PROCEDURE GetCustomers
AS
Select * from customer
GO;
EXECUTE GetCustomers

/****Insert Customers Procedure****/
CREATE PROCEDURE [dbo].[InsertCustomers]
(
@customer_id int,
@first_name varchar(200),
@last_name varchar(200),
@email varchar(350),
@phone varchar(50),
@gender varchar(50)
)
AS
BEGIN


INSERT INTO [dbo].[customer] (customer_id, first_name, last_name, email, phone, gender) VALUES (@customer_id, @first_name, @last_name, @email, @phone, @gender)

END
GO
EXECUTE [dbo].[InsertCustomers] 16,'Ojas','Joshi','ojay@gmail.com','8574983377','male'



/****Update Books Procedure****/
CREATE PROCEDURE [dbo].[UpdateBooks]
(
@title varchar(400),
@no_of_copies int
)
AS
BEGIN
UPDATE book
SET no_of_copies = @no_of_copies
WHERE title = @title
END
GO
select * from book
EXECUTE [dbo].[UpdateBooks] 'The Way I am',300

/****Update Author Procedure****/
CREATE PROCEDURE [dbo].[UpdateAuthor]
(
@author_id int,
@author_name varchar(400),
@author_email varchar(400)
)
AS
BEGIN
INSERT INTO author(author_id,author_name,author_email) VALUES (@author_id,@author_name,@author_email)
END
GO
select * from author
EXECUTE [dbo].[UpdateAuthor] 16,'JK Rowling','rowling@gmail.com'


select * from book

/****Update Order Status Procedure****/
CREATE PROCEDURE [dbo].[UpdateOrderStatus]
(
@status_value varchar(200)
@status_date date
)
AS
BEGIN
UPDATE 
/
select h.order_id, s.status_value, h.status_date from order_history h join order_status s on h.status_id = s.status_id;




/****Audit Table****/
Create table Customer_Audit
(ID int,
inserted_by varchar(100)
)
Go



/****Trigger for Insert Event****/
CREATE TRIGGER TRG_Customer_Audit
ON customer
FOR INSERT
AS
BEGIN
declare @ID int

select @ID = customer_id from inserted 
insert into Customer_Audit(ID,inserted_by)
values(@ID,ORIGINAL_LOGIN())
PRINT 'Insert trigger executed'
END

select * from customer
INSERT INTO customer(customer_id,first_name,last_name,email,phone,gender) values (17,'Rutuja','Pawar','rutuja@gmail.com','9784902881','female');

/****Delete Trigger****/
CREATE TRIGGER TRG_Customer_Delete
ON customer
FOR DELETE 
AS
BEGIN
Rollback
PRINT '*******************************************'
PRINT 'You cannot delete records from this table'
PRINT '*******************************************'
END
GO
select * from customer

delete from customer where first_name = 'Rutuja';

/****Table Valued UDF for Extracting customers based on gender****/
CREATE FUNCTION select_gender(@gender as varchar(100))
RETURNS TABLE
AS
RETURN 
(
select * from customer where gender = @gender
)
select * from dbo.select_gender('male')

/****Computed Column using UDF for total payment****/
CREATE FUNCTION dbo.TotalPayment(@cost int,@delivery_charge int)
RETURNS INT
AS
BEGIN
RETURN @cost + @delivery_charge
END
select dbo.TotalPayment(100,200)

/--add total payment column in the cust_order table
ALTER TABLE cust_order
ADD total_payment as dbo.TotalPayment(cost,delivery_charge)

select * from cust_order
update cust_order
set delivery_charge = 25,
cost = 50
where order_id = 6

/**** Computed Column using UDF to concatenate address****/
CREATE FUNCTION dbo.ConcatenateAddress(@street_number VARCHAR(50),@street_name VARCHAR(50),@city VARCHAR(50),@pincode VARCHAR(50))
RETURNS VARCHAR
AS
BEGIN
RETURN CONCAT(@street_number,@street_name, @city, @pincode)
END

select dbo.ConcatenateAddress(100,100,100,100)

/--add complete address column to address table
ALTER TABLE address
ADD completeaddress as dbo.ConcatenateAddress(street_number,street_name,city,pincode)

ALTER TABLE address
DROP completeaddress

select * from address

drop ConcatenateAddress



select * from book


EXEC sp_helpindex 'dbo.book';

/****View for Book_summary****/
create view Book_summary
as
select b.book_id, b.title, p.publisher_name, b.book_genre, b.book_edition from book b join publisher p on b.publisher_id = p.publisher_id;

select * from Book_summary

/***View for Customer-Order Summary****/
create view CustomerOrder_Summary
as
select first_name, last_name from customer
union
select order_id , total_payment from cust_order


select * from customer

create view avg_no_of_copies
as
select book_id, title, no_of_copies,(Select AVG(no_of_copies) from book)
from book;

/****Non clustered index on Author name****/
select * into dbo.test from
dbo.author

CREATE CLUSTERED INDEX IX_Auth_Id
ON test(author_id ASC)


CREATE NONCLUSTERED INDEX NIX_Auth_Name
ON test(author_name ASC)



EXEC sp_helpindex 'dbo.test'

DBCC IND('Axis_Bookstore','dbo.test', 0)
DBCC IND ('Axis_Bookstore','dbo.test',2)

DBCC TRACEON (3604);
GO

DBCC PAGE(Axis_Bookstore, 1, 616, 3);
GO


CREATE NONCLUSTERED INDEX NIX_Pub_Name
ON publisher(publisher_name ASC)

CREATE NONCLUSTERED INDEX NIX_Country
ON country(country_name DESC)
GO



/**View for Order Summary*/
use Axis_Bookstore
go
CREATE VIEW Order_Summary
AS
SELECT b.title as 'Book Title', b.num_pages as 'Number of Pages' , b.book_genre as 'Book Genre' , 
b.book_edition as 'Book Edition' , p.publisher_name as 'Publisher Name' , p.phone as 'Phone Number' , o.order_id as 'Order ID'
FROM book b 
INNER JOIN 
publisher p
ON b.publisher_id = p.publisher_id
INNER JOIN
order_line o
ON b.book_id = o.book_id;

SELECT * FROM Order_Summary