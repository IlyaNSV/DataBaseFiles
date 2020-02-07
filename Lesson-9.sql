/*Тема1*/
/*Задание 1*/
insert into samples.users
select *
from shop.users 
where id = 1
/*Задание 2*/
create view number_two as select products.name as 'product_name', catalogs.name as 'catalog_name'
from products join catalogs on products.catalog_id=catalogs.id
/*Задание 3*/
create table created_time (created_at date);
insert into created_time values
('2018-08-01'),
('2018-08-06'),
('2018-08-16'),
('2018-08-17');
create table aug (number int);
insert into aug values (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),
(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31);

/*Тема3*/
/*Задание 1*/
drop function if exists greeting;
 
DELIMITER //
 
CREATE FUNCTION greeting() RETURNS VARCHAR(20)
    DETERMINISTIC
BEGIN
    DECLARE result varchar(30);
case
	when hour(current_time()) between 6 and 11 SET result = 'Доброе утро!'
	when hour(current_time()) between 12 and 17 SET result = 'Добрый день!'
	when hour(current_time()) between 18 and 23 SET result = 'Добрый вечер!'
	when hour(current_time()) between 0 and 5 SET result = 'Доброе утро!'
   
 RETURN (result); 
END//
 
DELIMITER ;
 
select greeting();