-- Создание справочника ресурсов
drop table if exists dim_resource;
create table dim_resource(
  id	bigint,
  name       	varchar(256),
  type       	bigint,
  PRIMARY KEY(id)
);
 
select * from dim_resource;

-- Классы
insert into dim_resource(id,name,type) values(101,'Клиент',10);
insert into dim_resource(id,name,type) values(102,'Сотрудник',10);
insert into dim_resource(id,name,type) values(103,'Заявка',10);
insert into dim_resource(id,name,type) values(104,'Звонок',10);
insert into dim_resource(id,name,type) values(105,'Роль',10);
insert into dim_resource(id,name,type) values(106,'Действие',10);
insert into dim_resource(id,name,type) values(107,'Логин',10);
insert into dim_resource(id,name,type) values(108,'Поставщик',10);

insert into dim_resource(id,name,type) values(109,'Заявка на сервис',10);
insert into dim_resource(id,name,type) values(1010,'Заявка на заказ запчасти',10);
insert into dim_resource(id,name,type) values(1011,'Заявка на доставку',10);
insert into dim_resource(id,name,type) values(1012,'Заявка на изъятие техники',10);

insert into dim_resource(id,name,type) values(1013,'Адрес',10);
insert into dim_resource(id,name,type) values(1014,'Телефон',10);





-- Свойства
insert into dim_resource(id,name,type) values(501,'Название',50);
insert into dim_resource(id,name,type) values(502,'Часть',50);
insert into dim_resource(id,name,type) values(503,'Местоположение',50);
insert into dim_resource(id,name,type) values(504,'Позиция',50);
insert into dim_resource(id,name,type) values(505,'Атрибут',50);
insert into dim_resource(id,name,type) values(506,'Псевдоним',50);
insert into dim_resource(id,name,type) values(507,'Представление',50);
insert into dim_resource(id,name,type) values(508,'Фамилия',50);
insert into dim_resource(id,name,type) values(509,'Имя',50);
insert into dim_resource(id,name,type) values(5010,'Отчество',50);
insert into dim_resource(id,name,type) values(5016,'Должность',50);
insert into dim_resource(id,name,type) values(5017,'Телефон',50);
insert into dim_resource(id,name,type) values(5018,'Адрес',50);
insert into dim_resource(id,name,type) values(5019,'День рождения',50);
insert into dim_resource(id,name,type) values(5020,'Состояние',50);
insert into dim_resource(id,name,type) values(5021,'Комментарий',50);
-- Свойства для заявок
insert into dim_resource(id,name,type) values(5022,'Дата создания',50);
insert into dim_resource(id,name,type) values(5014,'Исполнитель',50);
insert into dim_resource(id,name,type) values(5024,'Клиент',50);
insert into dim_resource(id,name,type) values(5025,'Телефон',50);
insert into dim_resource(id,name,type) values(5026,'Адрес',50);
insert into dim_resource(id,name,type) values(5027,'Состояние',50);
insert into dim_resource(id,name,type) values(5028,'Результат',50);
insert into dim_resource(id,name,type) values(5029,'Возможные проблемы',50);
insert into dim_resource(id,name,type) values(5030,'Время выезда',50);
insert into dim_resource(id,name,type) values(5031,'Дата выезда',50);
insert into dim_resource(id,name,type) values(5032,'Модель',50);
insert into dim_resource(id,name,type) values(5033,'Стоимость',50);
insert into dim_resource(id,name,type) values(5034,'Стоимость ремонта',50);
insert into dim_resource(id,name,type) values(5035,'Дата заказа',50);
insert into dim_resource(id,name,type) values(5036,'Дата прихода',50);
insert into dim_resource(id,name,type) values(5037,'Код запчасти',50);
insert into dim_resource(id,name,type) values(5038,'Поставщик',50);
insert into dim_resource(id,name,type) values(5039,'Цена покупки',50);
insert into dim_resource(id,name,type) values(5040,'Цена продажи',50);
insert into dim_resource(id,name,type) values(5041,'Цена доставки',50);
-- Свойства для Логинов
insert into dim_resource(id,name,type) values(5042,'Дата и время  входа',50);
insert into dim_resource(id,name,type) values(5043,'Логин',50);
insert into dim_resource(id,name,type) values(5044,'IP',50);
-- Свойства для Действий
insert into dim_resource(id,name,type) values(5045,'Дата и время действия',50);
insert into dim_resource(id,name,type) values(5046,'Описание действия',50);
insert into dim_resource(id,name,type) values(5047,'Объект',50);

insert into dim_resource(id,name,type) values(5048,'Идентификатор',50);

insert into dim_resource(id,name,type) values(5049,'Является обратным',50);
insert into dim_resource(id,name,type) values(5050,'Предистория',50);


-- Классы элементов CRM Элементы сайта
insert into dim_resource(id,name,type) values(111,'Форма',111);
insert into dim_resource(id,name,type) values(112,'Столбец',112);
insert into dim_resource(id,name,type) values(115,'Форма просмотра единичной сущности',115);
insert into dim_resource(id,name,type) values(118,'Редирект',118);
insert into dim_resource(id,name,type) values(119,'Выпадающий список',119);
insert into dim_resource(id,name,type) values(120,'Элемент выпадающего списка',120);
-- Списки
insert into dim_resource(id,name,type) values(1191,'Состояние',119);
insert into dim_resource(id,name,type) values(1192,'Время выезда',119);

insert into dim_resource(id,name,type) values(1201,'Выполняется',120);
insert into dim_resource(id,name,type) values(1202,'Выполнено',120);
insert into dim_resource(id,name,type) values(1203,'Отказ(Клиент)',120);
insert into dim_resource(id,name,type) values(1204,'Отказ(Наша сторона)',120);

insert into dim_resource(id,name,type) values(1205,'9-12',120);
insert into dim_resource(id,name,type) values(1206,'12-15',120);
insert into dim_resource(id,name,type) values(1207,'15-18',120);
insert into dim_resource(id,name,type) values(1208,'В течении дня',120);

-- Элементы CRM
-- Формы просмотра
insert into dim_resource(id,name,type) values(1111,'Форма просмотра сотрудников',111);
insert into dim_resource(id,name,type) values(1112,'Форма просмотра клиентов',111);
insert into dim_resource(id,name,type) values(1113,'Форма просмотра сервисных заявок',111);
insert into dim_resource(id,name,type) values(1114,'Форма просмотра заявок на заказ запчасти',111);
insert into dim_resource(id,name,type) values(1115,'Форма просмотра заявок на доставку',111);
insert into dim_resource(id,name,type) values(1116,'Форма просмотра заявок на изъятие техники',111);
insert into dim_resource(id,name,type) values(1117,'Форма просмотра истории действий',111);
insert into dim_resource(id,name,type) values(1118,'Форма просмотра истории логинов',111);
insert into dim_resource(id,name,type) values(1119,'Форма просмотра адресов',111);
insert into dim_resource(id,name,type) values(11110,'Форма просмотра звонков',111);
-- Формы просмотра единичной сущности
insert into dim_resource(id,name,type) values(1151,'Форма просмотра сотрудника',115);
insert into dim_resource(id,name,type) values(1152,'Форма просмотра клиента',115);
insert into dim_resource(id,name,type) values(1153,'Форма просмотра сервисной заявки',115);
insert into dim_resource(id,name,type) values(1154,'Форма просмотра заявки на заказ запчасти',115);
insert into dim_resource(id,name,type) values(1155,'Форма просмотра заявки на доставку',115);
insert into dim_resource(id,name,type) values(1156,'Форма просмотра заявки на изъятие техники',115);
insert into dim_resource(id,name,type) values(1157,'Форма просмотра адреса',115);
insert into dim_resource(id,name,type) values(1158,'Форма просмотра звонка',115);
insert into dim_resource(id,name,type) values(1159,'Форма просмотра телефона',115);
-- 1119,11110,1157,1158 / 1013,104
-- Создание таблицы высказываний
drop table if exists triplets;
create table triplets(
  subj_id	bigint,
  prop_id   bigint,
  obj_id	   bigint,
  value	varchar(256),
  cr_time datetime,
  PRIMARY KEY(subj_id,prop_id,obj_id)
);

select * from triplets;


-- Иерархия классов заявок
insert into triplets(subj_id, prop_id,obj_id) values(109,5061,103);
insert into triplets(subj_id, prop_id,obj_id) values(1010,5061,103);
insert into triplets(subj_id, prop_id,obj_id) values(1011,5061,103);
insert into triplets(subj_id, prop_id,obj_id) values(1012,5061,103);
-- Отношения между свойствами
insert into triplets(subj_id, prop_id,obj_id) values(5050,5049,5028);
-- Выпадающие списки
insert into triplets(subj_id, prop_id,obj_id) values(1191,1515,119);
-- Состояние
insert into triplets(subj_id, prop_id,obj_id) values(1201,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(1202,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(1203,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(1204,1515,120);

insert into triplets(subj_id, prop_id,obj_id) values(1201,502,1191);
insert into triplets(subj_id, prop_id,obj_id) values(1202,502,1191);
insert into triplets(subj_id, prop_id,obj_id) values(1203,502,1191);
insert into triplets(subj_id, prop_id,obj_id) values(1204,502,1191);
-- Время доставки
insert into triplets(subj_id, prop_id,obj_id) values(1205,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(1206,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(1207,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(1208,1515,120);

insert into triplets(subj_id, prop_id,obj_id) values(1205,502,1192);
insert into triplets(subj_id, prop_id,obj_id) values(1206,502,1192);
insert into triplets(subj_id, prop_id,obj_id) values(1207,502,1192);
insert into triplets(subj_id, prop_id,obj_id) values(1208,502,1192);

-- 1119,11110,1157,1158 / 1013,104

-- Задание представлдения для формы просмотра
insert into triplets(subj_id, prop_id,obj_id) values(1111,507,102);
insert into triplets(subj_id, prop_id,obj_id) values(1112,507,101);
insert into triplets(subj_id, prop_id,obj_id) values(1113,507,109);
insert into triplets(subj_id, prop_id,obj_id) values(1114,507,1010);
insert into triplets(subj_id, prop_id,obj_id) values(1115,507,1011);
insert into triplets(subj_id, prop_id,obj_id) values(1116,507,1012);
insert into triplets(subj_id, prop_id,obj_id) values(1117,507,106);
insert into triplets(subj_id, prop_id,obj_id) values(1118,507,107);
insert into triplets(subj_id, prop_id,obj_id) values(1119,507,1013);
insert into triplets(subj_id, prop_id,obj_id) values(11110,507,104);

insert into triplets(subj_id, prop_id,obj_id) values(1151,507,102);
insert into triplets(subj_id, prop_id,obj_id) values(1152,507,101);
insert into triplets(subj_id, prop_id,obj_id) values(1153,507,109);
insert into triplets(subj_id, prop_id,obj_id) values(1154,507,1010);
insert into triplets(subj_id, prop_id,obj_id) values(1155,507,1011);
insert into triplets(subj_id, prop_id,obj_id) values(1156,507,1012);
insert into triplets(subj_id, prop_id,obj_id) values(1157,507,1013);
insert into triplets(subj_id, prop_id,obj_id) values(1158,507,104);
insert into triplets(subj_id, prop_id,obj_id) values(1159,507,1014);


-- Привязка элемента интерфейса к классу
insert into triplets(subj_id, prop_id,obj_id) values(1111,5015,111);
insert into triplets(subj_id, prop_id,obj_id) values(1112,5015,111);
insert into triplets(subj_id, prop_id,obj_id) values(1113,5015,111);
insert into triplets(subj_id, prop_id,obj_id) values(1114,5015,111);
insert into triplets(subj_id, prop_id,obj_id) values(1115,5015,111);
insert into triplets(subj_id, prop_id,obj_id) values(1116,5015,111);
insert into triplets(subj_id, prop_id,obj_id) values(1117,5015,111);
insert into triplets(subj_id, prop_id,obj_id) values(1119,5015,111);
insert into triplets(subj_id, prop_id,obj_id) values(11110,5015,111);

insert into triplets(subj_id, prop_id,obj_id) values(1151,5015,115);
insert into triplets(subj_id, prop_id,obj_id) values(1152,5015,115);
insert into triplets(subj_id, prop_id,obj_id) values(1153,5015,115);
insert into triplets(subj_id, prop_id,obj_id) values(1154,5015,115);
insert into triplets(subj_id, prop_id,obj_id) values(1155,5015,115);
insert into triplets(subj_id, prop_id,obj_id) values(1156,5015,115);
insert into triplets(subj_id, prop_id,obj_id) values(1157,5015,115);
insert into triplets(subj_id, prop_id,obj_id) values(1158,5015,115);
insert into triplets(subj_id, prop_id,obj_id) values(1159,5015,115);





-- Создание справочника пользователей
drop table if exists users;
create table users(
  id	         bigint,
  first_name       	varchar(256),
  second_name	varchar(256),
  patronymic	varchar(256),
  position		varchar(256),
  tel				varchar(256),
  address		varchar(256),
  birthday     date,
  state			varchar(256),
  comment		varchar(256),
  hash         char(50),
  paswd        char(50),
  login        char(50),
  PRIMARY KEY(id)
);


select * from users;

insert into users(id,first_name,second_name,patronymic,hash,paswd,login) values(15011,'Максим','Чернов', 'Михайлович', '','1f32aa4c9a1d2ea010adcf2348166a04','maksim');
insert into users(id,first_name,second_name,patronymic,hash,paswd,login) values(15012,'Станислав','Лобанов', 'Дмитриевич', 'gfdghipo3yf732nf','2d6d67a62e46d53cbbac80095548b812','kaen');
insert into users(id,first_name,second_name,patronymic,hash,paswd) values(15013,'Иван','Иванов', '','gfdghipo3yf732nf','2d6d67a62e46d53cbbac80095548b812');

insert into dim_resource(id,name,type) values(15011,'Максим Чернов',102);
insert into dim_resource(id,name,type) values(15012,'Станислав Лобанов',102);
insert into dim_resource(id,name,type) values(15013,'Иван Иванов',102);

-- Права
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,231);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,232);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2326);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2315);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2321);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,233);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,234);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2328);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2329);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2330);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2331);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,235);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,236);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2325);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2332);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2324);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,237);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,238);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2323);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2322);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2333);


insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,231);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,232);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2326);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2315);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2321);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,233);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,234);


-- Создание справочника клиентов
drop table if exists clients;
create table clients(
  id	         bigint,
  first_name       	varchar(256),
  second_name	varchar(256),
  patronymic	varchar(256),
  comment		varchar(256),
  PRIMARY KEY(id)
);

insert into clients(id,first_name,second_name,patronymic) values(15021,'Борис','Борисов', 'Поздняев');
insert into clients(id,first_name,second_name,patronymic) values(15022,'Иван','Сусанин', 'Хз');
insert into clients(id,first_name,second_name,patronymic) values(15023,'Иван','Иванов', 'Хз2');

insert into dim_resource(id,name,type) values(15021,'Борис Борисов',101);
insert into dim_resource(id,name,type) values(15022,'Иван Сусанин',101);
insert into dim_resource(id,name,type) values(15023,'Иван Иванов',101);

-- Создание справочника заявок
drop table if exists requests;
create table requests(
  id            bigint,
  creation_time datetime,
  client_id     bigint,
  user_id       bigint,
  tel           varchar(256),
  address       varchar(256),
  state         varchar(256),
  result        long,
  poss_problem  varchar(256),
  dep_time      varchar(256),
  dep_date      date,
  model         varchar(256),
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
  type           bigint,
  PRIMARY KEY(id)
);

insert into requests(id,creation_time,comment,type,client_id,user_id,tel,address,cost,dep_date,state,dep_time) values(15031,'12.08.2010', 'la-la-la',109,15021,15012,15091,15082, '10000','12.08.2010',1203,1208);
insert into requests(id,creation_time,comment,type,client_id,user_id) values(15032,'12.08.2011', 'test1',1010,15022,15011);
insert into requests(id,creation_time,comment,type,client_id,user_id) values(15033,'12.08.2012', 'test2',1011,15023,15011);
insert into requests(id,creation_time,comment,type,client_id,user_id) values(15034,'12.08.2015', 'test3',1011,15023,15011);
insert into requests(id,creation_time,comment,type,client_id,user_id) values(15035,'12.08.2015', 'test4',1012,15023,15011);

insert into dim_resource(id,name,type) values(15031,'Заявка 1',109);
insert into dim_resource(id,name,type) values(15032,'Заявка 2',1010);
insert into dim_resource(id,name,type) values(15033,'Заявка 3',1011);
insert into dim_resource(id,name,type) values(15034,'Заявка 4',1011);
insert into dim_resource(id,name,type) values(15035,'Заявка 5',1012);

-- Связь заявок 
insert into triplets(subj_id, prop_id,obj_id) values(15031,5028,15032);
insert into triplets(subj_id, prop_id,obj_id) values(15031,5028,15033);
insert into triplets(subj_id, prop_id,obj_id) values(15034,5028,15031);

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

-- Создание таблицы столбцов
drop table if exists sColumns;
create table sColumns(
  id        bigint NOT NULL,
  name      varchar(256),  -- Название
  position  int,           -- Позиция
  property  bigint,          -- Идентификатор свойства
  alias     varchar(256),  -- Псевдоним свойства
  domain    bigint,          -- Класс представителей значения свойстваkb1
  type      int,             -- Тип значения (0-ресурс, 1-текст, 2-число, 3-дата, 4-элемент списка)
  template  varchar(256),    -- Шаблон отображения значения
  editable  int default 1, -- Редактируемость (0/1)
  location  varchar(256),  -- Расположение представителей класса значения свойства
  form      bigint,          -- Идентификатор формы
  pid       bigint,          -- Идентификатор родительского столбца
  external  int default 0, -- Свойство в таблице (0) или triplets (1)
  viewer    bigint,
  ent_prop_id bigint,
  PRIMARY KEY(id)
);  

-- Получение столбцов по идентификатору формы
select id, name, position, property, alias, domain, type, template , editable, location, pid, external
from sColumns
where form = 1153;

select * from sColumns;


delete from sColumns where form = 1153;

-- 1111
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11295, 'Id', 1, 5048, 'id', 102, 0, NULL,0,'users',1111,NULL,0,129,151145);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(1121,'Фамилия',2,508,'second_name', NULL, 1, NULL,1,NULL,1111,NULL,0,1210,151146);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(1122,'Имя',3,509,'first_name',NULL, 1, NULL,1,NULL,1111,NULL,0,1210,151147);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(1123,'Отчество',4,5010,'patronymic',NULL, 1, NULL,1,NULL,1111,NULL,0,1210,151148);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(1124,'Должность',5,5016,'position',NULL, 1, NULL,1,NULL,1111,NULL,0,1210,151149);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(1125,'Телефон',6,5017,'tel',NULL, 1, NULL,1,NULL,1111,NULL,0,1210,151150);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(1126,'Адрес',7,5018,'address',NULL, 1, NULL,1,NULL,1111,NULL,0,1210,151151);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(1127,'День рождения',8,5019,'birthday',NULL, 1, NULL,1,NULL,1111,NULL,0,1210,151152);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(1128,'Состояние',9,5020,'state',NULL, 1, NULL,1,NULL,1111,NULL,0,1210,151153);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(1129,'Комментарий',10,5021,'comment',NULL, 1, NULL,1,NULL,1111,NULL,0,1210,151154);
  
-- 1112
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11296, 'Id', 1, 5048, 'id', 101, 0, NULL,0,'clients',1112,NULL,0,129,151140);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11210,'Фамилия',2,508,'second_name',NULL, 1, NULL,1,NULL,1112,NULL,0,1210,151141);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11211,'Имя',3,509,'first_name',NULL, 1, NULL,1,NULL,1112,NULL,0,1210,151142);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11212,'Отчество',4,5010,'patronymic',NULL, 1, NULL,1,NULL,1112,NULL,0,1210,151143);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11213,'Комментарий',5,5021,'comment',NULL, 1, NULL,1,NULL,1112,NULL,0,1210,151144);
-- 1113
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11297, 'Id', 1, 5048, 'id', 109, 0, NULL,0,'requests',1113,NULL,0,129,151155);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11214,'Дата создания',2,5022,'creation_time',NULL, 1, NULL,1,NULL,1113,NULL,0,1210,151156);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11215,'Исполнитель',3,5014,'user_id',102, 0, NULL,1,'users',1113,NULL,0,129,151157);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11216,'Клиент',4,5024,'client_id',101, 0, NULL,1,'clients',1113,NULL,0,129,151158);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11217,'Телефон',5,5025,'tel',104, 0, NULL,1,'telephones',1113,NULL,0,129,151159);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11218,'Адрес',6,5026,'address',1013, 0, NULL,1,'addresses',1113,NULL,0,129,151160);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11219,'Состояние',7,5027,'state',NULL, 0, null,1,'dim_resource',1113,NULL,0,1210,151161);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11221,'Возможные проблемы',9,5029,'poss_problem',NULL, 1, NULL,1,NULL,1113,NULL,0,1210,151163);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11222,'Время выезда',10,5030,'dep_time',NULL, 0, null,1,'dim_resource',1113,NULL,0,1210,151167);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11223,'Дата выезда',11,5031,'dep_date',NULL, 1, NULL,1,NULL,1113,NULL,0,1210,151168);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11224,'Модель',12,5032,'model',NULL, 1, NULL,1,NULL,1113,NULL,0,1210,151169);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11225,'Стоимость',13,5033,'cost',NULL, 1, NULL,1,NULL,1113,NULL,0,1210,151170);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11226,'Стоимость ремонта',14,5034,'rep_cost',NULL, 1, NULL,1,NULL,1113,NULL,0,1210,151171);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11227,'Комментарий',15,5021,'comment',NULL, 1, NULL,1,NULL,1113,NULL,0,1210,151165);

insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112229, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,11215,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112230, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,11215,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112231, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,11215,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112232, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,11216,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112233, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,11216,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112234, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,11216,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112235,'Номер 1',1,null,'number',NULL, 1, NULL,1,NULL,null,11217,0,121);
 
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112236, 'Значение', 2, 5048, 'value', null, 0,NULL,1,'addresses',null,11218,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112289, 'Состояние', 2, 5048, 'name', null, 0,NULL,1,'',null,11219,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112290, 'Время выезда', 2, 5048, 'name', null, 0,NULL,1,'',null,11222,0,121);
  

-- 1114
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11298, 'Id', 1, 5048, 'id', 1010, 0, NULL,0,'requests',1114,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11228,'Дата создания',2,5022,'creation_time',NULL, 1, NULL,1,NULL,1114,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11229,'Исполнитель',3,5014,'user_id',102, 0, NULL,1,'users',1114,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11230,'Клиент',4,5024,'client_id',101, 0, NULL,1,'clients',1114,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11231,'Телефон',5,5025,'tel',104, 0, NULL,1,'telephones',1114,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11232,'Адрес',6,5026,'address',1013, 0, NULL,1,'addresses',1114,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11233,'Состояние',7,5027,'state',NULL, 1, NULL,1,NULL,1114,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11234,'Результат',8,5028,'result_id',NULL, 1, NULL,1,NULL,1114,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11235,'Возможные проблемы',9,5029,'poss_problem',NULL, 1, NULL,1,NULL,1114,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer)
  values(11236,'Дата заказа',10,5035,'order_date',NULL, 1, NULL,1,NULL,1114,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11237,'Дата прихода',11,5036,'recept_date',NULL, 1, NULL,1,NULL,1114,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11238,'Код запчасти',12,5037,'comp_code',NULL, 1, NULL,1,NULL,1114,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11239,'Поставщик',13,5038,'provider_id',NULL, 1, NULL,1,NULL,1114,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11240,'Цена покупки',14,5039,'sell_cost',NULL, 1, NULL,1,NULL,1114,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11241,'Цена продажи',15,5040,'buy_cost',NULL, 1, NULL,1,NULL,1114,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11242,'Комментарий',16,5021,'comment',NULL, 1, NULL,1,NULL,1114,NULL,0,1210);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112237, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,11229,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112238, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,11229,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112239, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,11229,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112240, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,11230,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112241, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,11230,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112242, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,11230,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112243,'Номер 1',1,null,'number',NULL, 1, NULL,1,NULL,null,11231,0,121);
 
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112244, 'Значение', 2, 5048, 'value', null, 0,NULL,1,'addresses',null,11232,0,121);
-- 1115
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11299, 'Id', 1, 5048, 'id', 1011, 0, NULL,0,'requests',1115,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11243,'Дата создания',2,5022,'creation_time',NULL, 1, NULL,1,NULL,1115,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11244,'Исполнитель',3,5014,'user_id',102, 0, NULL,1,'users',1115,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11245,'Клиент',4,5024,'client_id',101, 0, NULL,1,'clients',1115,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11246,'Телефон',5,5025,'tel',104, 0, NULL,1,'telephones',1115,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11247,'Адрес',6,5026,'address',1013, 0, NULL,1,'addresses',1115,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11248,'Состояние',7,5027,'state',NULL, 1, NULL,1,NULL,1115,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11249,'Результат',8,5028,'result_id',NULL, 1, NULL,1,NULL,1115,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11250,'Возможные проблемы',9,5029,'poss_problem',NULL, 1, NULL,1,NULL,1115,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11251,'Время выезда',10,5030,'dep_time',NULL, 1, NULL,1,NULL,1115,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11252,'Дата выезда',11,5031,'dep_date',NULL, 1, NULL,1,NULL,1115,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11253,'Поставщик',12,5038,'provider_id',NULL, 1, NULL,1,NULL,1115,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11254,'Код запчасти',13,5037,'comp_code',NULL, 1, NULL,1,NULL,1115,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11255,'Цена покупки',14,5039,'sell_cost',NULL, 1, NULL,1,NULL,1115,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11256,'Цена продажи',15,5040,'buy_cost',NULL, 1, NULL,1,NULL,1115,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11257,'Цена доставки',16,5041,'dep_cost',NULL, 1, NULL,1,NULL,1115,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11258,'Комментарий',17,5021,'comment',NULL, 1, NULL,1,NULL,1115,NULL,0,1210);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112245, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,11244,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112246, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,11244,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112247, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,11244,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112248, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,11245,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112249, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,11245,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112250, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,11245,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112251,'Номер 1',1,null,'number',NULL, 1, NULL,1,NULL,null,11246,0,121);
 
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112252, 'Значение', 2, 5048, 'value', null, 0,NULL,1,'addresses',null,11247,0,121);
  
-- 1116
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112100, 'Id', 1, 5048, 'id', 1012, 0, NULL,0,'requests',1116,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11259,'Дата создания',2,5022,'creation_time',NULL, 1, NULL,1,NULL,1116,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11260,'Исполнитель',3,5014,'user_id',102, 0, NULL,1,'users',1116,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11261,'Клиент',4,5024,'client_id',101, 0, NULL,1,'clients',1116,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11262,'Телефон',5,5025,'tel',104, 0, NULL,1,'telephones',1116,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11263,'Адрес',6,5026,'address',1013, 0, NULL,1,'addresses',1116,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11264,'Состояние',7,5027,'state',NULL, 1, NULL,1,NULL,1116,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11265,'Результат',8,5028,'result_id',NULL, 1, NULL,1,NULL,1116,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11266,'Возможные проблемы',9,5029,'poss_problem',NULL, 1, NULL,1,NULL,1116,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11267,'Время выезда',10,5030,'dep_time',NULL, 1, NULL,1,NULL,1116,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11268,'Дата выезда',11,5031,'dep_date',NULL, 1, NULL,1,NULL,1116,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11269,'Комментарий',12,5021,'comment',NULL, 1, NULL,1,NULL,1116,NULL,0,1210);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112253, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,11260,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112254, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,11260,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112255, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,11260,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112256, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,11261,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112257, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,11261,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112258, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,11261,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112259,'Номер 1',1,null,'number',NULL, 1, NULL,1,NULL,null,11262,0,121);
 
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112260, 'Значение', 2, 5048, 'value', null, 0,NULL,1,'addresses',null,11263,0,121);
-- 1117
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112101, 'Id', 1, 5048, 'id', 106, 0, NULL,0,'actions',1117,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11270,'Исполнитель',2,5014,'user_id',102, 0, NULL,1,'users',1117,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11271,'Дата и время действия',3,5045,'date',NULL, 1, NULL,1,NULL,1117,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11272,'Описание действия',4,5046,'action_desc',NULL, 1, NULL,1,NULL,1117,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11273,'Объект',5,5047,'object',NULL, 1, NULL,1,NULL,1117,NULL,0,1210);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112261, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,11270,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112262, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,11270,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112263, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,11270,0,121);
  
-- 1118
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112102, 'Id', 1, 5048, 'id', 107, 0, NULL,0,'logins',1118,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11274,'IP',2,5044,'ip',NULL, 1, NULL,1,NULL,1118,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11275,'Логин',3,5043,'login',NULL, 1, NULL,1,NULL,1118,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11276,'Дата и время  входа',4,5042,'ent_datetime',NULL, 1, NULL,1,NULL,1118,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11277,'Результат',5,5028,'result_id',NULL, 1, NULL,1,NULL,1118,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(11278,'Комментарий',6,5021,'comment',NULL, 1, NULL,1,NULL,1118,NULL,0,1210);
  
-- 1119
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112184, 'Id', 1, 5048, 'id', 1013, 0, NULL,0,'addresses',1119,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112188,'Страна',2,5068,'country',NULL, 1, NULL,1,NULL,1119,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112189,'Область',3,5069,'region',NULL, 1, NULL,1,NULL,1119,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112190,'Район',4,5070,'destrict',NULL, 1, NULL,1,NULL,1119,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112191,'Нас. пункт',5,5071,'town',NULL, 1, NULL,1,NULL,1119,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112192,'Улица',6,5072,'street',NULL, 1, NULL,1,NULL,1119,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112193,'Дом',7,5073,'home',NULL, 1, NULL,1,NULL,1119,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112194,'Корпус',8,5074,'housing',NULL, 1, NULL,1,NULL,1119,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112195,'Квартира',9,5075,'flat',NULL, 1, NULL,1,NULL,1119,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112196,'Полный',10,5066,'value',NULL, 1, NULL,1,NULL,1119,NULL,0,1210);

-- 11110
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112185, 'Id', 1, 5048, 'id', 104, 0, NULL,0,'calls',11110,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112208,'Телефон1',2,5076,'tel1',104, 0, NULL,1,'telephones',11110,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112209,'Телефон2',3,5077,'tel2',104, 0, NULL,1,'telephones',11110,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112210,'Клиент',4,5078,'client_id',101, 0, NULL,1,'clients',11110,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112211,'Сотрудник',5,5079,'user_id',102, 0, NULL,1,'users',11110,NULL,0,129);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112212,'Дата',6,5045,'datetime',NULL, 1, NULL,1,NULL,11110,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112213,'Продолжительность',7,5080,'duration',NULL, 1, NULL,1,NULL,11110,NULL,0,1210);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112214,'Тип звонка',8,5081,'call_type',NULL, 1, NULL,1,NULL,11110,NULL,0,1210);
 
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112280,'Номер 1',1,null,'number',NULL, 1, NULL,1,NULL,null,112208,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112281,'Номер 2',1,null,'number',NULL, 1, NULL,1,NULL,null,112209,0,121);

insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112282, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,112210,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112283, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,112210,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112284, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,112210,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112285, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,112211,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112286, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,112211,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112287, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,112211,0,121);

-- 1151
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(112103, 'Id', 1, 5048, 'id', 102, 0, NULL,0,'users',1151,NULL,0,121,151145);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(112108,'Фамилия',2,508,'second_name',NULL, 1, NULL,1,NULL,1151,NULL,0,121,151146);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(112109,'Имя',3,509,'first_name',NULL, 1, NULL,1,NULL,1151,NULL,0,121,151147);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(112110,'Отчество',4,5010,'patronymic',NULL, 1, NULL,1,NULL,1151,NULL,0,121,151148);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(112111,'Должность',5,5016,'position',NULL, 1, NULL,1,NULL,1151,NULL,0,121,151149);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(112112,'Телефон',6,5017,'tel',NULL, 1, NULL,1,NULL,1151,NULL,0,121,151150);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(112113,'Адрес',7,5018,'address',NULL, 1, NULL,1,NULL,1151,NULL,0,121,151151);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(112114,'День рождения',8,5019,'birthday',NULL, 1, NULL,1,NULL,1151,NULL,0,121,151152);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(112115,'Состояние',9,5020,'state',NULL, 1, NULL,1,NULL,1151,NULL,0,121,151153);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(112116,'Комментарий',10,5021,'comment',NULL, 1, NULL,1,NULL,1151,NULL,0,121,151154);

-- 1152
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(112104, 'Id', 1, 5048, 'id', 101, 0, NULL,0,'clients',1152,NULL,0,121,151140);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
 values( 112117,'Фамилия',2,508,'second_name',NULL, 1, NULL,1,NULL,1152,NULL,0,121,151141);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
 values( 112118,'Имя',3,509,'first_name',NULL, 1, NULL,1,NULL,1152,NULL,0,121,151142);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
 values( 112119,'Отчество',4,5010,'patronymic',NULL, 1, NULL,1,NULL,1152,NULL,0,121,151143);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
 values( 112120,'Комментарий',5,5021,'comment',NULL, 1, NULL,1,NULL,1152,NULL,0,121,151144);
 
-- 1153
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11294, 'Id', 1, 5048, 'id', 109, 0, NULL,0,'requests',1153,NULL,0,121,151155);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11279, 'Дата создания', 2, 5022, 'creation_time', NULL, 3, '%Y-%m-%d %H:%i:%s',0,NULL,1153,NULL,0,122,151156);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11281, 'Исполнитель', 3, 5014, 'user_id', 102, 0,NULL,1,'users',1153,NULL,0,123,151157);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11282, 'Клиент', 4, 5024, 'client_id', 101, 0, NULL,1,'clients',1153,NULL,0,123,151158);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11283, 'Телефон', 5, 5025, 'tel', 1014, 0, NULL,1,'telephones',1153,NULL,0,123,151159);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11284, 'Адрес', 6, 5026, 'address', 1013, 0, NULL,1,'addresses',1153,NULL,0,123,151160);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11285, 'Состояние', 7, 5027, 'state', 1191, 4, NULL,1,NULL,1153,NULL,0,124,151161);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11286, 'Результат', 8, 5028, 'result_id', 103, 0, NULL,1,'requests',1153,NULL,1,123,151162);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11287, 'Возможные проблемы', 9, 5029, 'poss_problem', NULL, 1, NULL,1,NULL,1153,NULL,0,121,151163);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11288, 'Время выезда', 10, 5030, 'dep_time', 1192, 4, NULL,1,NULL,1153,NULL,0,126,151167);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11289, 'Дата выезда', 11, 5031, 'dep_date', NULL, 3, '%Y-%m-%d',1,NULL,1153,NULL,0,122,151168);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11290, 'Модель', 12, 5032, 'model', NULL, 1, NULL,1,NULL,1153,NULL,0,121,151169);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11291, 'Стоимость', 13, 5033, 'cost', NULL, 1, NULL,1,NULL,1153,NULL,0,121,151170);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11292, 'Стоимость ремонта', 14, 5034, 'rep_cost', NULL, 1, NULL,1,NULL,1153,NULL,0,121,151171);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(11293, 'Комментарий', 15, 5021, 'comment', NULL, 1, NULL,1,NULL,1153,NULL,0,121,151165);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
  values(112168, 'Предистория', 16, 5050, 'result_id', 103, 0, NULL,1,'requests',1153,NULL,2,123,151164);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112163, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,11281,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112164, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,11281,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112165, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,11281,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112171, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,11282,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112172, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,11282,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112173, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,11282,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112166, 'Разделитель', 1, null, '''Заявка №''', null, 1,NULL,1,null,null,11286,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112167, 'Id', 2, 5048, 'id', null, 0,NULL,1,'requests',null,11286,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112169, 'Разделитель', 1, null, '''Заявка №''', null, 1,NULL,1,null,null,112168,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112170, 'Id', 2, 5048, 'id', null, 0,NULL,1,'requests',null,112168,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112182, 'Номер', 2, 5048, 'number', null, 0,NULL,1,'telephones',null,11283,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112183, 'Значение', 2, 5048, 'value', null, 0,NULL,1,'addresses',null,11284,0,121);
  


-- 1154
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112105, 'Id', 1, 5048, 'id', 1010, 0, NULL,0,'requests',1154,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112121,'Дата создания',2,5022,'creation_time',NULL, 0, NULL,0,NULL,1154,NULL,0,122);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112122,'Исполнитель',3,5014,'user_id',102, 0, NULL,1,'users',1154,NULL,0,123);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112123,'Клиент',4,5024,'client_id',101, 0, NULL,1,'clients',1154,NULL,0,123);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112124,'Телефон',5,5025,'tel',NULL, 1, NULL,1,NULL,1154,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112125,'Адрес',6,5026,'address',NULL, 1, NULL,1,NULL,1154,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112126,'Состояние',7,5027,'state',1191, 1, NULL,1,NULL,1154,NULL,0,124);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112127,'Результат',8,5028,'result_id',103, 0, NULL,1,'requests',1154,NULL,1,123);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112128,'Возможные проблемы',9,5029,'poss_problem',NULL, 1, NULL,1,NULL,1154,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112129,'Дата заказа',10,5035,'order_date',NULL, 1, NULL,1,NULL,1154,NULL,0,127);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112130,'Дата прихода',11,5036,'recept_date',NULL, 1, NULL,1,NULL,1154,NULL,0,127);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112131,'Код запчасти',12,5037,'comp_code',NULL, 1, NULL,1,NULL,1154,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112132,'Поставщик',13,5038,'provider_id',NULL, 1, NULL,1,NULL,1154,NULL,0,123);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112133,'Цена покупки',14,5039,'sell_cost',NULL, 1, NULL,1,NULL,1154,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112134,'Цена продажи',15,5040,'buy_cost',NULL, 1, NULL,1,NULL,1154,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112135,'Комментарий',16,5021,'comment',NULL, 1, NULL,1,NULL,1154,NULL,0,121);
 
     -- values(11286, 'Результат', 8, 5028, 'result_id', 103, 0, NULL,1,'requests',1153,NULL,1,123);
 -- values(11281, 'Исполнитель', 3, 5014, 'user_id', 102, 0,NULL,1,'users',1153,NULL,0,123);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112174, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,112122,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112175, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,112122,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112176, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,112122,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112177, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,112123,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112178, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,112123,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112179, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,112123,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112180, 'Разделитель', 1, null, '''Заявка №''', null, 1,NULL,1,null,null,112127,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112181, 'Id', 2, 5048, 'id', null, 0,NULL,1,'requests',null,112127,0,121);
  


-- 1155
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112106, 'Id', 1, 5048, 'id', NULL, 1011, NULL,0,'requests',1155,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112136,'Дата создания',2,5022,'creation_time',NULL, 1, NULL,1,NULL,1155,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112137,'Исполнитель',3,5014,'user_id',NULL, 1, NULL,1,NULL,1155,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112138,'Клиент',4,5024,'client_id',NULL, 1, NULL,1,NULL,1155,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112139,'Телефон',5,5025,'tel',1014, 1, NULL,1,'telephones',1155,NULL,0,123);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112140,'Адрес',6,5026,'address',1013, 1, NULL,1,'addresses',1155,NULL,0,123);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112141,'Состояние',7,5027,'state',NULL, 1, NULL,1,NULL,1155,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112142,'Результат',8,5028,'result_id',NULL, 1, NULL,1,NULL,1155,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112143,'Возможные проблемы',9,5029,'poss_problem',NULL, 1, NULL,1,NULL,1155,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112144,'Время выезда',10,5030,'dep_time',NULL, 1, NULL,1,NULL,1155,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112145,'Дата выезда',11,5031,'dep_date',NULL, 1, NULL,1,NULL,1155,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112146,'Поставщик',12,5038,'provider_id',NULL, 1, NULL,1,NULL,1155,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112147,'Код запчасти',13,5037,'comp_code',NULL, 1, NULL,1,NULL,1155,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112148,'Цена покупки',14,5039,'sell_cost',NULL, 1, NULL,1,NULL,1155,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112149,'Цена продажи',15,5040,'buy_cost',NULL, 1, NULL,1,NULL,1155,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112150,'Цена доставки',16,5041,'dep_cost',NULL, 1, NULL,1,NULL,1155,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112151,'Комментарий',17,5021,'comment',NULL, 1, NULL,1,NULL,1155,NULL,0,121);
 
 insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112264, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,112137,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112265, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,112137,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112266, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,112137,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112267, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,112138,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112268, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,112138,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112269, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,112138,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112270,'Номер 1',1,null,'number',NULL, 1, NULL,1,NULL,null,112139,0,121);
 
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112271, 'Значение', 2, 5048, 'value', null, 0,NULL,1,'addresses',null,112140,0,121);

-- 1156
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112107, 'Id', 1, 5048, 'id', 1012, 0, NULL,0,'requests',1156,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112152,'Дата создания',2,5022,'creation_time',NULL, 1, NULL,1,NULL,1156,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112153,'Исполнитель',3,5014,'user_id',NULL, 1, NULL,1,NULL,1156,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112154,'Клиент',4,5024,'client_id',NULL, 1, NULL,1,NULL,1156,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112155,'Телефон',5,5025,'tel',NULL, 1, NULL,1,NULL,1156,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112156,'Адрес',6,5026,'address',NULL, 1, NULL,1,NULL,1156,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112157,'Состояние',7,5027,'state',NULL, 1, NULL,1,NULL,1156,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112158,'Результат',8,5028,'result_id',NULL, 1, NULL,1,NULL,1156,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112159,'Возможные проблемы',9,5029,'poss_problem',NULL, 1, NULL,1,NULL,1156,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112160,'Время выезда',10,5030,'dep_time',NULL, 1, NULL,1,NULL,1156,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112161,'Дата выезда',11,5031,'dep_date',NULL, 1, NULL,1,NULL,1156,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112162,'Комментарий',12,5021,'comment',NULL, 1, NULL,1,NULL,1156,NULL,0,121);
 
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112272, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,112153,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112273, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,112153,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112274, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,112153,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112275, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,112154,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112276, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,112154,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112277, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,112154,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112278,'Номер 1',1,null,'number',NULL, 1, NULL,1,NULL,null,112155,0,121);
 
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112279, 'Значение', 2, 5048, 'value', null, 0,NULL,1,'addresses',null,112156,0,121);
  
-- 1157
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112186, 'Id', 1, 5048, 'id', 1013, 0, NULL,0,'addresses',1157,NULL,0,123);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112197,'Страна',2,5068,'country',NULL, 1, NULL,1,NULL,1157,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112198,'Область',3,5069,'region',NULL, 1, NULL,1,NULL,1157,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112199,'Район',4,5070,'destrict',NULL, 1, NULL,1,NULL,1157,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112200,'Нас. пункт',5,5071,'town',NULL, 1, NULL,1,NULL,1157,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112201,'Улица',6,5072,'street',NULL, 1, NULL,1,NULL,1157,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112202,'Дом',7,5073,'home',NULL, 1, NULL,1,NULL,1157,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112203,'Корпус',8,5074,'housing',NULL, 1, NULL,1,NULL,1157,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112204,'Квартира',9,5075,'flat',NULL, 1, NULL,1,NULL,1157,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112205,'Полный',10,5066,'value',NULL, 1, NULL,1,NULL,1157,NULL,0,121);
-- 1158
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112187, 'Id', 1, 5048, 'id', 104, 0, NULL,0,'calls',1158,NULL,0,123);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112215,'Телефон1',2,5076,'tel1',1014, 0, NULL,1,'telephones',1158,NULL,0,123);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112216,'Телефон2',3,5077,'tel2',1014, 0, NULL,1,'telephones',1158,NULL,0,123);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112217,'Клиент',4,5078,'client_id',101, 0, NULL,1,'clients',1158,NULL,0,123);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112218,'Сотрудник',5,5079,'user_id',102, 0, NULL,1,'users',1158,NULL,0,123);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112219,'Дата',6,5045,'datetime',NULL, 1, NULL,1,NULL,1158,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112220,'Продолжительность',7,5080,'duration',NULL, 1, NULL,1,NULL,1158,NULL,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112221,'Тип звонка',8,5081,'call_type',NULL, 1, NULL,1,NULL,1158,NULL,0,121);
 
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112222,'Номер 1',1,null,'number',NULL, 1, NULL,1,NULL,null,112215,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112223,'Номер 2',1,null,'number',NULL, 1, NULL,1,NULL,null,112216,0,121);

insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112224, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,112217,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112225, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,112217,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112226, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,112217,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112227, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,112218,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112228, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,112218,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112288, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,112218,0,121);
  
-- counter 112291
 
-- 1159
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112206, 'Id', 1, 5048, 'id', 1014, 0, NULL,0,'telephones',1159,NULL,0,123);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112207,'Номер',2,5067,'number',NULL, 1, NULL,1,NULL,1159,NULL,0,121);
 



-- Создание справочника таблиц
drop table if exists sTables;
create table sTables(
  id       bigint,
  name     varchar(256),
  class_id bigint,
  PRIMARY KEY(id)
);

insert into sTables(id,name,class_id) values (1,'requests',103);


-- Создание таблицы кнопок
drop table if exists buttons;
create table buttons(
  id       bigint,
  name     varchar(256),
  link     varchar(256),
  pid      bigint,
  action   bigint,
  position int,
  level    int,
  type     int,
  PRIMARY KEY(id)
);  
-- 5048.Идентификатор
-- 501.Название
-- 5051.Ссылка
-- 5052.Идентификатор родителя
-- 5053.Действие
-- 504.Позиция
-- 5056.Уровень
-- 5051.Тип

insert into buttons(id,name,link,pid,action,position,level) values(15051,'Главное меню',null,null,null,null,1);

insert into buttons(id,name,link,pid,action,position,level,type) values(15052,'Главное меню.Левый бар',null,15051,null,1,2,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(15053,'Главное меню.Правый бар',null,15051,null,2,2,2);

insert into buttons(id,name,link,pid,action,position,level) values(15054,'Обзор',null,15052,null,null,3);
insert into buttons(id,name,link,pid,action,position,level) values(15055,'Клиенты',null,15052,null,null,3);
insert into buttons(id,name,link,pid,action,position,level) values(15056,'Сотрудники',null,15052,null,null,3);
insert into buttons(id,name,link,pid,action,position,level) values(15057,'Отчёты',null,15052,null,null,3);

insert into buttons(id,name,link,pid,action,position,level,type) values(15058,'Заявки на сервис','index.php?action=231',15054,null,1,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(15059,'Заявки на заказ запчасти','index.php?action=232',15054,null,2,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150510,'Заявки на доставку','index.php?action=233',15054,null,3,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150511,'Заявки на изъятие техники','index.php?action=234',15054,null,4,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150528,'Звонки','index.php?action=2331',15054,null,5,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150529,'Поиск','index.php?action=2333',15054,null,6,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150512,'Разделитель',null,15054,null,7,4,2);
insert into buttons(id,name,link,pid,action,position,level,type) values(150513,'Создание заявки',null,15054,null,8,4,3);
insert into buttons(id,name,link,pid,action,position,level,type) values(150514,'Сервис',null,15054,null,9,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150515,'Заказ запчасти',null,15054,null,10,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150516,'Доставка',null,15054,null,11,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150517,'Изъятие техники',null,15054,null,12,4,1);

insert into buttons(id,name,link,pid,action,position,level,type) values(150518,'База клиентов','index.php?action=235',15055,null,1,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150519,'Разделитель',null,15055,null,2,4,2);
insert into buttons(id,name,link,pid,action,position,level,type) values(150520,'Создание',null,15055,null,3,4,3);
insert into buttons(id,name,link,pid,action,position,level,type) values(150521,'Новый клиент',null,15055,null,4,4,1);

insert into buttons(id,name,link,pid,action,position,level,type) values(150522,'Список сотрудников','index.php?action=236',15056,null,1,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150523,'Разделитель',null,15056,null,2,4,2);
insert into buttons(id,name,link,pid,action,position,level,type) values(150524,'Создание',null,15056,null,3,4,3);
insert into buttons(id,name,link,pid,action,position,level,type) values(150525,'Создание',null,15056,null,4,4,1);

insert into buttons(id,name,link,pid,action,position,level,type) values(150526,'user_name',null,15053,null,1,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150527,'Выход','/logout',15053,null,2,4,1);


-- Создание таблицы расположения сущностей
drop table if exists entities;
create table entities(
  id  bigint,
  location     varchar(256),
  PRIMARY KEY(id)
);  

insert into entities(id, location) values(113, 'buttons');
insert into entities(id, location) values(101, 'clients');
insert into entities(id, location) values(102, 'users');
insert into entities(id, location) values(106, 'actions');
insert into entities(id, location) values(107, 'logins');
insert into entities(id, location) values(103, 'requests');
insert into entities(id, location) values(109, 'requests');
insert into entities(id, location) values(1010, 'requests');
insert into entities(id, location) values(1011, 'requests');
insert into entities(id, location) values(1012, 'requests');

insert into entities(id, location) values(12, 'sCrmElements');
insert into entities(id, location) values(14, 'sCrmElements');

insert into entities(id, location) values(23, 'dim_actions');

insert into entities(id, location) values(1013, 'addresses');
insert into entities(id, location) values(104, 'calls');
insert into entities(id, location) values(1014, 'telephones');
insert into entities(id, location) values(1511, 'ent_properties');

insert into entities(id, location) values(112, 'sColumns');

insert into entities(id, location) values(1192, 'dim_resource');
insert into entities(id, location) values(1191, 'dim_resource');

-- Создание таблицы свойств сущности
drop table if exists ent_properties;
create table ent_properties(
  id        bigint,
  ent_id    bigint,
  prop_id   bigint,
  alias     varchar(256),
  domain    bigint,
  external  int,
  editable  int default 1,
  PRIMARY KEY(id)
);  
 

select * from ent_properties;
-- Menu
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(15111,113,5048,'id',113,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(15112,113,501,'name',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(15113,113,5056,'link',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(15114,113,5057,'pid',113,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(15115,113,5058,'action',23,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(15116,113,504,'position',135,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(15117,113,5060,'level',135,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(15118,113,5051,'type',135,0);

-- Viewers
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(15119,12,5048,'id',12,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151110,12,501,'name',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151111,12,503,'location',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151112,12,5051,'type',12,0);

-- Controllers
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(151113,14,5048,'id',14,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151114,14,501,'name',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151115,14,503,'location',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151116,14,5051,'type',14,0);

-- 23.Действие
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(151117,23,5048,'id',23,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151118,23,5062,'action_id',23,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151119,23,501,'name',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151120,23,5063,'contr_id',14,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151121,23,5055,'domain',132,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151122,23,5057,'pid',23,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151123,23,5065,'form',111,0);

-- 1511.Свойство сущности
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(151124,1511,5048,'id',1501,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151125,1511,5083,'ent_id',23,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151126,1511,5082,'prop_id',50,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151127,1511,506,'alias',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151128,1511,5055,'domain',132,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151129,1511,5084,'external',135,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151190,1511,5052,'editable',135,0);

-- 112.Столбец формы
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(151130,112,5048,'id',112,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151131,112,501,'name',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151132,112,504,'position',135,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151133,112,5051,'type',135,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151134,112,5085,'template',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151135,112,5052,'editable',135,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151136,112,5065,'form',11,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151137,112,5057,'pid',112,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151138,112,5086,'viewer',12,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151139,112,5087,'ent_prop_id',1511,0);

-- 101.Клиент
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(151140,101,5048,'id',101,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151141,101,508,'second_name',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151142,101,509,'first_name',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151143,101,5010,'patronymic',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151144,101,5021,'comment',134,0);

-- 102.Сотрудник
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(151145,102,5048,'id',102,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151146,102,508,'second_name',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151147,102,509,'first_name',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151148,102,5010,'patronymic',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151149,102,5016,'position',102,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151150,102,5017,'tel',1014,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151151,102,5018,'address',1013,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151152,102,5019,'birthday',136,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151153,102,5020,'state',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151154,102,5021,'comment',134,0); 

-- 103.Заявка
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(151155,103,5048,'id',103,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(151156,103,5022,'creation_time',136,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151157,103,5014,'user_id',102,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151158,103,5024,'client_id',101,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151159,103,5025,'tel',1014,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151160,103,5026,'address',1013,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151161,103,5027,'state',1191,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151162,103,5028,'result',103,1);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151163,103,5029,'poss_problem',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151164,103,5050,'prehistory',103,2);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151165,103,5021,'comment',134,0);
-- 109.Заявка на сервис
-- insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151166,109,5048,'id',109,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151167,109,5030,'dep_time',1192,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151168,109,5031,'dep_date',136,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151169,109,5032,'model',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151170,109,5033,'cost',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151171,109,5034,'rep_cost',134,0);
-- 1010.Заявка на заказ запчасти
-- insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151172,1010,5048,'id',1010,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151173,1010,5035,'order_date',136,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151174,1010,5036,'recept_date',136,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151175,1010,5037,'comp_code',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151176,1010,5038,'provider_id',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151177,1010,5039,'buy_cost',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151178,1010,5040,'sell_cost',134,0);
-- 1011.Заявка на доставку
-- insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151179,1011,5048,'id',1011,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151180,1011,5030,'dep_time',1192,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151181,1011,5031,'dep_date',136,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151182,1011,5038,'provider_id',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151183,1011,5037,'comp_code',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151184,1011,5039,'buy_cost',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151185,1011,5040,'sell_cost',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151186,1011,5041,'dep_cost',134,0);
-- 1012.Заявка на изъятие техники
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151188,1012,5030,'dep_time',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151189,1012,5031,'dep_date',136,0);

-- 104.Звонок
-- 106.Действие пользователя
-- 107.Логин в систему
-- 108.Поставщик
-- 1013.Адресс
-- 1014.Телефон

-- Создание таблицы действий
drop table if exists dim_actions;
create table dim_actions(
  id         bigint,
  action_id  bigint,       -- Идентификатор реального действия
  name       varchar(256), -- Название
  contr_id   bigint,       -- Идентификатор контроллера
  domain     bigint,       -- Домен объекта
  form       bigint,       -- Идентификатор формы
  pid        bigint,       -- Идентификатор родительского действия
  PRIMARY KEY(id)
);

insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(23,23,'Действие',null,null,null);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2316,2316,'Просмотр сущностей класса',141,10,23);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2320,2316,'Просмотр заявок',null,103,2316);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(231,2316,'Просмотр сервисных заявок',null,109,1113,2320);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(232,2316,'Просмотр заявок на заказ запчастей',null,1010,1114,2320);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(233,2316,'Просмотр заявок на доставку',null,1011,1115,2320);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(234,2316,'Просмотр заявок на изъятие техники',null,1012,1116,2320);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(235,2316,'Просмотр клиентов',null,101,1112,2316);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(236,2316,'Просмотр сотрудников',null,102,1111,2316);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(237,2316,'Просмотр истории действий',null,106,1117,2316);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(238,2316,'Просмотр истории логинов',null,107,1118,2316);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2330,2316,'Просмотр адресов',null,1013,1119,2316);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2331,2316,'Просмотр звонков',null,104,11110,2316);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2315,2315,'Просмотр сущности',145,132,23);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2317,2315,'Просмотр заявки',null,103,2315);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2321,2315,'Просмотр сервисной заявки',null,109,1153,2317);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2322,2315,'Просмотр заявки на заказ запчастей',null,1010,1154,2317);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2323,2315,'Просмотр заявки на доставку',null,1011,1155,2317);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2324,2315,'Просмотр заявки на изъятие техники',null,1012,1156,2317);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2325,2315,'Просмотр клиента',null,101,1152,2315);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2326,2315,'Просмотр сотрудника',null,102,1151,2315);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2328,2315,'Просмотр адреса',null,1013,1157,2315);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2329,2315,'Просмотр звонка',null,104,1158,2315);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2332,2315,'Просмотр телефона',null,1014,1159,2315);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2318,2318,'Создание сущности',null,132,23);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2327,2318,'Создание заявки',null,103,2318);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(239,2318,'Создание сервисной заявки',null,109,2327);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2310,2318,'Создание заявки на заказ запчасти',null,1010,2327);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2311,2318,'Создание заявки на доставку',null,1011,2327);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2312,2318,'Создание заявки на изъятие техники',null,1012,2327);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2313,2318,'Создание клиента',null,101,2318);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2314,2318,'Создание пользователя',null,102,2318);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2319,2319,'Удаление сущности',null,132,23);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2333,2333,'Поиск сущностей',146,132,23);

-- Создание таблицы элементов CRM
drop table if exists sCrmElements;
create table sCrmElements(
  id         bigint,
  name       varchar(256),
  location   varchar(256),
  type       bigint,
  PRIMARY KEY(id)
);

insert into sCrmElements(id,name,location,type) values(141,'ShowController','core/show.controller.php',14);
insert into sCrmElements(id,name,location,type) values(142, 'EshowController', 'core/eshow.controller.php',14);
insert into sCrmElements(id,name,location,type) values(143, 'MenuController','core/menu.controller.php',14);
insert into sCrmElements(id,name,location,type) values(144, 'RedirectController', 'core/redirect.controller.php',14);
insert into sCrmElements(id,name,location,type) values(145, 'EntityController', 'core/entity.controller.php',14);
insert into sCrmElements(id,name,location,type) values(146, 'SearchController', 'core/search.controller.php',14);

insert into sCrmElements(id,name,location,type) values(121,'TextViewer','core/viewers/text.viewer.php',12);
insert into sCrmElements(id,name,location,type) values(122,'DateTimeViewer','core/viewers/datetime.viewer.php',12);
insert into sCrmElements(id,name,location,type) values(123,'ResourceViewer','core/viewers/resource.viewer.php',12);
insert into sCrmElements(id,name,location,type) values(124,'ComboBoxItemViewer','core/viewers/comboboxitem.viewer.php',12);
insert into sCrmElements(id,name,location,type) values(125,'ComplexTypeViewer','core/viewers/complextype.viewer.php',12);
insert into sCrmElements(id,name,location,type) values(126,'TimeItemViewer','core/viewers/timeitem.viewer.php',12);
insert into sCrmElements(id,name,location,type) values(127,'DateViewer','core/viewers/date.viewer.php',12);
insert into sCrmElements(id,name,location,type) values(128,'MenuViewer','core/viewers/menu.viewer.php',12);
insert into sCrmElements(id,name,location,type) values(129,'Resource2Viewer','core/viewers/resource2.viewer.php',12);
insert into sCrmElements(id,name,location,type) values(1210,'Text2Viewer','core/viewers/text2.viewer.php',12);

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
  PRIMARY KEY(id)
);

insert into addresses(id,value) values(15081,'Красная 16-54');
insert into addresses(id,value,country,region,destrict,town,street,home,housing,flat) values(15082,'Железнодорожная 12-15','Россия','Саратовская','','Ртищево','Железнодорожная','12','','15');

insert into dim_resource(id,name,type) values(15081,'Красная 16-54',1013);
insert into dim_resource(id,name,type) values(15082,'Железнодорожная 12-15',1013);

-- Создание таблицы телефонов 
drop table if exists telephones;
create table telephones(
  id         bigint,
  number     varchar(256)
);
   
insert into telephones(id,number) values(15091,'+7(909)925-77-54');
insert into telephones(id,number) values(15092,'+7(906)313-75-54');

insert into dim_resource(id,name,type) values(15091,'+7(909)925-77-54',1014);
insert into dim_resource(id,name,type) values(15092,'+7(906)313-75-54',1014);

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

insert into calls(id,tel1,tel2,client_id,user_id,datetime,duration,call_type) values(15101,15091,15092,15021,15012,'2015-06-13 10:00',100,1);

insert into dim_resource(id,name,type) values(15101,'+7(909)925-77-54',104);

