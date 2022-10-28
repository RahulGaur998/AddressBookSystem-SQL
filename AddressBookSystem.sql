show databases;

create database addressbook;

show databases;

use addressbook;

select database();

create table addressbook(
     id       int unsigned not null auto_increment,
     first_name       varchar(10),
     last_name        varchar(10),
     address  varchar(50),
     city     varchar(10),
     state    varchar(20),
     zip      int ,
     phone_number     int,
     email    varchar(30),
     primary key (id)
);

describe addressbook;

insert into addressbook (first_name,last_name,address,city,state,zip,phone_number,email) values ('John','Doe','k-type','newyork','newyork',831004,1258623,'abc@xyz
.com'),('jack','dale','P-type','Dallas','Texas',123456,8543912,'xyz@abc
.com'),('jenny','parker','X-type','LA','California',789456,1234595,'jas@jhds.com');

 select * from addressbook;
 
 update addressbook set city='Houston' where first_name='jack';
 
 select * from addressbook;
 
 delete from addressbook where first_name='jenny';
 select * from addressbook;
 
 select * from addressbook where state='newyork';
 select * from addressbook where city='Houston';
 insert into addressbook (first_name,last_name,address,city,state,zip,phone_number,email) values ('anne','parker','k-type','newyork','newyork',831004,1258623,'abc@xyz .com'),('jack','dale','P-type','Dallas','Texas',123456,8543912,'xyz@abc .com'),('sophie','smith','X-type','LA','California',789456,1234595,'jas@jhds.com');
select Count(*) As Count,state,city from addressbook group by state,city;

select * from addressbook where city='newyork' order by first_name;

alter table addressbook add type varchar(150) not null after last_name;

describe addressbook;
 
 update addressbook set type='profession' where first_name='sophie';
  select count(type) as Count,type from addressbook group by type;
  
  update addressbook set type='friends,family' where first_name='anne';