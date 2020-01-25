/*задание 1*/
select users.* 
from users join orders
on users.id=orders.user_id

/*задание 2*/
select products.*, catalogs.name
from products join catalogs on products.catalog_id=catalogs.id

