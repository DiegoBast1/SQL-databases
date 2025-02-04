create database inventory;
use inventory;

create table users(
   id int not null auto_increment,
   name varchar(50) not null,
   email varchar(100) not null,
   PRIMARY KEY (id)
);

insert into users (name, email)
VALUES
	('Josh', 'josh@gmail.com'),
    ('Michael', 'michael@gmail.com'),
    ('Leslie', 'leslie@gmail.com'),
    ('Oscar', 'oscar@gmail.com'),
    ('Steven', 'stever@gmail.com');
    
select * from users;
    
create table products(
   id int not null auto_increment,
   brand varchar(50) not null,
   model varchar(100) not null,
   created_by int not null,
   PRIMARY KEY (id),
   FOREIGN KEY (created_by) references users(id)
);

insert into products (brand, model, created_by)
VALUES
	('Ford','Mustang','3'),
    ('Chevrolet','Tahoe','2'),
    ('Lincoln','Nautilus','4'),
    ('Subaru','Legacy','1'),
    ('Mazda','6','1'),
    ('Hyundai','Santa fe','4'),
    ('Volkswagen','Jetta','5'),
    ('Volkswagen','Taos','3'),
    ('Nissan','Altima','2'),
    ('Nissan','Rogue','3');
    
select * from products;
select id, created_by from products;

select u.name, u.email, p.model, p.created_by from users u left join products p on u.id = p.created_by;