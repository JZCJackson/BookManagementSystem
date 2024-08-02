CREATE DATABASE BookDB;
use BookDB;
-- book, admin, customer, author, loan_record

CREATE TABLE Book (
id bigint auto_increment primary key,
title varchar(255) not null,
author varchar(255) not null,
isbn varchar(255) not null
);

create table admin (
id bigint auto_increment primary key,
usename varchar(255) not null,
password varchar(255) not null,
email varchar(255) not null,
phone_number char(10) not null,
role varchar(255) not null
);

create table customer (
id bigint auto_increment primary key,
username varchar(255) not null,
password varchar(255) not null,
email varchar(255) not null,
memebership_start_date date not null,
memebrship_end_date date not null
);

create table author (
id bigint auto_increment primary key,
name varchar(255) not null,
nationality varchar(255) not null
);

create table loan_record (
id bigint auto_increment primary key,
book_id bigint not null,
customer_id bigint not null,
borrow_date date not null,
return_date date,
FOREIGN KEY (book_id) references book(id),
FOREIGN KEY (customer_id) references customer(id)
);


