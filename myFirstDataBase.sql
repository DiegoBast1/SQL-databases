create database vehicles;
use vehicles;

create table car_inventory (
   id int not null auto_increment,
   type varchar(50) not null,
   brand varchar(50) not null,
   model varchar(50) not null,
   year int not null,
   PRIMARY KEY (id)
);

insert into car_inventory (type, brand, model, year)
VALUES 
	('SUV', 'FORD', 'EXPLORER', 2016),
    ('SUV', 'BMW', 'X5', 2017),
    ('SEDAN', 'VOLKSWAGEN', 'JETTA', 2022),
    ('TRUCK', 'GMC', 'SIERRA', 2011),
    ('SEDAN', 'TESLA', 'MODEL S', 2023),
    ('SUV', 'VOLKSWAGEN', 'TIGUAN', 2015),
    ('SEDAN', 'FORD', 'FUSION', 2012),
    ('HATCHBACK', 'VOLKSWAGEN', 'GOLF GTI', 2006),
    ('TRUCK', 'FORD', 'F150', 2024),
    ('SUV', 'LAND ROVER', 'DISCOVERY', 2019);
    
select * from car_inventory;
select * from car_inventory limit 3;
select * from car_inventory where type = 'SUV';
select * from car_inventory where type like 'TRUCK';
select max(year) as newest_model from car_inventory;
select min(year) as oldest_model from car_inventory;

update car_inventory set year = 2014 where id = 4;
update car_inventory set model = 'MODEL 3' where id = 5;

select * from car_inventory;
