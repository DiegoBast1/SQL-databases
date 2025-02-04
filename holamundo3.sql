CREATE TABLE products (
   id int not null auto_increment,
   name varchar(50) not null,
   created_by int not null,
   marca varchar(50) not null,
   PRIMARY KEY (id),
   FOREIGN KEY (created_by) references user(id)
);

RENAME TABLE products to product;

INSERT INTO product (name, created_by, marca)
VALUES
	('ipad', 1, 'apple'),
    ('iphone', 1, 'apple'),
    ('watch', 2, 'apple'),
    ('macbook', 1, 'apple'),
    ('imac', 3, 'apple'),
    ('ipad mini', 2, 'apple');
    
    SELECT * FROM products;
    
select u.id, u.email from user u inner join product p on p.created_by = u.id; 
    
    