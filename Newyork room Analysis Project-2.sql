show databases;
use fingertips;
show tables;
select * from pro2p1;
select * from pro2p2;

#1

select name from pro2p1;

#2

select count(id) from pro2p1;

#3

select count(id) from pro2p2;

#4

select host_id from pro2p1;

#5

select distinct host_id from pro2p1;

#6

select distinct neighbourhood_group from pro2p1;

#7

select distinct neighbourhood from pro2p1;
select * from pro2p1;

#8

select room_type from pro2p1;

#9

select * from pro2p1 where neighbourhood_group in ('brooklyn', 'manhattan');

#10

select distinct room_type from pro2p1;
select * from pro2p2;

#11

select max(price) from pro2p2;

#12

select min(price) from pro2p2;

#13

select avg(price) from pro2p2;

#14

select min(minimum_nights) from pro2p2;

#15

select min(minimum_nights) from pro2p2;

#16
select * from pro2p2;
select avg(availability_365) from pro2p2;

#17

select id, availability_365, availability_365 > 300 from pro2p2;

#18

select id, price from pro2p2 where price between 300 and 600;
select count(id) from pro2p2 where price between 300 and 600;

#19

select id, minimum_nights from pro2p2 where minimum_nights < 5;
select count(id) , minimum_nights from pro2p2 where minimum_nights < 5;

#20

select id, minimum_nights from pro2p2 where minimum_nights > 100;
select count(id) , minimum_nights from pro2p2 where minimum_nights < 100;

#21

select * from pro2p1;
select * from pro2p2;

select * from pro2p1 as p1 join pro2p2 as p2 on p1.id = p2.id;

#22

select p1.host_name, p2.price from pro2p1 as p1 join pro2p2 as p2 on p1.id = p2.id;

#23

select p1.room_type, p2.price from pro2p1 as p1 join pro2p2 as p2 on p1.id = p2.id;

#24

select p1.neighbourhood_group, p2.minimum_nights from pro2p1 as p1 join pro2p2 as p2 on p1.id = p2.id;

#25

select * from pro2p1;
select * from pro2p2;

select p1.neighbourhood, p2.availability_365 from pro2p1 as p1 join pro2p2 as p2 on p1.id = p2.id group by neighbourhood;

#26

select sum(p2.price) as total_price, p1.neighbourhood_group from pro2p2 as p2 left join pro2p1 as p1 on p1.id = p2.id group by neighbourhood_group;

#27

select  p1.neighbourhood_group , max(p2.price)max_price
from pro2p1 p1  join pro2p2 p2 on p1.id = p2.id
group by p1.neighbourhood_group;

#28

select  p1.neighbourhood_group , max(p2.minimum_nights)max_nights
from pro2p1 p1 join pro2p2 p2 on p1.id = p2.id
group by p1.neighbourhood_group;


#29

select  p1.neighbourhood_group , max(p2.reviews_per_month)max_reviews
from pro2p1 p1 join pro2p2 p2 on p1.id = p2.id
group by p1.neighbourhood_group;

#30

select * from pro2p1;
select * from pro2p2;

select  p1.room_type , max(p2.price)max_price
from pro2p1 p1 join pro2p2 p2 on p1.id = p2.id
group by p1.room_type;

#31

select avg(p2.reviews_per_month) as avg_reviews_per_month, p1.room_type from pro2p2 p2 join pro2p1 p1 on p1.id = p2.id group by room_type;

#32

select avg(p2.price), p1.room_type from pro2p2 p2 join pro2p1 p1 on p1.id = p2.id group by room_type;


#33

select  p1.room_type ,avg(p2.minimum_nights)average_nights 
from pro2p1 p1  inner join pro2p2 p2 on p1.id = p2.id
group by p1.room_type;

#34

select  p1.room_type ,avg(p2.price)average_price
from pro2p1 p1  inner join pro2p2 p2 on p1.id = p2.id
group by p1.room_type having average_price < 100;

#35
select * from pro2p1;

select  p1.neighbourhood_group , avg(p2.minimum_nights)avg_nights
from pro2p1 p1 join pro2p2 p2 on p1.id = p2.id
group by p1.neighbourhood_group having avg_nights>5;

#36

select *, p2.price from pro2p1 p1 join pro2p2 p2 on p1.id=p2.id where p2.id in (select id from pro2p2 where price>200);

#37

select *, p1.host_id from pro2p2 p2 left join pro2p1 p1 on p1.id=p2.id where p1.host_id=314941;

#38
select * from pro2p1;
select * from pro2p2;
select distinct p1.id, p1.host_id from pro2p1 p1, pro2p1 p2 where p1.host_id = p2.host_id and p1.id <> p2.id order by host_id;



#39

select * from pro2p1 where name like '%cozy%';

#40

select p2.price, p1.host_id, p1.neighbourhood_group from pro2p1 p1 join pro2p2 p2 on p1.id = p2.id where p1.neighbourhood_group in ('manhattan');

#41

select p2.price, p1.host_name, p1.neighbourhood from pro2p1 p1 join pro2p2 p2 on p1.id = p2.id where p1.neighbourhood in ('upper west side', 'williamsburg') and price> 100;

#42

select p2.price, p1.host_name, p1.neighbourhood from pro2p1 p1 join pro2p2 p2 on p1.id = p2.id where host_name ='elise' and neighbourhood = 'bedford-stuyvesant';

#43

select * from pro2p1;
select * from pro2p2;

select p1.host_name, p2.availability_365, p2.minimum_nights from pro2p1 p1 join pro2p2 p2 on p1.id = p2.id where p2.availability_365 > 100 and p2.minimum_nights > 100;


#44

select p1.id, p1.host_name, p2.number_of_reviews, p2.reviews_per_month from pro2p1 p1 join pro2p2 p2 on p1.id=p2.id where p2.number_of_reviews > 500 and p2.reviews_per_month > 5;

#45

select p1.neighbourhood_group, p2.number_of_reviews from pro2p1 p1 join pro2p2 p2 on p1.id=p2.id group by p1.neighbourhood_group order by number_of_reviews desc limit 1;

#46

select p1.host_name, sum(p2.price) as total_price 
from pro2p1 p1 join pro2p2 p2 
on p1.id=p2.id group by host_name order by total_price asc limit 1;

#47

select p1.host_name, sum(p2.price) as total_price 
from pro2p1 p1 join pro2p2 p2 
on p1.id=p2.id group by host_name order by total_price desc limit 1;

#48

select p1.host_name, p2.price from pro2p1 p1 join pro2p2 p2 on p1.id=p2.id where price in (select max(price) from pro2p2);

#49

select p1.neighbourhood_group, p2.price from pro2p1 p1 join pro2p2 p2 on p1.id=p2.id where p1.id in (select id from pro2p2 where price<100);

#50

select max(p2.price), avg(p2.availability_365), p1.room_type from pro2p1 p1 join pro2p2 p2 on p1.id=p2.id group by room_type order by max(p2.price);
