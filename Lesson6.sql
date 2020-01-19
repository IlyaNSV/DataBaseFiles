/*Находим самого общительного друга юзера 1*/
select tbl.fui as 'id друга' , max(tbl.cnt) as 'Максимум сообщений' from (select from_user_id as 'fui', count(from_user_id) as 'cnt'
from messages 
where to_user_id = 1 and (from_user_id in (select initiator_user_id from user_1_friends union select target_user_id from user_1_friends))
group by from_user_id) as tbl;

/*Находим количество лайков, которое получили юзеры до 10 лет*/
select count(*) as 'Юзеры до 10 лет получили лайков' from likes where media_id in 
   (select id from media where user_id in 
       (select user_id from profiles where birthday > SUBDATE(now(), interval 10 year))
    );
/*создадим представление с данными о поставленных мужчинами и женщинами лайках */
   create view f_and_m_likes (male,female) as select
(
select count(*) as 'Мужчины поставили лайков' from likes where media_id in 
   (select id from media where user_id in 
       (select user_id from profiles where gender ='m')
    )
), 
(
select count(*) as 'Женщины поставили лайков' from likes where media_id in 
   (select id from media where user_id in 
       (select user_id from profiles where gender ='f')
    )
);
/*напишем условие с if, которое будет выдавать нам, кто больше поставил лайков */
select if(f_and_m_likes.male>f_and_m_likes.female,'Мужчины поставили больше лайков','Женщины поставили больше лайков');