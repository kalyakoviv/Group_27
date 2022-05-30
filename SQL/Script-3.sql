create table salary(
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

create table roles(
	id serial primary key,
	role_title varchar(50) unique not null
);

select * from roles;

create table roles_salary (
	id serial primary key,
	id_role int not null,
	id_salary int not null,
	foreign key (id_role)
		references roles(id),
	foreign key (id_salary)
		references salary(id)
);

select * from roles_salary;

insert into salary(id, monthly_salary)
values (default, 1000),
	   (default, 1200),
	   (default, 1300),
	   (default, 1400);

insert into salary(monthly_salary)
values (1500),
       (1600),	  
       (1700),	         
       (1800),	         
       (1900),	         
       (2000);
      
select * from salary;

insert into roles(role_title)
values ('QA_manual_junior'),
	   ('QA_manual_middle'),
	   ('QA_manual_senior'),
	   ('QA_automation_junior'),
	   ('QA_automation_middle'),
	   ('QA_automation_senior'),
	   ('Java_developer_junior'),
	   ('Java_developer_middle'),
	   ('Java_developer_senior'),	  
	   ('CEO'),
	   ('CTO'),
	   ('HR'),		
 	   ('Manager'),
  	   ('Designer');
	  
select * from roles;

inser into roles_salary (id_role, id_salary)
values (1, 1),
       (2, 2),     
       (3, 3),   
       (4, 5),   
       (5, 7),          
       (6, 9),   
       (7, 10);

select * from roles_salary;



		