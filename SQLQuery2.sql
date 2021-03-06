--UC1 Creating of Database
create database Address_book_serviceDB
use Address_book_serviceDB;
select * from sys.databases

--UC2 creating of table with firstname,last name,address,city,zipcode,phonenumber & email \

create table Addressbook
(
Firstname varchar(60),
Lastname varchar(50),
Address varchar(150),
City varchar(50),
state varchar(50),
Zipcode varchar(6),
Phonenumber varchar(13),
Email varchar(60)
)

select * from Addressbook

--UC3 inserting of new contacts

insert into Addressbook values
('Ashu','sagar','Maharashtra','Pune','505208','1596321478','ashu@gmail.com'),
('Neha','raj','Gujrat','Surat','500063','8697412456','neha@gmail.com'),
('pooja','shinde','Delhi','Gurgaon','503698','4563217895','pooja@gmail.com'),
('Arnavi','patil','Maharashtra','Nashik','569238','7531598625','arnavi@gmail.com'),
('ila','jha','Gujrat','Varodara','456218','785123654','ila@gmail.com')

select * from Addressbook

--UC4 edit a contact
update Addressbook set Firstname='Dileep',Lastname='yadav'
where Firstname='Neha'

--UC5 delact a contact
select * from Addressbook 
delete from Addressbook where Firstname='ila'

select * from Addressbook

--UC6 Retrieve Person belonging to a City or State from the Address Book
select * from Addressbook where City='Pune'

select * from Addressbook where city ='Maharashtra'

--UC7 size of addressbook by City/State
select count(city) as 'city count' from Addressbook where city='Maharashtra'
select * from Addressbook
 
 --uc8 Sort contact by firstname from city
 select * from Addressbook where City ='mumbai' order by Firstname

 --UC9 Alter AddressBook table with type
 alter table Addressbook add
Type varchar(50)

update Addressbook set Type='friend' where Firstname='Ashu'
update Addressbook set Type='family' where Firstname='Neha'
update Addressbook set Type='friend' where Firstname='pooja'
update Addressbook set Type='friend' where Firstname='arnavi'
update Addressbook set Type='family' where Firstname='ila'

select * from Addressbook


--uc10 no of contact person count by type
select count(*) Firstname from Addressbook where Type='family'

--uc11 add person to both Friend and Family
alter table Addressbook add
otherType varchar(50)

update Addressbook set otherType='cousin' where Firstname='Ashu'
update Addressbook set otherType='friend' where Firstname='Neha'
update Addressbook set otherType='colleague' where Firstname='pooja'
update Addressbook set otherType='colleague' where Firstname='arnavi'
update Addressbook set otherType='friend' where Firstname='ila'

select * from Addressbook