create table phones (
    name Varchar(50), 
	manufacturer varchar(100),
	price INTEGER,
	units_sold INTEGER
)

INSERT INTO phones
VALUES ('Samsung m32', 'Samsung',700, 12850),
('Samsung Galaxy A8','Samsung',500,10000),
('iPhone 12 pro','Apple',1000,50000),
('Vivo X70 pro','Vivo',240,15000),
('Oppo A37','Oppo',230,20000),
('iPhone 12 ','Apple',800,23000)

select * from phones

select manufacturer,sum(phones.price*phones.units_sold) as total_revenue
from phones
group by manufacturer
having sum(phones.price*phones.units_sold)>200000


SELECT *
FROM phones
ORDER BY price DESC
LIMIT 2 offset 1

select manufacturer,price
from phones
where price<170


select manufacturer
from phones
group by manufacturer
having count(name)>2


select name,price,(price/(select cast(max(price) as float)
from phones)) as price_ratio
from phones

select name,price
from phones
where units_sold>5000

select name,manufacturer
from phones
where manufacturer in ('Apple','Samsung')

select name,price*units_sold as total_revenue
from phones
where price*units_sold>100000


select * from orders

select count(*) filter (where "paid") as paid,
count(*) filter (where NOT "paid") as unpaid
from orders


/*2.	Print the first_name and last_name of each user along with the 
whether they have paid  for their order.*/

select first_name,last_name,paid 
from users
inner join orders on users.id = orders.user_id
order by first_name desc


 
select author_id,count(title)
from book
group by author_id

select name,title
from book
inner join author on author.id = book.author_id
order by name



