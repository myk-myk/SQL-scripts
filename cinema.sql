drop database cinema;
create database if not exists cinema;
use cinema;
create table cinema.cinema_house(
cinema_id int primary key auto_increment,
name_ varchar(50) not null, 
adress varchar(100) not null unique,
contact_phone varchar(13) not null unique,
work_time varchar(11) not null,
bar boolean
);
create table cinema.film(
film_id int primary key auto_increment,
name_ varchar(50) not null, 
category varchar(30),
age_limit tinyint,
watch_period_start date not null,
watch_period_end date not null,
film_language tinytext,
rate decimal(3,2)
);
create table cinema.client_(
client_id int primary key auto_increment,
name_ varchar(50) not null,
surname varchar(50) not null,
phone varchar(13) not null unique, 
adress varchar(100) not null,
email varchar(100) not null unique,
bonus float
);
create table cinema.meal(
product_id int primary key auto_increment,
name_ varchar(50) not null,
size varchar(3) not null,
cost float not null
);
create table cinema.session_(
session_id int(7) primary key auto_increment,
cinema_name int not null, 
film_name int not null, 
client_id int not null,
meal_id int not null,
time_ datetime not null,
hall tinyint(2) not null,
hall_type varchar(30) not null,
format_ varchar(3) not null,
cost float not null,
foreign key (cinema_name) references cinema_house(cinema_id),
foreign key (film_name) references film(film_id),
foreign key (client_id) references client_(client_id),
foreign key (meal_id) references meal(product_id)
);
insert into cinema.cinema_house(
cinema_id, name_, adress, contact_phone, work_time, bar)
values(
'1', 'Multiplex', 'Кульпарківська, 226a', '+380975376845', '09:00-01:00', '1'),
('2', 'Multiplex', 'Мазепи, 2a', '+380635376892', '10:00-02:00', '1'),
('3', 'Planeta Kino', 'Під дубом, 7б', '+380505681425', '09:30-00:30', '0'),
('4', 'Кінопалац', 'Коперника, 9', '+380800964721', '09:00-23:00', '0'),
('5', 'Кінопалац', 'Червоної Калини, 81', '+380800964173', '10:00-23:00', '1'),
('6', 'Львівський кіноцентр', 'Володимира Великого, 14а', '+380800564190', '11:00-23:00', '0'),
('7', 'Planeta Kino', 'Стрийська, 231', '+380800905612', '09:00-01:00', '1'),
('8', 'Львів', 'Уласа Самчука, 12', '+380976989072', '10:00-23:00', '1'),
('9', 'Rockfellow', 'Чайковського, 17', '+380800990765', '09:30-00:30', '0'),
('10', 'Кінотеатр ім. І. Миколайчука', 'Личаківська, 133', '+380508967321', '11:00-23:00', '1');
insert into cinema.film(
film_id, name_, category, age_limit, watch_period_start, watch_period_end, film_language, rate)
values(
'1', '007:Не час помирати', 'бойовик', '14', '2021-09-30', '2021-11-14', 'українська', '7.6'),
('2', 'Персонаж', 'комедія', '7', '2021-08-21', '2021-09-28', 'українська', '6.8'),
('3', 'Веном 2: Карнаж', 'фантастика', '12', '2021-10-08', '2021-11-23', 'українська', '5.9'),
('4', 'No time to die', 'бойовик', '14', '2021-09-27', '2021-10-27', 'англійська', '7.6'),
('5', 'Родина Адамсів 2', 'мультфільм', '0', '2021-10-17', '2021-11-16', 'українська', '5.3'),
('6', 'Вічні', 'фантастика', '12', '2021-11-16', '2021-12-15', 'українська', '7.3'),
('7', 'Дюна', 'пригоди', '12', '2021-09-28', '2021-11-03', 'українська', '8.3'),
('8', 'Superнянь 2', 'комедія', '16', '2017-05-24', '2017-06-12', 'українська', '6.4'),
('9', 'Deadpool', 'бойовик', '18', '2019-02-08', '2019-03-07', 'англійська', '8.0'),
('10', '50 відтінків чорного', 'комедія', '18', '2018-04-09', '2021-04-30', 'українська', '3.5');
insert into cinema.client_(
client_id, name_, surname, phone, adress, email, bonus)
values(
'1', 'Микола', 'Санніков', '+380975376845', 'Стрийська, 139', 'kolya2020@gmail.com', '113.5'),
('2', 'Андрій', 'Зубач', '+380635376892', 'Коперника, 26', 'zubach01@gmail.com', '15.0'),
('3', 'Юлія', 'Сафонова', '+380505681425', 'Опришківська, 1', 'yuliya17@gmail.com', '157.0'),
('4', 'Ігор', 'Балацький', '+380800964173', 'П. Куліша, 14', 'igorko79@gmail.com', '101.0'),
('5', 'Петро', 'Соломчак', '+380967845890', 'Природна, 4', 'petro7@gmail.com', '28.5'),
('6', 'Василь', 'Ігнатоля', '+380800960951', 'Сахарова, 36', 'vasya9@gmail.com', '2.0'),
('7', 'Марія', 'Федак', '+380505637835', 'Чупринки, 45', 'merik03@gmail.com', '79.0'),
('8', 'Богдан', 'Надеберний', '+380800909821', 'Пасічна, 79', 'bodya32@gmail.com', '0.0'),
('9', 'Соломія', 'Івасенко', '+38080675414', 'Наукова, 96', 'ivasenko@gmail.com', '321.0'),
('10', 'Анатолій', 'Кичук', '+380980865342', 'Городоцька, 156', 'tolik@gmail.com', '57.0');
insert into cinema.meal(
product_id, name_, size, cost)
values(
'1', 'Попкорн сирний', 'S', '39.0'),
('2', 'Кока-кола', 'L', '29.0'),
('3', 'Кукурудзяні чипси', 'M', '56.0'),
('4', 'Морозиво вишневе', 'XXL', '98.0'),
('5', 'Попкорн бекон', 'XL', '79.0'),
('6', 'Картопляні чипси', 'L', '80.0'),
('7', 'Морозиво шоколадне', 'M', '58.0'),
('8', 'Сік апельсиновий', 'S', '15.0'),
('9', 'Попкорн карамель', 'XXL', '129.0'),
('10', 'Вода', 'XL', '20.0');
insert into cinema.session_(
session_id, cinema_name, film_name, client_id, meal_id, time_, hall, hall_type, format_, cost)
values(
'1348754', '1', '1', '4', '2', '2021-10-28 19:40:00', '2', 'standart', '2D', '90.0'),
('1348755', '2', '3', '1', '5', '2021-11-02 22:50:00', '5', 'LUX', '3D', '150.0'),
('1348756', '3', '4', '3', '1', '2021-10-17 16:20:00', '1', 'cinetech+', '4DX', '220.0'),
('1348757', '4', '5', '2', '6', '2021-11-09 11:15:00', '3', 'standart', '3D', '75.0'),
('1348758', '5', '2', '8', '3', '2021-10-18 13:45:00', '6', 'LUX', '3D', '120.0'),
('1348759', '6', '8', '6', '8', '2021-09-23 10:35:00', '3', 'standart', '2D', '55.0'),
('1348760', '7', '10', '5', '10', '2021-10-16 00:15:00', '4', 'standart', '3D', '80.0'),
('1348761', '8', '7', '10', '4', '2021-10-02 01:10:00', '2', 'cinetech+', '3D', '170.0'),
('1348762', '9', '9', '7', '9', '2021-09-30 18:40:00', '1', 'LUX', '2D', '100.0'),
('1348763', '10', '6', '9', '7', '2021-11-09 11:15:00', '5', 'standart', '4DX', '185.0');
select * from cinema.cinema_house;
select * from cinema.film;
select * from cinema.client_;
select * from cinema.session_;
select * from cinema.meal;


select name_, category from film;
select distinct name_ from cinema_house;
select name_, size, cost from meal
where cost between 25 and 60;
select name_, cost from meal
where name_ like 'Попкорн%';
select name_, age_limit from film
where age_limit not in ('18', '16');
select name_, contact_phone from cinema_house
where contact_phone regexp '21$';
select name_, surname, phone from client_
order by name_;
select session_id, hall_type, cost from session_
order by hall_type, cost desc;
select name_, count(*) as language_ from film
group by film_language;
select name_, count(*) as cinema_ from cinema_house
group by name_
having cinema_ > 1;
select session_.session_id, film.name_ as film_name, cinema_house.name_ as cinema_name, client_.name_, client_.surname
from session_
join film on session_.film_name = film.film_id
join cinema_house on session_.cinema_name = cinema_house.cinema_id
join client_ on session_.client_id = client_.client_id;
select session_.session_id, film.name_ as film_name, cinema_house.name_ as cinema_name, client_.name_, client_.surname
from session_
left join film on session_.film_name = film.film_id
join cinema_house on session_.cinema_name = cinema_house.cinema_id
right join client_ on session_.client_id = client_.client_id;
select name_, rate,
case
  when rate < 5.5
    then 'Низький рейтинг'
  when rate < 7.0
    then 'Середній рейтинг'
  when rate > 7.0
    then 'Високий рейтинг'
end as popularity
from film
order by popularity;
select name_, surname, bonus,
case
  when bonus > 0.0 and bonus < 5.0
    then 'Бонуси закінчуються'
  when bonus >= 5.0 and bonus < 20.0
    then 'Мало бонусів'
  when bonus >= 20.0 and bonus < 50.0
    then 'Небагато бонусів'
  when bonus >= 50.0 and bonus < 75.0
    then 'Середньо бонусів'
  when bonus >= 75.0 and bonus < 100.0
    then 'Достатньо бонусів'
  when bonus >= 100.0 and bonus < 125.0
    then 'Чимало бонусів'
  when bonus >= 125.0 and bonus < 150.0
    then 'Багато бонусів'
  when bonus >= 150.0 and bonus < 200.0
    then 'Безліч бонусів'
  when bonus >= 200.0
    then 'Купа бонусів'
  else 'Бонусів немає'
end as bonus_status
from client_
order by bonus;
select name_, adress, contact_phone from cinema_house
union select surname, adress, phone from client_ limit 5, 10;
select name_, cost from meal where exists
(select bonus from client_ where meal.cost = bonus);
select name_, cost from meal where not exists
(select cost from session_ where meal.cost = cost);


call session_time (1348757, @d_t);
call film_age (9, @fc);
call film_age (15, @fc);
call film_age (20, @fc);
call cinema_adr ('Multiplex', @ca);
call cinema_adr ('Planeta Kino', @ca);

call lux_session ();
call xxl_meal_size ();

start transaction;
insert into meal values('11', 'Повітряна картопля', 'M', '65.0');
select * from meal where product_id = '11';
rollback;
select * from meal where product_id = '11';
insert into meal values('11', 'Повітряна картопля', 'M', '65.0');
commit;
select * from meal where product_id = '11';
start transaction;
update client_ set bonus = bonus + ((select cost from session_ where client_id = 3) / 10) where client_id = 3;
update client_ set bonus = bonus - (select cost from meal where product_id = (select meal_id from session_ where client_id = 9)) where client_id = 9;
select * from client_ where client_id = 3 or client_id = 9;
rollback;
select * from client_ where client_id = 3 or client_id = 9;
update client_ set bonus = bonus + ((select cost from session_ where client_id = 3) / 10) where client_id = 3;
update client_ set bonus = bonus - (select cost from meal where product_id = (select meal_id from session_ where client_id = 9)) where client_id = 9;
select * from client_ where client_id = 3 or client_id = 9;
commit;
select * from client_;
update client_ set bonus = bonus - 22 where client_id = 3;
update client_ set bonus = bonus + 58 where client_id = 9;

drop trigger total_purchase;
create trigger total_purchase before insert on cinema.session_
for each row 
set @tickets_cost = @tickets_cost + new.cost,
@tickets_amount = @tickets_amount + 1;
set @tickets_cost = 0;
set @tickets_amount = 0;
select @tickets_cost as 'Total sum', @tickets_amount as 'Total amount';
insert into cinema.session_(
session_id, cinema_name, film_name, client_id, meal_id, time_, hall, hall_type, format_, cost)
values(
'1348700', '1', '1', '4', '2', '2021-10-28 19:40:00', '2', 'standart', '2D', '90.0'),
('1348701', '2', '3', '1', '5', '2021-11-02 22:50:00', '5', 'LUX', '3D', '150.0'),
('1348702', '3', '4', '3', '1', '2021-10-17 16:20:00', '1', 'cinetech+', '4DX', '220.0'),
('1348703', '4', '5', '2', '6', '2021-11-09 11:15:00', '3', 'standart', '3D', '75.0'),
('1348704', '5', '2', '8', '3', '2021-10-18 13:45:00', '6', 'LUX', '3D', '120.0'),
('1348705', '6', '8', '6', '8', '2021-09-23 10:35:00', '3', 'standart', '2D', '55.0'),
('1348706', '7', '10', '5', '10', '2021-10-16 00:15:00', '4', 'standart', '3D', '80.0'),
('1348707', '8', '7', '10', '4', '2021-10-02 01:10:00', '2', 'cinetech+', '3D', '170.0'),
('1348708', '9', '9', '7', '9', '2021-09-30 18:40:00', '1', 'LUX', '2D', '100.0'),
('1348709', '10', '6', '9', '7', '2021-11-09 11:15:00', '5', 'standart', '4DX', '185.0');
delete from session_ where session_id >= '1348700' and session_id < 1348710;

drop trigger bonus_stats;
create trigger bonus_stats_cl_2 before update on cinema.client_
for each row
set @old_bonus = (select bonus from client_ where client_id = 2),
@bonus_reseave = @bonus_reseave + if(@old_bonus - new.bonus < 0, -(@old_bonus - new.bonus), 0),
@bonus_lost = @bonus_lost + if(@old_bonus - new.bonus > 0, @old_bonus - new.bonus, 0);
set @bonus_reseave = 0;
set @bonus_lost = 0;
update client_ set bonus = bonus + 34 where client_id = 2;
update client_ set bonus = bonus - 25 where client_id = 2;
select @bonus_reseave as 'Total received', @bonus_lost as 'Total lost';

alter table meal drop index meal_price;
alter table meal add index meal_price(cost);
explain select name_, size, cost from meal
where cost between 25 and 60;

alter table film drop index lim_rate;
alter table film add index lim_rate(age_limit, rate);
explain select * from film
where age_limit >= 14 and rate >= 7;

alter table session_ drop index cost_meal;
alter table session_ add index cost_meal(cost);
explain select name_, cost from meal where not exists
(select cost from session_ where meal.cost = cost);