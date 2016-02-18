-- Создание справочника пользователей
drop table if exists users;
create table users(
  id	         bigint,
  first_name       	varchar(256),
  second_name	varchar(256),
  patronymic	varchar(256),
  position		varchar(256),
  tel				varchar(256),
  email        varchar(256),
  address		varchar(256),
  birthday     date,
  state			varchar(256),
  comment		varchar(256),
  hash         char(50),
  paswd        char(50),
  login        char(50),
  start_date datetime default '2015-11-01',
  end_date   datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
);


select * from users;

insert into users(id,first_name,second_name,patronymic,position,tel,address,birthday,state,paswd,login) values(15011,'Максим','Чернов', 'Михайлович','Разработчик','+7(906)313-75-54','Саратовская обл., г.Ртищево, ул.Красная, д.22, кв.28','1990-08-30','Активный',md5(md5('12345')),'mchernov');
insert into users(id,first_name,second_name,patronymic,position,tel,state,paswd,login) values(15012,'Станислав','Лобанов', 'Дмитриевич','Руководитель разработки','+7(906)153-26-06','Активный',md5(md5('12345')),'slobanov');
insert into users(id,first_name,second_name,position,tel,state,paswd,login) values(15013,'Артур','Филатов','Генеральный директор','+7(937)259-93-08','Активный', md5(md5('12345')),'afilatov');
insert into users(id,first_name,second_name,patronymic,position,state,paswd,login) values(15014,'Валентина','Зякина', 'Михайловна','Бухгалтер','Активный', md5(md5('12345')),'vzyakina');
insert into users(id,first_name,second_name,position,tel,state,paswd,login) values(15015,'Александр','Храмов','Разработчик','+7(909)336-62-71','Активный', md5(md5('12345')),'ahramov');
insert into users(id,first_name,second_name,position,tel,state,paswd,login) values(15016,'Юлия','Великанова','Старший оператор','+7(905)032-30-89','Активный', md5(md5('12345')),'yvelikanova');
insert into users(id,first_name,second_name,position,tel,state,paswd,login) values(15017,'Елена','Овчинникова','Оператор','+7(927)120-47-23','Активный', md5(md5('12345')),'eovchinikova');
insert into users(id,first_name,second_name,position,state,paswd,login) values(15018,'Мария','Короткова','Менеджер по рекламе','Активный', md5(md5('12345')),'mkorotkova');
insert into users(id,first_name,second_name,position,state,paswd,login) values(15019,'Дмитрий','Подопригора','Курьер','Активный', md5(md5('12345')),'dpodoprigora');
insert into users(id,first_name,second_name,position,state,paswd,login) values(150110,'Дмитрий','Караваев','Сервис-инженер','Активный', md5(md5('12345')),'dkaravaev');

insert into users(id,first_name,second_name,patronymic,position,tel,state,paswd,login) values(150111,'Майоров','Роман', '','Техник','','Активный',md5(md5('12345')),'rmaiorov');
insert into users(id,first_name,second_name,patronymic,position,tel,state,paswd,login) values(150112,'Порчхидзе','Эдуард', '','Техник','','Активный',md5(md5('12345')),'aporchhidze');
insert into users(id,first_name,second_name,patronymic,position,tel,state,paswd,login) values(150113,'Баев','Максим', '','Техник','','Активный',md5(md5('12345')),'mbaev');
insert into users(id,first_name,second_name,patronymic,position,tel,state,paswd,login) values(150114,'Попов','Иван', 'Васильевич','Техник','','Активный',md5(md5('12345')),'ipopov');

select * from base_users

insert into dim_resource(id,name,search_name,type) values(15011,'Чернов Максим Михайлович','Чернов Максим Михайлович Разработчик Россия, Саратовская обл., г.Ртищево, ул.Железнодорожная, д.16., кв.56 +7(906)313-75-54',102);
insert into dim_resource(id,name,search_name,type) values(15012,'Лобанов Станислав Дмитриевич','Лобанов Станислав Дмитриевич Руководитель разработки +7(906)153-26-06  slobanov',102);
insert into dim_resource(id,name,search_name,type) values(15013,'Филатов Артур','Филатов Артур  Генеральный директор +7(937)259-93-08  afilatov',102);
insert into dim_resource(id,name,search_name,type) values(15014,'Зякина Валентина Михайловна','Зякина Валентина Михайловна Бухгалтер   vzyakina',102);
insert into dim_resource(id,name,search_name,type) values(15015,'Храмов Александр','Храмов Александр  Разработчик +7(909)336-62-71  ahramov',102);
insert into dim_resource(id,name,search_name,type) values(15016,'Великанова Юлия','Великанова Юлия  Старший оператор +7(905)032-30-89  yvelikanova',102);
insert into dim_resource(id,name,search_name,type) values(15017,'Овчинникова Елена','Овчинникова Елена  Оператор +7(927)120-47-23  eovchinikova',102);
insert into dim_resource(id,name,search_name,type) values(15018,'Короткова Мария','Короткова Мария  Менеджер по рекламе   mkorotkova',102);
insert into dim_resource(id,name,search_name,type) values(15019,'Подопригора Дмитрий','Подопригора Дмитрий  Курьер   dpodoprigora',102);
insert into dim_resource(id,name,search_name,type) values(150110,'Караваев Дмитрий','Караваев Дмитрий  Сервис-инженер   dkaravaev',102);

insert into dim_resource(id,name,search_name,type) values(150111,'Роман Майоров','Роман Майоров',102);
insert into dim_resource(id,name,search_name,type) values(150112,'Эдуард Порчхидзе','Эдуард Порчхидзе',102);
insert into dim_resource(id,name,search_name,type) values(150113,'Максим Баев','Максим Баев',102);
insert into dim_resource(id,name,search_name,type) values(150114,'Иван Попов','Иван Попов',102);
/*
select u.id, concat(IFNULL(u.second_name,''),' ',IFNULL(u.first_name,''),' ',IFNULL(u.patronymic,''),' ',IFNULL(u.position,''),' ',IFNULL(u.tel,''),' ',IFNULL(u.address,''),' ',IFNULL(u.login,''))
from users u;
*/


-- Создание справочника клиентов
drop table if exists clients;
create table clients(
  id	         bigint,
  first_name       	varchar(256),
  second_name	varchar(256),
  patronymic	varchar(256),
  comment		varchar(256),
  start_date datetime default '2015-11-01',
  end_date   datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
);

insert into clients(id,first_name,second_name,patronymic) values(15021,'Илья','Бобошко', 'Александрович');
insert into clients(id,first_name,second_name,patronymic) values(15022,'Валентин','Коткин', 'Николаевич');
insert into clients(id,first_name,second_name,patronymic) values(15023,'Елена','Ерохина', 'Владимировна');

insert into dim_resource(id,name,search_name,type) values(15021,'Бобошко Илья Александрович','Бобошко Илья Александрович',101);
insert into dim_resource(id,name,search_name,type) values(15022,'Коткин Валентин Николаевич','Коткин Валентин Николаевич',101);
insert into dim_resource(id,name,search_name,type) values(15023,'Ерохина Елена Владимировна','Ерохина Елена Владимировна',101);

-- Создание справочника заявок
/*
drop table if exists requests;
create table requests(
  id            bigint,
  creation_time timestamp default current_timestamp,
  client_id     bigint,
  user_id       bigint,
  tel           varchar(256),
  address       varchar(256),
  state         bigint default 12015,
  version_state bigint,
  result        long,
  poss_problem  varchar(256),
  dep_time      varchar(256),
  dep_date      date,
  -- model         varchar(256),
  cost          varchar(256),
  rep_cost      varchar(256),
  order_date    date,
  recept_date   date,
  comp_code     varchar(256),
  provider_id   long,
  buy_cost      varchar(256),
  sell_cost     varchar(256),
  dep_cost      varchar(256),
  comment       varchar(256),
  type          bigint,
  registrar     bigint,
  tech_brand    bigint,
  man_brand     bigint,
  part          bigint,
  get_cost      int,
  part_name     varchar(256),
  model    bigint,
  prepayment varchar(256),
  del_date date,
  state1 bigint default 12024,
  samp_period varchar(256),
  dep_executor bigint,
  samp_executor bigint,
  part_list varchar(256),
  payment_state bigint default 12034,
  service_state bigint default 12031,
  model_name varchar(256),
  start_date datetime default '2015-11-01',
  end_date   datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
);


insert into requests(id,creation_time,comment,type,client_id,user_id,tel,address,cost,dep_date,state,dep_time,version_state) values(15031,'12.10.2015', 'la-la-la',109,15021,15012,15091,15082, '10000','201510-12',1203,1208,15241);
insert into requests(id,creation_time,comment,type,client_id,user_id,tel,address,cost,dep_date,state,dep_time,version_state) values(15032,'12.08.2011', 'test1',1010,15022,15011,15092,15081, '10000','12.08.2010',1203,1208,15242);
insert into requests(id,creation_time,comment,type,client_id,user_id,tel,address,cost,dep_date,state,dep_time,version_state) values(15033,'12.08.2012', 'test2',1011,15023,15012,15093,15081, '10000','12.08.2010',1203,1208,15243);
insert into requests(id,creation_time,comment,type,client_id,user_id,tel,address,cost,dep_date,state,dep_time,version_state) values(15034,'12.08.2015', 'test3',1011,15023,15013,15094,15082, '10000','12.08.2010',1203,1208,15244);
insert into requests(id,creation_time,comment,type,client_id,user_id,tel,address,cost,dep_date,state,dep_time,version_state) values(15035,'12.08.2015', 'test4',1012,15023,15014,15095,15082, '10000','12.08.2010',1203,1208,15245);
insert into requests(id,creation_time,comment,type,client_id,user_id,tel,address,cost,dep_date,state,dep_time,version_state) values(15036,'12.10.2015', 'la-la-la',109,15021,15012,15091,15082, '10000','2015-10-12',1203,1208,15246);


delete from dim_resource where type in(109,1010,1011,1012);
insert into dim_resource(id,name,search_name,type) values(15031,'Заявка №15031','15031 Лобанов Станислав Дмитриевич Илья Бобошко Александрович +7(909)925-77-54 Железнодорожная 12-15',109);
insert into dim_resource(id,name,search_name,type) values(15032,'Заявка №15032','15032 Чернов Максим Михайлович Валентин Коткин Николаевич +7(906)313-75-54 Красная 16-54',1010);
insert into dim_resource(id,name,search_name,type) values(15033,'Заявка №15033','15033 Лобанов Станислав Дмитриевич Елена Ерохина Владимировна +7(913)160-49-42 Красная 16-54',1011);
insert into dim_resource(id,name,search_name,type) values(15034,'Заявка №15034','15034 Филатов Артур  Елена Ерохина Владимировна +7(911)568-73-44 Железнодорожная 12-15',1011);
insert into dim_resource(id,name,search_name,type) values(15035,'Заявка №15035','15035 Зякина Валентина Михайловна Елена Ерохина Владимировна +7(962)205-75-00 Железнодорожная 12-15',1012);
insert into dim_resource(id,name,search_name,type) values(15036,'Заявка №15031','15031 Лобанов Станислав Дмитриевич Илья Бобошко Александрович +7(909)925-77-54 Железнодорожная 12-15',109);


select * from dim_resource where type in(109,1010,1011);


select r.id, concat(r.id,' ',IFNULL(u.second_name,''),' ',IFNULL(u.first_name,''),' ',IFNULL(u.patronymic,''),' ',IFNULL(c.second_name,''),' ',IFNULL(c.first_name,''),' ',IFNULL(c.patronymic,''),' ',IFNULL(t.number,''),' ',IFNULL(a.value,''))
from requests r
  join users u on u.id = r.user_id
  join clients c on c.id = r.client_id
  join telephones t on t.id = r.tel
  join addresses a on a.id = r.address;
  
select * from requests
*/

insert into triplets (subj_id,prop_id,obj_id) values(15035,50221,15276);
insert into triplets (subj_id,prop_id,obj_id) values(15035,50221,15277);
insert into triplets (subj_id,prop_id,obj_id) values(15035,50221,15278);

insert into dim_resource(id,name,search_name,type)
select id,concat('Заявка №',id),id,type from requests where end_date='9999-01-01';

-- select * from dim_resource where type = 1010


select DATE_FORMAT(creation_time,'%Y-%m-%d %H:%i') from requests;
select * from requests;
-- Создание таблицы действий
drop table if exists actions;
create table actions(
  id bigint,
  user_id long,
  date datetime,
  action_desc varchar(256),
  object varchar(256),
  PRIMARY KEY(id)
);

insert into actions(id,user_id,date,action_desc,object) values(1,15011,'10.10.10.5','heh','Заявка');

-- Создание таблицы логинов
drop table if exists logins;
create table logins(
  id bigint,
  ip varchar(256),
  login varchar(256),
  ent_datetime  datetime,
  result_id varchar(256),
  comment varchar(256),
  PRIMARY KEY(id)
);

insert into logins(id,ip,login,ent_datetime,result_id,comment) values(1,'10.10.10.5','maxim','2015-08-14 10:10:00','Успешно','Heh');



insert into dim_resource(id,type) values(1415,14);


-- Создание таблицы адресов (страна, область, район, населенный пункт, улица, дом, корпус, квартира
drop table if exists addresses;
create table addresses(
  id         bigint,
  country	 varchar(256),
  region	    varchar(256),
  destrict	 varchar(256),
  town	    varchar(256),
  street	    varchar(256),
  home	    varchar(256),
  housing	 varchar(256),
  flat	    varchar(256),
  value      varchar(256),
  obj_id varchar(256),
  comment varchar(256),
  ind varchar(256),
  start_date datetime default '2015-11-01',
  end_date   datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
);


-- alter table addresses add column obj_id varchar(256);
-- alter table addresses add column comment varchar(256);

insert into addresses(id,value) values(15081,'Красная 16-54');
insert into addresses(id,value,country,region,destrict,town,street,home,housing,flat) values(15082,'Железнодорожная 12-15','Россия','Саратовская','','Ртищево','Железнодорожная','12','','15');

insert into dim_resource(id,name,type) values(15081,'Красная 16-54',1013);
insert into dim_resource(id,name,type) values(15082,'Железнодорожная 12-15',1013);
select * from addresses;
-- Создание таблицы телефонов 
drop table if exists telephones;
create table telephones(
  id         bigint,
  number     varchar(256),
  start_date datetime default '2015-11-01',
  end_date   datetime default '9999-01-01',
  creation_time datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
);
   
insert into telephones(id,number) values(15091,'+7(909)925-77-54');
insert into telephones(id,number) values(15092,'+7(906)313-75-54');
insert into telephones(id,number) values(15093,'+7(913)160-49-42');
insert into telephones(id,number) values(15094,'+7(911)568-73-44');
insert into telephones(id,number) values(15095,'+7(962)205-75-00');
insert into telephones(id,number) values(15096,'+7(918)382-27-91');
insert into telephones(id,number) values(15097,'+7(960)905-07-76');

insert into dim_resource(id,name,type) values(15091,'+7(909)925-77-54',1014);
insert into dim_resource(id,name,type) values(15092,'+7(906)313-75-54',1014);
insert into dim_resource(id,name,type) values(15093,'+7(913)160-49-42',1014);
insert into dim_resource(id,name,type) values(15094,'+7(911)568-73-44',1014);
insert into dim_resource(id,name,type) values(15095,'+7(962)205-75-00',1014);
insert into dim_resource(id,name,type) values(15096,'+7(918)382-27-91',1014);
insert into dim_resource(id,name,type) values(15097,'+7(960)905-07-76',1014);


-- Создание таблицы звонков 
drop table if exists calls;
create table calls(
  id         bigint,
  tel1       bigint,
  tel2       bigint,
  client_id        bigint,
  user_id        bigint,
  datetime   datetime,
  duration   int,
  call_type  bigint,
  PRIMARY KEY(id)
);

insert into calls(id,tel1,tel2,client_id,user_id,datetime,duration,call_type) values(15101,15091,15092,15021,15016,'2015-06-13 10:00',100,1);

insert into calls(id,tel1,tel2,client_id,user_id,datetime,duration,call_type) values(15102,15092,15097,15022,15016,'2015-06-12 10:00',200,1);
insert into calls(id,tel1,tel2,client_id,user_id,datetime,duration,call_type) values(15103,15093,15096,15023,15017,'2015-06-13 09:00',300,1);
insert into calls(id,tel1,tel2,client_id,user_id,datetime,duration,call_type) values(15104,15094,15095,15021,15016,'2015-10-13 10:00',1000,1);
insert into calls(id,tel1,tel2,client_id,user_id,datetime,duration,call_type) values(15105,15095,15094,15022,15017,'2013-06-13 10:00',100,1);
insert into calls(id,tel1,tel2,client_id,user_id,datetime,duration,call_type) values(15106,15096,15093,15023,15017,'2013-12-13 10:00',200,1);

insert into dim_resource(id,search_name,type) values(15101,'15101 +7(909)925-77-54 +7(906)313-75-54 Великанова Юлия  Илья Бобошко Александрович',104);
insert into dim_resource(id,search_name,type) values(15102,'15102 +7(906)313-75-54 +7(960)905-07-76 Великанова Юлия  Валентин Коткин Николаевич',104);
insert into dim_resource(id,search_name,type) values(15103,'15103 +7(913)160-49-42 +7(918)382-27-91 Овчинникова Елена  Елена Ерохина Владимировна',104);
insert into dim_resource(id,search_name,type) values(15104,'15104 +7(911)568-73-44 +7(962)205-75-00 Великанова Юлия  Илья Бобошко Александрович',104);
insert into dim_resource(id,search_name,type) values(15105,'15105 +7(962)205-75-00 +7(911)568-73-44 Овчинникова Елена  Валентин Коткин Николаевич',104);
insert into dim_resource(id,search_name,type) values(15106,'15106 +7(918)382-27-91 +7(913)160-49-42 Овчинникова Елена  Елена Ерохина Владимировна',104);

select c.id, u.id,cl.id,t1.id,t2.id,concat(c.id,' ', IFNULL(t1.number,''),' ', IFNULL(t2.number,''),' ', IFNULL(u.second_name,''),' ', IFNULL(u.first_name,''),' ',IFNULL(u.patronymic,''),' ', IFNULL(cl.second_name,''),' ', IFNULL(cl.first_name,''),' ', IFNULL(cl.patronymic,''))
from calls c 
  left join users u on u.id = c.user_id
  left join clients cl on cl.id  = c.client_id
  left join telephones t1 on t1.id = c.tel1
  left join telephones t2 on t2.id = c.tel2;

-- Создание таблицы поиска
drop table if exists find;
create table find(
  id         bigint,
  type       bigint,
  PRIMARY KEY(id)
);

-- Создание таблицы сессий
drop table if exists sessions;
create table sessions(
  id         bigint,
  session_id varchar(256),
  creation_time timestamp default CURRENT_TIMESTAMP,
  user_id    bigint,
  end_date   datetime default '9999-01-01',
  PRIMARY KEY(id)
);

-- Создание таблицы сессий
drop table if exists messages;
create table messages(
 id bigint,
 value varchar(1024),
 type bigint,
 creation_time timestamp default CURRENT_TIMESTAMP,
 life_time int,
 session bigint,
 start_date datetime default '2015-11-01',
 end_date   datetime default '9999-01-01',
 PRIMARY KEY(id,end_date)
);

-- Создание таблицы элементов макета
drop table if exists layout_elements;
create table layout_elements(
  id bigint,
  name varchar(256),
  pid bigint,
  elem_type varchar(256),
  width int,
  height int,
  position int,
  style varchar(256),
  PRIMARY KEY(id)
);

insert into layout_elements(id,pid,elem_type,width,height,position,style) values(15221,null,'xxx',100,100,1,'xxx');
insert into layout_elements(id,pid,elem_type,width,height,position,style) values(15222,15221,'xxx',100,100,1,'xxx');
insert into layout_elements(id,pid,elem_type,width,height,position,style) values(15223,15221,'xxx',100,100,1,'xxx');
insert into layout_elements(id,pid,elem_type,width,height,position,style) values(15224,15222,'xxx',100,100,1,'xxx');
insert into layout_elements(id,pid,elem_type,width,height,position,style) values(15225,15224,'xxx',100,100,1,'xxx');

insert into dim_resource(id,type) values(15221,1613);
insert into dim_resource(id,type) values(15222,1613);
insert into dim_resource(id,type) values(15223,1613);
insert into dim_resource(id,type) values(15224,1613);
insert into dim_resource(id,type) values(15225,1613);

-- Создание таблицы выполнений
drop table if exists executions;
create table executions(
  id bigint,
  user_id bigint,
  obj_id bigint,
  domain bigint,
  state1 bigint,
  state2 bigint,
  action_id bigint,
  pid bigint,
  start_time datetime,
  end_time datetime,
  end_date datetime default '9999-01-01',
  PRIMARY KEY(id)
);
-- alter table products add column add_cost int;
-- alter table kb1.products add column cnt int;
/*
-- Создание таблицы продуктов

drop table if exists products;
create table  products(
  id bigint,
  articul varchar(256),
  show_name varchar(256),
  manufacturer_id bigint,
  provider_id bigint,
  image bigint,
  buy_cost int,
  add_cost int,
  sell_cost int,
  cnt int,
  start_date datetime default '2015-10-01',
  end_date   datetime default '9999-01-01',
  state  bigint,
  PRIMARY KEY(id,end_date)
);
  
  
-- Создание таблицы категорий продуктов
drop table if exists product_categories;
create table  product_categories(
  id  bigint,
  show_name  varchar(256),
  pid  bigint,
  start_date datetime default '2015-10-01',
  end_date   datetime default '9999-01-01',
  state  bigint,
  PRIMARY KEY(id,end_date)
);


-- Создание таблицы накрутки
drop table if exists add_prices;
create table  add_prices(
  id  bigint primary key auto_increment,
  pruduct_category bigint,
  start_price int,
  end_price int,
  add_cost int
);

*/

-- Создание таблицы файлов
drop table if exists files;
create table  files(
  id  bigint,
  ph_name varchar(256),
  path varchar(256),
  type  bigint,
  description varchar(256),
  start_date datetime default '2015-10-01',
  end_date   datetime default '9999-01-01',
  state  bigint,
  PRIMARY KEY(id,end_date)
);

insert into files(id,ph_name,path,type,description) values(15271,'15271.jpg','files/images/models/schemas',1019,'Схема1');
insert into files(id,ph_name,path,type,description) values(15272,'15272.jpg','files/images/models/schemas',1019,'Схема2');
insert into files(id,ph_name,path,type,description) values(15273,'15273.jpg','files/images/models/schemas',1019,'Схема3');

insert into files(id,ph_name,path,type,description) values(15274,'15274.jpg','files/images/models/schemas',1019,'Фото1');
insert into files(id,ph_name,path,type,description) values(15275,'15275.jpg','files/images/models/schemas',1019,'Фото2');

insert into files(id,ph_name,path,type,description) values(15276,'15275.jpg','core/ajax/upload/1.jpg',1018,'Фото2');
insert into files(id,ph_name,path,type,description) values(15277,'15275.jpg','core/ajax/upload/2.jpg',1018,'Фото2');
insert into files(id,ph_name,path,type,description) values(15278,'15275.jpg','core/ajax/upload/3.jpg',1018,'Фото2');

insert into dim_resource(id,name,type) values(15276,'15275.jpg',1018);
insert into dim_resource(id,name,type) values(15277,'15275.jpg',1018);
insert into dim_resource(id,name,type) values(15278,'15275.jpg',1018);
select * from files;


-- Создание таблицы моделей
drop table if exists models;
create table models(
  id               bigint,
  manufacturer_id  bigint,
  tech_type        bigint,
  show_name             varchar(1024),
  type             bigint,
  pid              bigint,
  start_date datetime default '2015-10-01',
  end_date   datetime default '9999-01-01',
  search_name varchar(256),
  present_name varchar(256),
  image bigint,
  name varchar(256),
  PRIMARY KEY(id,end_date)
);

-- alter table models add column image bigint;

update models set tech_type = null;

insert into triplets(subj_id,prop_id,obj_id) values(15344,50166,15271);
insert into triplets(subj_id,prop_id,obj_id) values(15344,50166,15272);
insert into triplets(subj_id,prop_id,obj_id) values(15344,50166,15273);

insert into triplets(subj_id,prop_id,obj_id) values(15344,50167,15274);
insert into triplets(subj_id,prop_id,obj_id) values(15344,50167,15275);

select * from triplets where prop_id = 50166;
select * from models;

insert into models(id, show_name) values(15341,'Test Model');
insert into models(id, show_name) values(15342,'Название модели');
insert into models(id, show_name,manufacturer_id) values(15343,'IW 1476.0 W',152820);
insert into models(id, show_name,manufacturer_id) values(15344,'IGV 6609.2',152820);


select * from product_categories;

insert into dim_resource(id,type,name,search_name) values(15341,1027,'Test Model','Test Model');
insert into dim_resource(id,type,name,search_name) values(15342,1027,'Название модели','Название модели');
insert into dim_resource(id,type,name,search_name) values(15343,1027,'IW 1476.0 W','IW 1476.0 W');
insert into dim_resource(id,type,name,search_name) values(15344,1027,'IGV 6609.2','IGV 6609.2');
-- delete from dim_resource where type = 1027;

select * from models;
select * from manufacturers;
select * from dim_resource;

-- Создание таблицы продуктов
drop table if exists products;
create table  products(
  id               bigint,
  articul          varchar(256),
  show_name        varchar(256),
  manufacturer_id  bigint,
  provider_id      bigint,
  image            bigint,
  buy_cost         int,
  add_cost         int,
  sell_cost        int,
  cnt              int,
  part_group       bigint,
  store            bigint,
  position         int,
  del_flag         int,
  man_articul      varchar(256),
  schema_id        bigint,
  start_date       datetime default '2015-10-01',
  end_date         datetime default '9999-01-01',
  state            bigint,
  PRIMARY KEY(id,end_date)
);

insert into products(id,articul,show_name) values(15261,'Артикул продукта','Название продукта');
insert into products(id,articul,show_name) values(15262,'xxx','Test 1');
-- insert into dim_resource(id,type) values(1526,1016);

select * from products;

-- Создание таблицы премиальных продуктов
drop table if exists products_prem;
create table  products_prem(
  id               bigint,
  position int,
  deliv_flag int,
  man_articul varchar(1024),
  schema_id bigint
);

select * from products_prem;

-- insert into products_prem(id,position,deliv_flag);

-- Создание таблицы ремней приводных
drop table if exists products_belts;
create table  products_belts(
  id               bigint,
  length int,
  profile_type varchar(256),
  dent_count int,
  start_date       datetime default '2015-10-01',
  end_date         datetime default '9999-01-01',
  state            bigint,
  PRIMARY KEY(id,end_date)
);

insert into products_belts(id,dent_count) values(15261,12);
insert into products_belts(id) values(15262);

select * from products;


-- Создание таблицы производителей
drop table if exists manufacturers;
create table  manufacturers(
  id               bigint,
  show_name        varchar(256),
  prem_flag        int default 0,
  start_date       datetime default '2015-10-01',
  end_date         datetime default '9999-01-01',
  state            bigint,
  PRIMARY KEY(id,end_date)
); 



insert into manufacturers(id,show_name) values(15281,'Whirlpool');
insert into manufacturers(id,show_name) values(15282,'Lg');
insert into manufacturers(id,show_name) values(15283,'Samsung');
insert into manufacturers(id,show_name) values(15284,'Liebherr');
insert into manufacturers(id,show_name) values(15285,'Siltal');
insert into manufacturers(id,show_name) values(15286,'Vestfrost');
insert into manufacturers(id,show_name) values(15288,'Беко');
insert into manufacturers(id,show_name) values(15289,'Bosch');
insert into manufacturers(id,show_name) values(152810,'Uni');
insert into manufacturers(id,show_name) values(152811,'Candy');
insert into manufacturers(id,show_name) values(152812,'Electrolux');
insert into manufacturers(id,show_name) values(152813,'Gorenje');
insert into manufacturers(id,show_name) values(152814,'Indesit');
insert into manufacturers(id,show_name) values(152815,'Teka');
insert into manufacturers(id,show_name) values(152816,'Asko');
insert into manufacturers(id,show_name) values(152817,'Бисселл');

insert into manufacturers(id,show_name,prem_flag) values(152820,'Kuppersbusch',1);
insert into manufacturers(id,show_name,prem_flag) values(152821,'Ilve',1);
insert into manufacturers(id,show_name,prem_flag) values(152822,'Restart',1);
insert into manufacturers(id,show_name,prem_flag) values(152823,'Gaggenau',1);
insert into manufacturers(id,show_name,prem_flag) values(152824,'Gutman',1);

insert into dim_resource(id,name,type,search_name)
select id,show_name,1020,show_name from manufacturers;

select * from dim_resource;

-- delete from dim_resource where type = 1020;

select * from manufacturers;

-- Создание таблицы типов техники
drop table if exists tech_types;
create table  tech_types(
  id bigint,
  show_name varchar(256),
  start_date       datetime default '2015-10-01',
  end_date         datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
);

insert into tech_types(id,show_name) values (15401,'Водонагреватель');
insert into tech_types(id,show_name) values (15402,'Воздухоочиститель');
insert into tech_types(id,show_name) values (15403,'Плита кухонная');
insert into tech_types(id,show_name) values (15404,'СВЧ-печь');
insert into tech_types(id,show_name) values (15405,'Пылесос');
insert into tech_types(id,show_name) values (15406,'Стиральная  машина');
insert into tech_types(id,show_name) values (15407,'Посудомоечная машина');
insert into tech_types(id,show_name) values (15408,'Холодильник');
insert into tech_types(id,show_name) values (15409,'Кондиционер');

insert into dim_resource(id,name,type,search_name)
select id,show_name,1031,show_name from tech_types;

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

-- Создание таблицы записок
drop table if exists op_notes;
create table  op_notes(
  id  bigint,
  value varchar(1024),
  sender bigint,
  creation_time timestamp default current_timestamp,
  ex_req_flag int,
  ex_status int,
  performer_id bigint,
  ex_date datetime,
  start_date datetime default '2015-10-01',
  end_date   datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
);

select * from op_notes;

insert into op_notes(id,value,sender,creation_time,ex_req_flag,ex_status,performer_id,ex_date) values (15321,'Записка 1',15011,'2016-02-17 13:42',0,0,null,null);
insert into op_notes(id,value,sender,creation_time,ex_req_flag,ex_status,performer_id,ex_date) values (15322,'Записка 2',15011,'2016-02-16 13:43',1,0,null,null);
insert into op_notes(id,value,sender,creation_time,ex_req_flag,ex_status,performer_id,ex_date) values (15323,'Записка 3',15011,'2016-02-16 13:44',1,0,null,null);
insert into op_notes(id,value,sender,creation_time,ex_req_flag,ex_status,performer_id,ex_date) values (15324,'Записка 4',15011,'2016-02-16 13:40',1,0,null,null);

insert into op_notes(id,value,sender,creation_time,ex_req_flag,ex_status,performer_id,ex_date) values (15325,'Записка 5',15012,'2016-02-16 13:45',1,2,15015,'2015-12-10 13:55');
insert into op_notes(id,value,sender,creation_time,ex_req_flag,ex_status,performer_id,ex_date) values (15326,'Записка 6',15013,'2016-02-16 13:49',1,1,15014,'2015-12-10 13:50');


insert into dim_resource(id,type) values(15324,1026);
  
-- 
select * from actionFilters;
  
select * from manufacturers;

select * from dim_resource where type = 1016;
-- 
select * from products;
select * from triplets where prop_id = 50165;
select * from requests; 
select * from triplets;
select * from files;
-- delete from products;

-- update triplets set end_date = '' where subj_id = 15031 and prop_id = 5028 and obj_id=15031 and end_date = '9999-01-01';
select * from entities;
select * from executions;
select * from dim_resource;
select * from telephones;

select l1.id '5048',l2.obj_id '50166',l3.obj_id '50167' from models l1 left join triplets l2 on l2.subj_id=l1.id and l2.prop_id=50166 and l2.end_date='9999-01-01' left join triplets l3 on l3.subj_id=l1.id and l3.prop_id=50167 and l3.end_date='9999-01-01' where l1.end_date = '9999-01-01'
;
/*
update products p 
  join buffer_products bp on bp.articul = p.articul
set p.provider_id = 15161;
*/
insert into dim_resource(id, name,type, start_date,search_name)
select id, show_name,1016, '2015-10-01 00:00:00',show_name from products;
/*
delete from products;
insert into products(id,articul,show_name,manufacturer_id,provider_id,image,buy_cost,sell_cost,start_date,end_date,state,add_cost,cnt)
select id,articul,show_name,manufacturer_id,provider_id,image,buy_cost,sell_cost,start_date,end_date,state,add_cost,cnt from products2;

update products p set p.manufacturer_id = 152820
where id > 15269988 ;
update 
-- select * from
products p 
  join triplets2 t on p.id = t.subj_id
  -- join product_categories c on c.id = t.obj_id
  join triplets3 t2 on t2.subj_id = t.obj_id and t2.prop_id = 5061 
  join product_categories c on c.id = t2.obj_id
  -- join product_categories c2 on c2.id = c.pid
set p.part_group = t2.obj_id;
*/
select * from products;
select * from product_categories;


select * from requests where id in (151340,151311);
select * from telephones;
-- update dim_resource set search_name = name;
select * from dim_resource;

select * from sColumns;


select * from users;
/*
update requests set end_date = 
'2015-11-02 00:00:00'
where id < 151340 and end_date = '9999-01-01';
*/