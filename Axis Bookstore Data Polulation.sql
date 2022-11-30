use Axis_Bookstore
go
Insert into publisher(publisher_id,publisher_name,email,phone) VALUES (1, 'Scribner', 'books@scribner.com', '8572346579');
Insert into publisher(publisher_id,publisher_name,email,phone) VALUES (2, 'Portfolio', 'publisher@portfolio.com', '8643571259');
Insert into publisher(publisher_id,publisher_name,email,phone) VALUES (3, 'William Morrow', 'mail@williammorrow.com', '8975612348');
Insert into publisher(publisher_id,publisher_name,email,phone) VALUES (4, 'Debolsillo', 'publisher@debolsillo.com', '8756139452');
Insert into publisher(publisher_id,publisher_name,email,phone) VALUES (5, 'Berkley', 'books@berkley.com', '8621456367');
Insert into publisher(publisher_id,publisher_name,email,phone) VALUES (6, 'Knopf', 'head@knopf.com', '8469751235');
Insert into publisher(publisher_id,publisher_name,email,phone) VALUES (7, 'Ebony', 'mail@ebony.com', '8215469874');
Insert into publisher(publisher_id,publisher_name,email,phone) VALUES (8, 'Plume', 'books@plume.com', '8531629475');
Insert into publisher(publisher_id,publisher_name,email,phone) VALUES (9, 'Ballantine Books', 'publisher@ballantine.com', '8324619875');
Insert into publisher(publisher_id,publisher_name,email,phone) VALUES (10, 'Del Rey', 'head@del.com', '8561324795');
Insert into publisher(publisher_id,publisher_name,email,phone) VALUES (11, 'William', 'books@william.com', '8632147965');
Insert into publisher(publisher_id,publisher_name,email,phone) VALUES (12, 'Francis', 'mail@francis.com', '8023945620');
Insert into publisher(publisher_id,publisher_name,email,phone) VALUES (13, 'Blackie Books', 'mail@blackie.com', '8012365497');
Insert into publisher(publisher_id,publisher_name,email,phone) VALUES (14, 'Folio', 'publisher@folio.com', '8456301586');
Insert into publisher(publisher_id,publisher_name,email,phone) VALUES (15, 'Berli', 'publisher@berli.com', '8621435920');
select * from publisher
Insert into author(author_id,author_name,author_email) VALUES (1,'Stephen king', 'stephenk@yahoo.com');
Insert into author(author_id,author_name,author_email) VALUES (2,'David McRaney', 'davidmc@gmail.com');
Insert into author(author_id,author_name,author_email) VALUES (3,'Nikki Erlick', 'nikkierlick@xyz.com');
Insert into author(author_id,author_name,author_email) VALUES (4,'Isaac Asimov', 'isaac@book.com');
Insert into author(author_id,author_name,author_email) VALUES (5,'Lana Harper', 'lana@xyz.com');
Insert into author(author_id,author_name,author_email) VALUES (6,'Cormac McCarthy', 'cormac@gmail.com');
Insert into author(author_id,author_name,author_email) VALUES (7,'Sona Movsesian', 'sona@yahoo.com');
Insert into author(author_id,author_name,author_email) VALUES (8,'Eminem', 'eminem@gmail.com');
Insert into author(author_id,author_name,author_email) VALUES (9,'Tanen Jones', 'tanen@book.com');
Insert into author(author_id,author_name,author_email) VALUES (10,'Naomi Novik', 'naomi@gmail.com');
Insert into author(author_id,author_name,author_email) VALUES (11,'Neil Gaiman', 'neil@xyz.com');
Insert into author(author_id,author_name,author_email) VALUES (12,'Catherine Barnoud', 'catherine@yahoo.com');
Insert into author(author_id,author_name,author_email) VALUES (13,'Raven Leilani', 'raven@ms.com');
Insert into author(author_id,author_name,author_email) VALUES (14,'Leïla Slimani', 'leila@book.com');
Insert into author(author_id,author_name,author_email) VALUES (15,'Tess LeSue', 'tess@gmail.com');
select * from author
Insert into language(language_id,language_name) VALUES (1,'English');
Insert into language(language_id,language_name) VALUES (2,'Spanish');
Insert into language(language_id,language_name) VALUES (3,'French');
select * from [language]
Insert into country(country_id,country_name) VALUES (1,'India');
Insert into country(country_id,country_name) VALUES (2,'United States');
Insert into country(country_id,country_name) VALUES (3,'Canada ');
Insert into country(country_id,country_name) VALUES (4,'Australia');
Insert into country(country_id,country_name) VALUES (5,'Japan');
Insert into country(country_id,country_name) VALUES (6,'Spain');
Insert into country(country_id,country_name) VALUES (7,'Brazil');
Insert into country(country_id,country_name) VALUES (8,'France');
Insert into country(country_id,country_name) VALUES (9,'Malaysia');
Insert into country(country_id,country_name) VALUES (10,'Singapore');
select * from country
Insert into book(book_id,title,isbn13,language_id,num_pages,publication_date,publisher_id,no_of_copies,book_genre,book_edition) VALUES (1,'Fairy Tale', '1021532468123', 1, 607, '2022-09-08', 1, 100, 'Thriller', 'First');
create nonclustered index NIX_PUB_NAME
on publisher (publisher_name ASC)
drop index NIX_PUB_NAME
on publisher
Insert into book_author(book_id,author_id) VALUES (1, 1);
Insert into book_author(book_id,author_id) VALUES (2, 2);
Insert into book_author(book_id,author_id) VALUES (3, 3);
Insert into book_author(book_id,author_id) VALUES (4, 4);
Insert into book_author(book_id,author_id) VALUES (5, 5);
Insert into book_author(book_id,author_id) VALUES (6, 6);
Insert into book_author(book_id,author_id) VALUES (7, 7);
Insert into book_author(book_id,author_id) VALUES (8, 8);
Insert into book_author(book_id,author_id) VALUES (9, 9);
Insert into book_author(book_id,author_id) VALUES (10, 10);
Insert into book_author(book_id,author_id) VALUES (11, 11);
Insert into book_author(book_id,author_id) VALUES (12, 12);
Insert into book_author(book_id,author_id) VALUES (13, 13);
Insert into book_author(book_id,author_id) VALUES (14, 14);
Insert into book_author(book_id,author_id) VALUES (15, 15);

Insert into book_language(book_id,language_id) VALUES (1, 1);
Insert into book_language(book_id,language_id) VALUES (2, 1);
Insert into book_language(book_id,language_id) VALUES (3, 1);
Insert into book_language(book_id,language_id) VALUES (4, 2);
Insert into book_language(book_id,language_id) VALUES (5, 1);
Insert into book_language(book_id,language_id) VALUES (6, 1);
Insert into book_language(book_id,language_id) VALUES (7, 1);
Insert into book_language(book_id,language_id) VALUES (8, 1);
Insert into book_language(book_id,language_id) VALUES (9, 1);
Insert into book_language(book_id,language_id) VALUES (10, 1);
Insert into book_language(book_id,language_id) VALUES (11, 1);
Insert into book_language(book_id,language_id) VALUES (12, 3);
Insert into book_language(book_id,language_id) VALUES (13, 2);
Insert into book_language(book_id,language_id) VALUES (14, 3);
Insert into book_language(book_id,language_id) VALUES (15, 1);

Insert into customer(customer_id,first_name,last_name,email,phone,gender) VALUES (1,'Aparna', 'Chavan','aparna.chavan@gmail.com',8573527628,'Female');
Insert into customer(customer_id,first_name,last_name,email,phone,gender) VALUES (2,'Shivani', 'Gole','shivani.gole@gmail.cpom',8574983377,'Female');
Insert into customer(customer_id,first_name,last_name,email,phone,gender) VALUES (3,'Shantanu', 'Pingale','shantanu.pingu@gmail.com',8576314978,'Male');
Insert into customer(customer_id,first_name,last_name,email,phone,gender) VALUES (4,'Arya', 'Patil','arya.p@gmail.com',8634521978,'Female');
Insert into customer(customer_id,first_name,last_name,email,phone,gender) VALUES (5,'Rahul', 'More','rahul.m@yahoo.com',8753120369,'Male');
Insert into customer(customer_id,first_name,last_name,email,phone,gender) VALUES (6,'Alex', 'Smith','alex.smith@gmail.com',8023649751,'Female');
Insert into customer(customer_id,first_name,last_name,email,phone,gender) VALUES (7,'Mark', 'Miller','mark.miller@yahoo.com',8541236970,'Male');
Insert into customer(customer_id,first_name,last_name,email,phone,gender) VALUES (8,'Nicole', 'Davis','nicoled@yahoo.com',8023649571,'Female');
Insert into customer(customer_id,first_name,last_name,email,phone,gender) VALUES (9,'Gauri', 'Joshi','gaurij@gmail.com',8632149750,'Female');
Insert into customer(customer_id,first_name,last_name,email,phone,gender) VALUES (10,'Piyush', 'Shah','piyushs@gmail.com',8052469571,'Male');
Insert into customer(customer_id,first_name,last_name,email,phone,gender) VALUES (11,'Marina', 'Williams','marina.w@gmail.com',8632197516,'Female');
Insert into customer(customer_id,first_name,last_name,email,phone,gender) VALUES (12,'Andrew', 'Brown','andrew.brown@yahoo.com',9875643248,'Male');
Insert into customer(customer_id,first_name,last_name,email,phone,gender) VALUES (13,'John', 'Lopez','john.l@yahoo.com',9876523798,'Male');
Insert into customer(customer_id,first_name,last_name,email,phone,gender) VALUES (14,'Jacob', 'Lee','jacob.lee@gmail.com',9876135482,'Male');
Insert into customer(customer_id,first_name,last_name,email,phone,gender) VALUES (15,'Srushti', 'Deshmukh','srushti.desh@gmail.com',9876324589,'Female');

Insert into address(address_id,street_number,street_name,city,country_id) VALUES (1,360,'Riverway','Boston',2);
Insert into address(address_id,street_number,street_name,city,country_id) VALUES (2,15,'Kingsford','Boston',2);
Insert into address(address_id,street_number,street_name,city,country_id) VALUES (3,88,'Oak','Boston',2);
Insert into address(address_id,street_number,street_name,city,country_id) VALUES (4,67,'Summerview','Tokyo',5);
Insert into address(address_id,street_number,street_name,city,country_id) VALUES (5,62,'Avenue Street','Bangalore',1);
Insert into address(address_id,street_number,street_name,city,country_id) VALUES (6,30,'Residency Road','Pune',1);
Insert into address(address_id,street_number,street_name,city,country_id) VALUES (7,10,'Bunker Hill','Madrid',6);
Insert into address(address_id,street_number,street_name,city,country_id) VALUES (8,92,'Grasskamp','Salvador',7);
Insert into address(address_id,street_number,street_name,city,country_id) VALUES (9,40,'Lyons','Paris',8);
Insert into address(address_id,street_number,street_name,city,country_id) VALUES (10,21,'Vidon','Kuching',9);
Insert into address(address_id,street_number,street_name,city,country_id) VALUES (11,88,'Sloan','Kranji',10);
Insert into address(address_id,street_number,street_name,city,country_id) VALUES (12,93,'Ridge Oak','Toronto',3);
Insert into address(address_id,street_number,street_name,city,country_id) VALUES (13,95,'Forest Dale','Sydney',4);
Insert into address(address_id,street_number,street_name,city,country_id) VALUES (14,30,'Chive','Perth',4);
Insert into address(address_id,street_number,street_name,city,country_id) VALUES (15,95,'Westerfield','Valencia',6);

Insert into address_status(status_id,address_status) VALUES (1,'Active');
Insert into address_status(status_id,address_status) VALUES (0,'Inactive');

Insert into customer_address(customer_id,address_id,status_id) VALUES (1,1,1);
Insert into customer_address(customer_id,address_id,status_id) VALUES (2,2,1);
Insert into customer_address(customer_id,address_id,status_id) VALUES (3,3,1);
Insert into customer_address(customer_id,address_id,status_id) VALUES (4,4,1);
Insert into customer_address(customer_id,address_id,status_id) VALUES (5,5,1);
Insert into customer_address(customer_id,address_id,status_id) VALUES (6,6,0);
Insert into customer_address(customer_id,address_id,status_id) VALUES (7,7,1);
Insert into customer_address(customer_id,address_id,status_id) VALUES (8,8,1);
Insert into customer_address(customer_id,address_id,status_id) VALUES (9,9,1);
Insert into customer_address(customer_id,address_id,status_id) VALUES (10,10,1);
Insert into customer_address(customer_id,address_id,status_id) VALUES (11,11,0);
Insert into customer_address(customer_id,address_id,status_id) VALUES (12,12,1);
Insert into customer_address(customer_id,address_id,status_id) VALUES (13,13,1);
Insert into customer_address(customer_id,address_id,status_id) VALUES (14,14,1);
Insert into customer_address(customer_id,address_id,status_id) VALUES (15,15,1);

Insert into order_status(status_id,status_value) VALUES (1,'Shipped');
Insert into order_status(status_id,status_value) VALUES (2,'Delivered');
Insert into order_status(status_id,status_value) VALUES (3,'Returned');
Insert into order_status(status_id,status_value) VALUES (4,'Cancelled');
Insert into order_status(status_id,status_value) VALUES (5,'Order Placed');

Insert into payment_method(method_id,payment_type) VALUES (1,'Cash');
Insert into payment_method(method_id,payment_type) VALUES (2,'Debit Card');
Insert into payment_method(method_id,payment_type) VALUES (3,'Credit Card');
Insert into payment_method(method_id,payment_type) VALUES (4,'Net Banking');

Insert into book(book_id,title,isbn13,language_id,num_pages,publication_date,publisher_id,no_of_copies,book_genre,book_edition) VALUES (2,'How Minds Change', '1034615879133', 1, 352, '2021-06-21', 2, 45, 'Psychology', 'Second');
Insert into book(book_id,title,isbn13,language_id,num_pages,publication_date,publisher_id,no_of_copies,book_genre,book_edition) VALUES (3,'The Measure', '4614563197789', 1, 368, '2022-06-28', 3, 50, 'Science Fiction', 'First');
Insert into book(book_id,title,isbn13,language_id,num_pages,publication_date,publisher_id,no_of_copies,book_genre,book_edition) VALUES (4,'Foundation', '4624564297876', 2, 264, '2022-11-08', 4, 50, 'Science Fiction', 'First');
Insert into book(book_id,title,isbn13,language_id,num_pages,publication_date,publisher_id,no_of_copies,book_genre,book_edition) VALUES (5,'From Bad to Cursed', '4655632789792', 1, 368, '2022-05-17', 5, 100, 'Romance', 'First');
Insert into book(book_id,title,isbn13,language_id,num_pages,publication_date,publisher_id,no_of_copies,book_genre,book_edition) VALUES (6,'The Passenger', '1877896543534', 1, 400, '2022-10-25', 6, 100, 'Literary Fiction', 'Second');
Insert into book(book_id,title,isbn13,language_id,num_pages,publication_date,publisher_id,no_of_copies,book_genre,book_edition) VALUES (7,'The Worlds Worst Assistant', '3246552495793', 1, 272, '2022-07-19', 7, 100, 'Humor', 'First');
Insert into book(book_id,title,isbn13,language_id,num_pages,publication_date,publisher_id,no_of_copies,book_genre,book_edition) VALUES (8,'The Way I Am', '1234563286203', 1, 208, '2009-10-27', 8, 200, 'Biography', 'First');
Insert into book(book_id,title,isbn13,language_id,num_pages,publication_date,publisher_id,no_of_copies,book_genre,book_edition) VALUES (9,'The Better Liar', '7894563197497', 1, 320, '2020-01-14', 9, 500, 'Mystery', 'First');
Insert into book(book_id,title,isbn13,language_id,num_pages,publication_date,publisher_id,no_of_copies,book_genre,book_edition) VALUES (10,'Uprooted', '1024563279789', 1, 464, '2016-03-01', 10, 1000, 'Science Fiction', 'First');
Insert into book(book_id,title,isbn13,language_id,num_pages,publication_date,publisher_id,no_of_copies,book_genre,book_edition) VALUES (11,'American Gods', '1384563789402', 1, 784, '2016-08-16', 11, 800, 'Fantasy Fiction', 'Tenth');
Insert into book(book_id,title,isbn13,language_id,num_pages,publication_date,publisher_id,no_of_copies,book_genre,book_edition) VALUES (12,'Arsène Lupin : Gentleman-Cambrioleur', '7891351269000', 3, 150, '2021-01-29', 12, 500, 'Thriller', 'Third');
Insert into book(book_id,title,isbn13,language_id,num_pages,publication_date,publisher_id,no_of_copies,book_genre,book_edition) VALUES (13,'Brillo', '8758954627967', 2, 240, '2022-11-08', 13, 500, 'Literary Fiction', 'First');
Insert into book(book_id,title,isbn13,language_id,num_pages,publication_date,publisher_id,no_of_copies,book_genre,book_edition) VALUES (14,'Le pays des autres', '1974302500468', 3, 416, '2021-05-06', 14, 200, 'Literary Fiction', 'First');
Insert into book(book_id,title,isbn13,language_id,num_pages,publication_date,publisher_id,no_of_copies,book_genre,book_edition) VALUES (15,'Bound for sin', '1004563279652', 1, 432, '2018-09-04', 15, 100, 'Romance', 'Second');

select * from publisher

Insert into order_line(order_id,book_id,price) VALUES (2,1,NULL);
Insert into order_line(order_id,book_id,price) VALUES (2,2,NULL);
Insert into order_line(order_id,book_id,price) VALUES (3,3,NULL);
Insert into order_line(order_id,book_id,price) VALUES (4,4,NULL);
Insert into order_line(order_id,book_id,price) VALUES (5,5,NULL);
Insert into order_line(order_id,book_id,price) VALUES (6,6,NULL);
Insert into order_line(order_id,book_id,price) VALUES (7,7,NULL);
Insert into order_line(order_id,book_id,price) VALUES (8,8,NULL);
Insert into order_line(order_id,book_id,price) VALUES (9,9,NULL);
Insert into order_line(order_id,book_id,price) VALUES (10,10,NULL);
Insert into order_line(order_id,book_id,price) VALUES (11,11,NULL);
Insert into order_line(order_id,book_id,price) VALUES (12,12,NULL);
Insert into order_line(order_id,book_id,price) VALUES (13,13,NULL);
Insert into order_line(order_id,book_id,price) VALUES (14,14,NULL);
Insert into order_line(order_id,book_id,price) VALUES (15,15,NULL);
select * from order_line

Insert into cust_order(order_date,cost,customer_id,method_id) VALUES ('2022-08-22',NULL,1,2);
Insert into cust_order(order_date,cost,customer_id,method_id) VALUES ('2021-10-21',NULL,2,3);
Insert into cust_order(order_date,cost,customer_id,method_id) VALUES ('2021-11-20',NULL,3,4);
Insert into cust_order(order_date,cost,customer_id,method_id) VALUES ('2022-09-02',NULL,4,1);
Insert into cust_order(order_date,cost,customer_id,method_id) VALUES ('2022-01-08',NULL,5,2);
Insert into cust_order(order_date,cost,customer_id,method_id) VALUES ('2022-03-17',NULL,6,3);
Insert into cust_order(order_date,cost,customer_id,method_id) VALUES ('2022-04-23',NULL,7,4);
Insert into cust_order(order_date,cost,customer_id,method_id) VALUES ('2022-06-25',NULL,8,2);
Insert into cust_order(order_date,cost,customer_id,method_id) VALUES ('2022-06-08',NULL,9,2);
Insert into cust_order(order_date,cost,customer_id,method_id) VALUES ('2022-08-10',NULL,10,3);
Insert into cust_order(order_date,cost,customer_id,method_id) VALUES ('2022-07-29',NULL,11,4);
Insert into cust_order(order_date,cost,customer_id,method_id) VALUES ('2021-12-01',NULL,12,1);
Insert into cust_order(order_date,cost,customer_id,method_id) VALUES ('2022-09-30',NULL,13,4);
Insert into cust_order(order_date,cost,customer_id,method_id) VALUES ('2022-06-04',NULL,14,2);
Insert into cust_order(order_date,cost,customer_id,method_id) VALUES ('2022-07-12',NULL,15,1);

select * from cust_order

Insert into order_history(order_id,status_id,status_date) VALUES (2,2,44798);
delete from order_line where line_id = 4
delete from cust_order where order_id = 17
select * from order_history

Insert into order_history(order_id,status_id,status_date) VALUES (5,2,44501);
Insert into order_history(order_id,status_id,status_date) VALUES (6,3,44525);
Insert into order_history(order_id,status_id,status_date) VALUES (2,4,44812);
Insert into order_history(order_id,status_id,status_date) VALUES (15,1,44576);
Insert into order_history(order_id,status_id,status_date) VALUES (7,2,44650);
Insert into order_history(order_id,status_id,status_date) VALUES (3,2,44678);
Insert into order_history(order_id,status_id,status_date) VALUES (4,3,44799);
Insert into order_history(order_id,status_id,status_date) VALUES (9,1,44742);
Insert into order_history(order_id,status_id,status_date) VALUES (8,4,44723);

select * from address
UPDATE address
set pincode = '02120'
where address_id = 1