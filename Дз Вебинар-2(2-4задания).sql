/* задание 2*/
select distinct firstname 
from users 
order by 'asc'

/*задание 3*/
alter table profiles
add column is_active varcharacter(10) default 'false'

update profiles 
set is_active = 'True'
where (year(current_date)-year(birthday)) >= 18 -- так как рассматриваем в масштабе года, то возможны неточности с определением возраста

/*задание 4 */
delete from messages 
where year(created_at) > 2000 /*current_timestamp не используем, т.к все сообщения из прошлого, удалим те, которе после 2000 года */


