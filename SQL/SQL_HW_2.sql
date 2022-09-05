create table employees (
id serial primary key,
employee_name varchar(50) unique not null
);

select * from employees;

insert into employees (employee_name)
values ('Finn Washington'),
       ('Verge Collins'),
       ('King Morris'),
       ('Neil Hill'),
       ('Keaton Bryant'),
       ('Ulises Hernandez'),
       ('Daxton Lopez'),
       ('Keegan Foster'),
       ('Archer Walker'),
       ('Eric Brooks'),
       ('Finley Hall'),
       ('Xenos Hayes'),
       ('Javier James'),
       ('Prince Howard'),
	   ('Abraham Richardson'),
	   ('Giovanni Jackson'),
	   ('John Griffin'),
	   ('Foster Brown'),
	   ('Byron Patterson'),
	   ('Zachery Collins'),
	   ('Warner Evans'),
	   ('Brock Bell'),
	   ('Xiomar Sanchez'),
	   ('Pablo Perez'),
	   ('Jace King'),
	   ('Timothy Kelly'),
	   ('Quinto Cooper'),
	   ('Zayne Anderson'),
	   ('Jeffrey Baker'),
	   ('Ziya Hayes'),
	   ('Xandros Carter'),
	   ('Luka Campbell'),
	   ('Osman Stewart'),
	   ('Leonard Miller'),
	   ('Lucas Washington'),
	   ('Ondina Flores'),
	   ('Yana Gonzalez'),
	   ('Naomi Barnes'),
	   ('Itzel Alexander'),
	   ('Zoey Garcia'),
	   ('Mikayla Allen'),
	   ('Sienna Nelson'),
	   ('Adeline Kelly'),
	   ('Tayla Flores'),
	   ('Ulrike Rivera'),
	   ('Vivianne Perry'),
	   ('Xena Rivera'),
	   ('Zadie Williams'),
	   ('Yadira White'),
	   ('Charli Rogers'),
	   ('Abigail Miller'),
	   ('Greta White'),
	   ('Katherine Henderson'),
	   ('Juliette Jackson'),
	   ('Wisdom Mitchell'),
	   ('Zara Allen'),
	   ('Fayth Hernandez'),
	   ('Callen Moore'),
	   ('Xandria Perez'),
	   ('Wisdom Peterson'),
	   ('Odelia Williams'),
	   ('Lilah Davis'),
	   ('Khloe Ward'),
	   ('Jazlyn Alexander'),
	   ('Zofia Phillips'),
	   ('Callen Perez'),
	   ('Leah Taylor'),
	   ('Xaviera Ramirez'),
	   ('Zayda Garcia'),
	   ('Lexi Hernandez');
	   
select * from employees; 

create table salary(
id serial  primary key,
monthly_salary int not null
);

insert into salary (monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);
       
select * from salary;


create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);  

insert into employee_salary (employee_id, salary_id)
values (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),       
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10),
       (11, 11),
       (12, 12),
       (13, 13),
       (14, 14),
       (15, 15),
       (16, 16),
       (17, 17),
       (18, 18),
       (19, 19),
       (20, 20),
       (21, 21),
       (22, 22),
       (23, 23),
       (24, 24),
       (25, 25),
       (26, 26),
       (27, 27),
       (28, 28),
       (29, 29),
       (30, 30),
       (71, 31),
       (72, 32),
       (73, 33),
       (74, 34),
       (75, 35),
       (76, 36),
       (77, 37),
       (78, 38),
       (79, 39),
       (80, 40);
      
select * from employee_salary;      

create table roles (
id serial primary key,
role_name int unique not null
);

alter table roles 
alter column role_name type varchar(30) using role_name::varchar(30)


insert into roles (role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');
      
create table roles_employee (
id serial primary key,
employee_id int not null unique,
role_id int not null,
  foreign key (employee_id)
   references employees(id),
  foreign key (role_id)
   references roles(id)   
); 

select * from roles_employee;

insert into roles_employee(employee_id, role_id)
values (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),       
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10),
       (11, 11),
       (12, 12),
       (13, 13),
       (14, 14),
       (15, 15),
       (16, 16),
       (17, 17),
       (18, 18),
       (19, 19),
       (20, 20),
       (21, 1),
       (22, 2),
       (23, 3),
       (24, 4),
       (25, 5),
       (26, 6),
       (27, 7),
       (28, 8),
       (29, 9),
       (30, 10),
       (31, 11),
       (32, 12),
       (33, 13),
       (34, 14),
       (35, 15),
       (36, 16),
       (37, 17),
       (38, 18),
       (39, 19),
       (40, 20);
      
select * from roles_employee;      
      