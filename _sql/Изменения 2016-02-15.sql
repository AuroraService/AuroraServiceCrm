update dim_resource set end_date = '2016-02-15' where id = 12018;
update dim_resource set end_date = '2016-02-15' where id = 12019;

delete from triplets where prop_id = 1515 and obj_id = 1195;

alter table addresses add column ind varchar(256);

alter table requests add column payment_state bigint default 12034;
alter table requests add column service_state bigint default 12031;
alter table requests add column model_name varchar(256);
alter table requests add column ext_id int;


alter table requests drop column dep_time;
alter table requests add column dep_time varchar(256);

alter table addresses add column ext_id int;

alter table telephones add column ext_id int;

alter table files add column ext_id int;

insert into users(id,first_name,second_name,patronymic,position,tel,state,paswd,login) values(150111,'Майоров','Роман', '','Техник','','Активный',md5(md5('12345')),'rmaiorov');
insert into users(id,first_name,second_name,patronymic,position,tel,state,paswd,login) values(150112,'Порчхидзе','Эдуард', '','Техник','','Активный',md5(md5('12345')),'aporchhidze');
insert into users(id,first_name,second_name,patronymic,position,tel,state,paswd,login) values(150113,'Баев','Максим', '','Техник','','Активный',md5(md5('12345')),'mbaev');
insert into users(id,first_name,second_name,patronymic,position,tel,state,paswd,login) values(150114,'Попов','Иван', 'Васильевич','Техник','','Активный',md5(md5('12345')),'ipopov');

insert into dim_resource(id,name,search_name,type) values(150111,'Роман Майоров','Роман Майоров',102);
insert into dim_resource(id,name,search_name,type) values(150112,'Эдуард Порчхидзе','Эдуард Порчхидзе',102);
insert into dim_resource(id,name,search_name,type) values(150113,'Максим Баев','Максим Баев',102);
insert into dim_resource(id,name,search_name,type) values(150114,'Иван Попов','Иван Попов',102);

select  from requests;

-- Перенос заявок
select @id:=(select counter + 10 from entities where id = 109);
insert into requests(id,creation_time,dep_time, dep_date, ext_id, model_name, poss_problem, comment, cost,type,user_id)
select concat('1512',@id:=@id+1) id, dateAdd creation_time,timeext dep_time, dateext dep_date, id ext_id, model model_name, hint poss_problem, comment, price cost, 109 type, worker user_id
from base_items where type = 0;

update entities set counter = (@id+10) where id = 109;

insert into dim_resource(id,type)
select id,type from requests where ext_id is not null;

-- Перенос адресов
select @id:=(select counter + 10 from entities where id = 1013);

insert into addresses(id,value, ext_id)
select concat('1508',@id:=@id+1) id, contacts value, id ext_id 
from base_items where type = 0;

update entities set counter = (@id+10) where id = 1013;

insert into dim_resource(id,type,name,search_name)
select id,1013,value,value
from addresses where ext_id is not null;

-- Перенос телефонов
select @id:=(select counter + 10 from entities where id = 1014);

insert into telephones(id,number,ext_id)
select concat('1509',@id:=@id+1) id, phone number, id ext_id 
from base_items where type = 0;

update entities set counter = (@id+10) where id = 1014;

insert into dim_resource(id,type,name,search_name)
select id,1014,number,number
from telephones where ext_id is not null;

-- Перенос вложений
select @id:=(select counter + 10 from entities where id = 1018);

insert into files(id,description,ext_id,path)
select concat('1527',@id:=@id+1) id, text description,item ext_id, concat('core/ajax/upload/',image) path
from base_comments where image != '';

update entities set counter = (@id+10) where id = 1018;

insert into dim_resource(id,type)
select id,1018 from files where ext_id is not null;

select * from files;

-- Проставление исполнителей
update requests set user_id = 15012 where user_id = 14;
update requests set user_id = 15019 where user_id = 23;
update requests set user_id = 150110 where user_id = 21;

update requests set user_id = 150111 where user_id = 36;
update requests set user_id = 150111 where user_id = 28;
update requests set user_id = 150112 where user_id = 29;
update requests set user_id = 150113 where user_id = 25;
update requests set user_id = 150114 where user_id = 19;
update requests set user_id = 15017 where user_id = 32;

-- Проставление вложений
insert into triplets(subj_id,prop_id,obj_id,is_resource)
select r.id, 50221,f.id,1 from files f
  join requests r on f.ext_id = r.ext_id;
  
-- Проставление телефонов
update requests r
  join telephones t on t.ext_id = r.ext_id
set r.tel = t.id;

-- Проставление адресов
update requests r
  join addresses a on a.ext_id = r.ext_id
set r.address = a.id;

-- Проставление имени поиска для заявок
update dim_resource d 
  join  requests r on r.id = d.id and r.ext_id is not null
  left join addresses a on a.ext_id = r.ext_id
  left join telephones t on t.ext_id = r.ext_id
set d.search_name = concat(r.id,' ',a.value,' ',t.number);

select * from telephones;
select * from dim_resource;

-- Создание таблицы комментариев
drop table if exists comments;
create table  comments(
  id bigint,
  creation_time timestamp default current_timestamp,
  creator bigint,
  value varchar(1024),
  start_date       datetime default '2015-10-01',
  end_date         datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
);

insert into comments(id,value) value(15421,'Тестовый комментарий');

insert into dim_resource(id,type) values(15421,1032); 

-------------------------------------------------------------
select * from triplets where prop_id = 50221;

14 стас 15012
23 подопригора 15019
21 димочка караваев 150110
36 майоров 150111
28 майоров 150111
29 порчхидзе 150112
25 баев  150113
19 попов иван 150114

select * from base_users;
select * from base_items;
select * from base_comments;

select * from dim_resource where id = 15121904
