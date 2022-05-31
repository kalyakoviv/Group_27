create table salary(
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

create table roles(
	id serial primary key,
	role_thitle varchar(50) unique not null
);

select * from roles;

create table role_salary (
	id serial primary key,
	id_role int not null,
	id_salary int not null,
	foreign key (id_role)
		references roles(id),
	foreign key (id_salary)
		references salary(id)
);

select * from role_salary;

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

insert into roles(id, role_thitle)
values (default, 'QA_manual_junior'),
	   (default, 'QA_manual_middle'),
	   (default, 'QA_manual_senior'),
	   (default, 'QA_automation_junior'),
	   (default, 'QA_automation_middle'),
	   (default, 'QA_automation_senior'),
	   (default, 'Java_developer_junior'),
	   (default, 'Java_developer_middle'),
	   (default, 'Java_developer_senior'),	  
	   (default, 'CEO'),
	   (default, 'CTO'),
	   (default, 'HR'),		
 	   (default, 'Manager'),
  	   (default, 'Designer');
	  
select * from roles;

insert into role_salary (id_role, id_salary)
values (1, 1),
       (2, 2),     
       (3, 3),   
       (4, 5),   
       (5, 7),          
       (6, 9),   
       (7, 10);

select * from role_salary;

select * from role_salary 

		