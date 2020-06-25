DROP TABLE CUSTOMER IF EXISTS ;
CREATE TABLE CUSTOMER(
customerId int,
name varchar(30),
address varchar(50),
noOfOrdersMade int,
primary key (customerId)
);