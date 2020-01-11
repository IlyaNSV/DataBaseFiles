/*первое задание*/
select avg(year(current_date)-year(birthday_at)) from users

/*второе задание*/
select weekday(birthday_at) from users 

/*третье задание*/
create table `values`
(value int not null);

insert into `values` (value) values (1),(2),(3),(4),(5);

select exp(sum(ln(value))) from `values`;