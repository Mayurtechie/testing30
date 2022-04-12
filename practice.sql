create table employee (EID int, Name Varchar(20), Last_name varchar(20), location varchar(10), Dept varchar(10), salary int);
insert into employee values (1, 'amit', 'parate', 'delhi', 'mech', 12000);
select * from employee;
insert into employee values (2, 'rohit', 'sharma', 'mumbai', 'elec', 15000);
insert into employee values (3, 'virat', 'kohli', 'banglore', 'mech', 18000);
insert into employee values (4, 'ravi', 'jadeja', 'chennai', 'mech', 12000);
insert into employee values (5, 'rahul', 'kl', 'banglore', 'civil', 12000);
insert into employee values (6, 'sanju', 'samson', 'jaipur', 'cs', 12000);
insert into employee values (7, 'shubham', 'lakkewar', 'delhi', 'mech', 12000);
insert into employee values (8, 'surya', 'yadav', 'mumbai', 'elec', 12000);
insert into employee values (9, 'yuzi', 'chahal', 'rajasthan', 'cs', 12000);
insert into employee values (10, 'jasprit', 'bumrah', 'mumbai', 'mech', 12000);
insert into employee (eid, name, last_name, location, dept) values (11, 'mayur', 'gajalwar', 'nagp', 'mech');
insert into employee (eid, name, last_name, location, dept) values (12, 'nikhil', 'wandhare', 'nagp','');
Select * from employee where dept='mech'; --comparative operators =,!=, <,>,<=,>=
Select * from employee where dept!='mech';
Select * from employee where salary>12000;
Select * from employee where salary<12000;
Select * from employee where salary>=12000;
Select * from employee where salary<=12000;
Select * from employee where salary>12000 and dept='civil'; --logical operators and & or
Select * from employee where salary=12000 and dept='mech';
Select * from employee where salary=12000 or dept='mech';
Select * from employee where salary>12000 or dept!='mech';
Select * from employee where location in ('delhi','chennai') and salary=12000 and dept='mech'; --in/not in operator
Select * from employee where location not in ('delhi','chennai') and salary=12000 and dept='mech';
Select * from employee where location in ('delhi','chennai') and salary=12000 and dept='mech' and eid  between 1 and 7; --between/not between
Select * from employee where name like 'a%'; -- like operator
Select * from employee where name like '%t'; 
Select * from employee where name like '%i_';
Select * from employee where name like '_m%'; 
Select * from employee where name like '%t%'; 
Select *,new_salary=salary+5000 from employee; -- Arithmatic operator
Select *,new_salary=salary-5000 from employee; -- Arithmatic operator

Select * from employee order by salary; --order by clause
Select * from employee order by salary desc; 

--Null and not null(equals to sign cannot be used so 'is' used for null values)
select * from employee where salary is null;
select * from employee where salary is not null;

--dml--delete func 
delete employee where name='amit' and dept='civil';
delete customer where customer_id='110';
select * from employee;

--ddl--drop--trucate func
--drop (delete strucure completely from the data base)
select * from customer;
drop table customer;

--truncate (delete stucture data completely but table is present)
truncate table customer;

--dml--update
--update
update customer set full_name='rishabh madne' where customer_id='109';

--ddl--alter(used for adding or droping the column and changing datatype)
alter table customer add salary int;
update customer set salary=25000;
alter table customer drop column salary;

--datatype
alter table customer alter column customer_id varchar(10);
delete customer where gender is null;

--homework
create table employee1 (eid int, name varchar(15), dept varchar(20),salary int, hiring_date date);
select * from employee1;
alter table employee1 add commision_pct varchar(10);
insert into employee1 values (101,'mayur gajalwar','sales',25000,'2021-11-10','0.40');
insert into employee1 values (102,'nikhil wandhare','sales',17000,'2019-02-01','0.30');
insert into employee1 values (103,'yugal namp','purchase',15000,'2004-11-10','0.10');
insert into employee1 values (104,'kunal verma','billing',2400,'2008-06-20','0.40');
insert into employee1 values (105,'david villa','sales',25000,'2010-11-12','0.40');
insert into employee1 values (106,'diana villa','purchase',25000,'2011-11-30','0.40')
insert into employee1 values (107,'sidd ramteke','purchase',2300,'2007-11-15','0.20');
insert into employee1 values (108,'sona madne','sales',18000,'2022-11-10','0.30');
select * from employee1 where salary<25000 and salary>15000;
select * from employee1 where commision_pct != '0.10';
delete employee1 where dept='purchase' and salary<2500;
select * from employee1 where name in ('david villa','diana villa');
select * from employee1 where salary<2400 and hiring_date>'2005';

--group by
select name,min(salary) as new from employee1 group by name;
select name,min(salary) as new from employee1 where dept='sales' group by name; 
select name,min(salary) as new from employee1 where dept='sales' group by name having min(salary)>17000;
select name,min(salary) as new from employee1 where dept='sales' group by name having min(salary)>17000 order by new desc;

--functions
select min(salary)as new from employee1;
select max(salary)as new from employee1;
select avg(salary)as new from employee1;
select count(*) from employee1; --includes null value
select count(name) from employee1;
select* from employee1;
insert into employee1 (eid,name,dept) values (109,'shub hood','billing');
select top 2 * from employee1;
select top 2 salary from employee1;
select top 4 * from employee1 order by eid desc;
select distinct (dept) from employee1;
select count(distinct(dept)) from employee1;
select count (*) from employee1 where dept='purchase';
select count (salary) from employee1 where salary=25000;

--i want to find the student name leaving in same city














































