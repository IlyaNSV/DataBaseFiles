/* НОМЕР 1 добавляем поля с дефолтным значением текущей даты и времени*/
use vk;
alter table users
add column created_at varchar(100) default '11-01-2020 01:20:00',
add column updated_at varchar(100) default '11-01-2020 01:20:00';

/* НОМЕР 2 изменяем тип данных на datetime с сохранением значений, еще не разобрался, почему не работает*/
use vk;
alter table users
modify column created_at datetime , 
modify column updated_at datetime ;

/*Номер 3*/
create table storehouses_products 
(`value` int null);

INSERT INTO storehouses_products(value)
VALUES (2500),(0),(30),(500),(1);

select * from storehouses_products
order by if(value = 0, 1, 0 ) , value; /* не совсем понял, что означают последние две цифры для сортировки*/

/*Номер 4*/
use vk;
select *
from profiles
where month(birthday)=5 or month(birthday)=8
order by month(birthday);