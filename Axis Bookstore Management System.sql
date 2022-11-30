create database Axis_Bookstore
use Axis_Bookstore;
go
CREATE TABLE author (
    author_id INT not null,
    author_name VARCHAR(400),
	author_email VARCHAR(400),
    CONSTRAINT pk_author PRIMARY KEY (author_id)
);
go
use Axis_Bookstore;
go
CREATE TABLE publisher (
    publisher_id INT,
    publisher_name VARCHAR(400),
    CONSTRAINT pk_publisher PRIMARY KEY (publisher_id)
);
use Axis_Bookstore;
go
CREATE TABLE [language](
language_id int not null, 
language_name VARCHAR(400),
 CONSTRAINT pk_language PRIMARY KEY (language_id));
 use Axis_Bookstore;
go
CREATE TABLE address_status (
    status_id INT not null,
    address_status VARCHAR(100),
    CONSTRAINT pk_addr_status PRIMARY KEY (status_id)
);
use Axis_Bookstore;
go
CREATE TABLE country (
    country_id INT not null,
    country_name VARCHAR(200),
    CONSTRAINT pk_country PRIMARY KEY (country_id)
);
use Axis_Bookstore;
go
CREATE TABLE customer (
    customer_id INT,
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    email VARCHAR(350),
	phone VARCHAR(50),
    CONSTRAINT pk_customer PRIMARY KEY (customer_id)
);
use Axis_Bookstore;
go
CREATE TABLE payment_method (
    method_id INT,
    payment_type VARCHAR(100),
	payment_gateway VARCHAR(100),
    CONSTRAINT pk_shipmethod PRIMARY KEY (method_id)
);
use Axis_Bookstore;
go
CREATE TABLE order_status (
    status_id INT,
    status_value VARCHAR(20),
    CONSTRAINT pk_orderstatus PRIMARY KEY (status_id)
);
use Axis_Bookstore;
go
CREATE TABLE address (
    address_id INT,
    street_number VARCHAR(10),
    street_name VARCHAR(200),
    city VARCHAR(100),
    country_id INT,
    CONSTRAINT pk_address PRIMARY KEY (address_id),
    CONSTRAINT fk_addr_ctry FOREIGN KEY (country_id) REFERENCES country (country_id)
);
use Axis_Bookstore;
go
CREATE TABLE customer_address (
    customer_id INT,
    address_id INT,
    status_id INT,
    CONSTRAINT pk_custaddr PRIMARY KEY (customer_id, address_id),
    CONSTRAINT fk_ca_cust FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
    CONSTRAINT fk_ca_addr FOREIGN KEY (address_id) REFERENCES address (address_id),
	CONSTRAINT fk_ca_addrsts FOREIGN KEY (status_id) REFERENCES address_status (status_id)
);
use Axis_Bookstore;
go
CREATE TABLE cust_order (
    order_id INT IDENTITY(1,1),
    order_date DATETIME,
    customer_id INT,
    method_id INT,
    dest_address_id INT,
    CONSTRAINT pk_custorder PRIMARY KEY (order_id),
    CONSTRAINT fk_order_cust FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
    CONSTRAINT fk_order_pay FOREIGN KEY (method_id) REFERENCES payment_method (method_id),
    CONSTRAINT fk_order_addr FOREIGN KEY (dest_address_id) REFERENCES address (address_id)
);
CREATE TABLE order_history (
    history_id INT IDENTITY(1,1),
    order_id INT,
    status_id INT,
    status_date DATETIME,
    CONSTRAINT pk_orderhist PRIMARY KEY (history_id),
    CONSTRAINT fk_oh_order FOREIGN KEY (order_id) REFERENCES cust_order (order_id),
    CONSTRAINT fk_oh_status FOREIGN KEY (status_id) REFERENCES order_status (status_id)
);
go
CREATE TABLE book (
    book_id INT,
    title VARCHAR(400),
    isbn13 VARCHAR(13),
    language_id INT,
    num_pages INT,
    publication_date DATE,
    publisher_id INT,
	no_of_copies INT,
	book_genre VARCHAR(100),
	book_edition VARCHAR(100),
    CONSTRAINT pk_book PRIMARY KEY (book_id),
    CONSTRAINT fk_book_pub FOREIGN KEY (publisher_id) REFERENCES publisher (publisher_id)
	
);
CREATE TABLE book_author(
book_id int,
author_id int,
CONSTRAINT pk_book_author PRIMARY KEY(book_id,author_id),
CONSTRAINT fk_book_auth_book FOREIGN KEY (book_id) REFERENCES book (book_id),
CONSTRAINT fk_book_auth_auth FOREIGN KEY (author_id) REFERENCES author (author_id));
go
CREATE TABLE book_language(
book_id int,
language_id int,
CONSTRAINT pk_lang_book PRIMARY KEY (book_id, language_id),
CONSTRAINT fk_lang_book FOREIGN KEY (book_id) REFERENCES book (book_id),
CONSTRAINT fk_lang_lang FOREIGN KEY (language_id) REFERENCES [language](language_id));
go
CREATE TABLE order_line (
    line_id INT IDENTITY(1,1),
    order_id INT,
    book_id INT,
    price DECIMAL(5, 2),
    CONSTRAINT pk_orderline PRIMARY KEY (line_id),
    CONSTRAINT fk_ol_order FOREIGN KEY (order_id) REFERENCES cust_order (order_id),
    CONSTRAINT fk_ol_book FOREIGN KEY (book_id) REFERENCES book (book_id)
);
ALTER TABLE book
ADD CONSTRAINT fk_book_lang FOREIGN KEY (book_id , language_id) REFERENCES book_language (book_id, language_id);
use Axis_Bookstore;
go
ALTER TABLE customer
ADD gender VARCHAR(50);
select * from cust_order
ALTER TABLE publisher
ADD email VARCHAR(100);
ALTER TABLE publisher
ADD phone VARCHAR(100);
ALTER TABLE book
DROP CONSTRAINT fk_book_lang 
ALTER TABLE cust_order
ADD cost VARCHAR(50)
ALTER TABLE cust_order
ADD delivery_charge int
ALTER TABLE cust_order
DROP COLUMN cost
ALTER TABLE cust_order
ADD cost int
select * from publisher
ALTER TABLE address
ADD pincode varchar(50);

/****Check constraint to have a 10 digit phone****/
ALTER TABLE customer 
ADD CONSTRAINT ck_phone check (len(phone) = 10);

select * from customer
update customer
set phone = '234567890789078989' 
where customer_id = 17

/****Check constraint for email validation****/
ALTER TABLE customer
ADD CONSTRAINT chk_email check (email like '%_@__%.__%');


update customer
set email = 'rutuja'
where customer_id = 17

/*****Check constraint for isbn 13****/
ALTER TABLE book
ADD CONSTRAINT chk_pub_date check (len(isbn13) = 13);

select * from book

/****Check constraint for book_edition****/
ALTER TABLE book
ADD CONSTRAINT chk_book_edtn check(book_edition != 'zero');