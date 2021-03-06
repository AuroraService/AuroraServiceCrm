 -- Пересоздание справочника ресурсов START
drop table if exists dim_resource2;
create table dim_resource2(
  id	                  bigint,
  name                	varchar(256),
  search_name           varchar(1024),
  present_name          varchar(1024),
  name_template         varchar(256),
  search_name_template  varchar(256),
  present_name_template varchar(256),
  type                 	bigint,
  start_date            datetime default '2015-11-01',
  end_date              datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
);

insert into dim_resource2(id,name,search_name,present_name,name_template,search_name_template,present_name_template,type,start_date,end_date)
select id,name,search_name,present_name,name_template,search_name_template,present_name_template,type,start_date,end_date from dim_resource;

drop table if exists dim_resource;
create table dim_resource(
  id	                  bigint,
  name                	varchar(256),
  search_name           varchar(1024),
  present_name          varchar(1024),
  name_template         varchar(256),
  search_name_template  varchar(256),
  present_name_template varchar(256),
  type                 	bigint,
  start_date            datetime default '2015-11-01',
  end_date              datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
);

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
insert into dim_resource(id,name,type) values(1016,'Продукт',10);

insert into dim_resource(id,name,type) values(10,'Ресурс с расположением в своей таблице ',132);
insert into dim_resource(id,name,type) values(12,'Отображатель',11);
insert into dim_resource(id,name,type) values(14,'Контроллер',11);
insert into dim_resource(id,name,type) values(23,'Действие',132);
insert into dim_resource(id,name,type) values(113,'Меню',11);
insert into dim_resource(id,name,type) values(161,'Фильтр',11);
insert into dim_resource(id,name,type) values(162,'Поле фильтра',11);
insert into dim_resource(id,name,type) values(163,'Фильтр действия',11);
insert into dim_resource(id,name,type) values(164,'Сообщение',11);
insert into dim_resource(id,name,type) values(168,'Сессия',11);
insert into dim_resource(id,name,type) values(1511,'Свойство сущности',50);

insert into dim_resource(id,name,type) values(134,'Текст',133);
insert into dim_resource(id,name,type) values(135,'Число',133);
insert into dim_resource(id,name,type) values(136,'Дата',133);

insert into dim_resource(id,name,type) values(1026,'Записка оператора',10);




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
insert into dim_resource(id,name,type) values(1193,'Сущности для поиска',119);
insert into dim_resource(id,name,type) values(1194,'Состояние заявки на заказ запчасти',119);
insert into dim_resource(id,name,type) values(1195,'Состояние заявки на изъятие техники',119);
insert into dim_resource(id,name,type) values(1196,'Состояние заявки на сервис',119);
insert into dim_resource(id,name,type) values(1197,'Состояние по оплате',119);

insert into dim_resource(id,name,type) values(1201,'Выполняется',120);
insert into dim_resource(id,name,type) values(1202,'Выполнено',120);
insert into dim_resource(id,name,type) values(1203,'Отказ(Клиент)',120);
insert into dim_resource(id,name,type) values(1204,'Отказ(Наша сторона)',120);

insert into dim_resource(id,name,type) values(1205,'9-12',120);
insert into dim_resource(id,name,type) values(1206,'12-15',120);
insert into dim_resource(id,name,type) values(1207,'15-18',120);
insert into dim_resource(id,name,type) values(1208,'В течении дня',120);

insert into dim_resource(id,name,type) values(1209,'Клиент',120);
insert into dim_resource(id,name,type) values(12010,'Сотрудник',120);
insert into dim_resource(id,name,type) values(12011,'Сервисная заявка',120);
insert into dim_resource(id,name,type) values(12012,'Заявка на заказ запчасти',120);
insert into dim_resource(id,name,type) values(12013,'Заявка на доставку',120);
insert into dim_resource(id,name,type) values(12014,'Заявка на изъятие техники',120);

-- Состояния заявки на заказ запчасти
insert into dim_resource(id,name,type) values(12015,'Обрабатывается',120);
insert into dim_resource(id,name,type) values(12016,'Отказ(Клиент)',120);
insert into dim_resource(id,name,type) values(12017,'Отказ(Наша сторона)',120);
-- insert into dim_resource(id,name,type) values(12018,'Цена сообщена клиенту',120);
-- insert into dim_resource(id,name,type) values(12019,'Оплачено',120);
insert into dim_resource(id,name,type) values(12020,'Заказано',120);

insert into dim_resource(id,name,type) values(12037,'Подтвержден',120);
insert into dim_resource(id,name,type) values(12038,'Отправлено',120);

insert into dim_resource(id,name,type) values(12021,'Получен',120);
insert into dim_resource(id,name,type) values(12022,'Доставлен клиенту',120);
insert into dim_resource(id,name,type) values(12023,'Возврат',120);

-- Состояния заявки на изъятие тихники
insert into dim_resource(id,name,type) values(12024,'Обрабатывается',120);
insert into dim_resource(id,name,type) values(12025,'Отказ(Клиент)',120);
insert into dim_resource(id,name,type) values(12026,'Отказ(Наша сторона)',120);
insert into dim_resource(id,name,type) values(12027,'Техника забрана',120);
insert into dim_resource(id,name,type) values(12028,'Ожидание запчасти',120);
insert into dim_resource(id,name,type) values(12029,'Техника ожидает отвоза',120);
insert into dim_resource(id,name,type) values(12030,'Доставлено',120);

-- Состояния сервисной заявки
insert into dim_resource(id,name,type) values(12031,'Обрабатывается',120);
insert into dim_resource(id,name,type) values(12032,'Ожидает запчасти',120);
insert into dim_resource(id,name,type) values(12033,'Ожидает выезда',120);
insert into dim_resource(id,name,type) values(12039,'Выполнен',120);

insert into dim_resource(id,name,type) values(12040,'Отказ(Клиент)',120);
insert into dim_resource(id,name,type) values(12041,'Отказ(Наша сторона)',120);

-- Состояния сервисной заявки
insert into dim_resource(id,name,type) values(12034,'Не оплачен',120);
insert into dim_resource(id,name,type) values(12035,'Частично оплачен',120);
insert into dim_resource(id,name,type) values(12036,'Оплачен',120);




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
insert into dim_resource(id,name,type) values(11115,'Форма просмотра телефонов',111);
insert into dim_resource(id,name,type) values(11116,'Форма просмотра моделей техники',111);
insert into dim_resource(id,name,type) values(11117,'Форма просмотра комментариев',111);
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

-- Формы создания
insert into dim_resource(id,name,type) values(11510,'Форма создания сотрудника',115);
insert into dim_resource(id,name,type) values(11511,'Форма создания клиента',115);
insert into dim_resource(id,name,type) values(11512,'Форма создания сервисной заявки',115);
insert into dim_resource(id,name,type) values(11513,'Форма создания заявки на заказ запчасти',115);
insert into dim_resource(id,name,type) values(11514,'Форма создания заявки на доставку',115);
insert into dim_resource(id,name,type) values(11515,'Форма создания заявки на изъятие техники',115);
insert into dim_resource(id,name,type) values(11516,'Форма создания адреса',115);


-- Набор параметров
insert into dim_resource(id,name,type) values(15211,'Параметр Заявки на сервис',1611);
insert into dim_resource(id,name,type) values(15212,'Параметр 2',1611);
insert into dim_resource(id,name,type) values(15213,'Параметр 3',1611);
insert into dim_resource(id,name,type) values(15214,'Параметр Заявки на изъятие техники',1611);

insert into dim_resource(id,name,type) values(15215,'Параметр Заявки на заказ запчасти',1611);
insert into dim_resource(id,name,type) values(15216,'Параметр Комментариев',1611);

-- Наборы фильтров
insert into dim_resource(id,name,type) values(15371,'Набор 1',1637);
insert into dim_resource(id,name,type) values(15372,'Набор 2',1637);
insert into dim_resource(id,name,type) values(15373,'Набор 3',1637);

-- Формы просмотра
insert into dim_resource(id,name,type) values(15391,'Форма1',111);
insert into dim_resource(id,name,type) values(15392,'Форма2',111);
insert into dim_resource(id,name,type) values(15393,'Форма просмотра модели техники',111);
insert into dim_resource(id,name,type) values(15394,'Форма просмотра комментария',111);

-- Поставщики
insert into dim_resource(id,name,type,search_name,present_name) values(15161,'Vinodis',108,'Vinodis','Vinodis');
insert into dim_resource(id,name,type,search_name,present_name) values(15162,'Bosch',108,'Bosch','Bosch');
insert into dim_resource(id,name,type,search_name,present_name) values(15163,'Chupica',108,'Chupica','Chupica');
insert into dim_resource(id,name,type,search_name,present_name) values(15164,'ZIP',108,'ZIP','ZIP');
insert into dim_resource(id,name,type,search_name,present_name) values(15165,'Kuppersbusch',108,'Kuppersbusch','Kuppersbusch');

delete from dim_resource2
where (id,end_date) in (select id,end_date from dim_resource);

insert into dim_resource(id,name,search_name,present_name,name_template,search_name_template,present_name_template,type,start_date,end_date)
select id,name,search_name,present_name,name_template,search_name_template,present_name_template,type,start_date,end_date 
from dim_resource2
where (id,name,search_name,present_name,name_template,search_name_template,present_name_template,type,start_date,end_date) not in
(select id,name,search_name,present_name,name_template,search_name_template,present_name_template,type,start_date,end_date from dim_resource);

 -- Пересоздание справочника ресурсов END
 
-- Пересоздание таблицы высказываний START
drop table if exists triplets2;
create table triplets2(
  id         bigint,
  subj_id	 bigint,
  prop_id    bigint,
  obj_id	    bigint,
  value	    varchar(256),
  is_resource int default 1,
  cr_time    datetime,
  start_date datetime default '2015-11-01',
  end_date   datetime default '9999-01-01',
  PRIMARY KEY(subj_id,prop_id,obj_id,end_date)
);

insert into triplets2 (id,subj_id,prop_id,obj_id,value,is_resource,cr_time,start_date,end_date)
select id,subj_id,prop_id,obj_id,value,is_resource,cr_time,start_date,end_date from triplets;

drop table if exists triplets;
create table triplets(
  id         bigint,
  subj_id	 bigint,
  prop_id    bigint,
  obj_id	    bigint,
  value	    varchar(256),
  is_resource int default 1,
  cr_time    datetime,
  start_date datetime default '2015-11-01',
  end_date   datetime default '9999-01-01',
  PRIMARY KEY(subj_id,prop_id,obj_id,end_date)
);


-- Формы для набора фильтров

-- Действия для параметров
insert into triplets(subj_id, prop_id,obj_id) values(15211,5058,231);
insert into triplets(subj_id, prop_id,obj_id) values(15212,5058,2338);

insert into triplets(subj_id, prop_id,obj_id) values(15213,5058,2346);
insert into triplets(subj_id, prop_id,obj_id) values(15214,5058,234);
insert into triplets(subj_id, prop_id,obj_id) values(15215,5058,232);
insert into triplets(subj_id, prop_id,obj_id) values(15216,5058,2362);



-- Иерархия классов заявок
insert into triplets(subj_id, prop_id,obj_id) values(103,5061,1612);
insert into triplets(subj_id, prop_id,obj_id) values(109,5061,103);
-- delete from triplets where subj_id = 109 and prop_id = 5061
insert into triplets(subj_id, prop_id,obj_id) values(1010,5061,103);
insert into triplets(subj_id, prop_id,obj_id) values(1011,5061,103);
insert into triplets(subj_id, prop_id,obj_id) values(1012,5061,103);
-- Иерархии
-- insert into triplets(subj_id, prop_id,obj_id) values(1027,5061,132);

insert into triplets(subj_id, prop_id,obj_id) values(1525212,5061,1016);
-- Отношения между свойствами
insert into triplets(subj_id, prop_id,obj_id) values(5050,5049,5028);
insert into triplets(subj_id, prop_id,obj_id) values(50120,5049,5057);
-- Выпадающие списки
insert into triplets(subj_id, prop_id,obj_id) values(1191,1515,119);
insert into triplets(subj_id, prop_id,obj_id) values(1192,1515,119);
insert into triplets(subj_id, prop_id,obj_id) values(1193,1515,119);
insert into triplets(subj_id, prop_id,obj_id) values(1194,1515,119);
insert into triplets(subj_id, prop_id,obj_id) values(1195,1515,119);
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
-- Сущности для поиска
insert into triplets(subj_id, prop_id,obj_id) values(1209,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12010,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12011,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12012,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12013,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12014,1515,120);

insert into triplets(subj_id, prop_id,obj_id) values(1209,502,1193);
insert into triplets(subj_id, prop_id,obj_id) values(12010,502,1193);
insert into triplets(subj_id, prop_id,obj_id) values(12011,502,1193);
insert into triplets(subj_id, prop_id,obj_id) values(12012,502,1193);
insert into triplets(subj_id, prop_id,obj_id) values(12013,502,1193);
insert into triplets(subj_id, prop_id,obj_id) values(12014,502,1193);


insert into triplets(subj_id, prop_id,obj_id) values(1209,507,101);
insert into triplets(subj_id, prop_id,obj_id) values(12010,507,102);
insert into triplets(subj_id, prop_id,obj_id) values(12011,507,109);
insert into triplets(subj_id, prop_id,obj_id) values(12012,507,1010);
insert into triplets(subj_id, prop_id,obj_id) values(12013,507,1011);
insert into triplets(subj_id, prop_id,obj_id) values(12014,507,1012);

-- Состояние заявки на заказ запчасти
insert into triplets(subj_id, prop_id,obj_id) values(12015,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12016,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12017,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12018,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12019,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12020,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12021,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12022,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12023,1515,120);

insert into triplets(subj_id, prop_id,obj_id) values(12015,502,1194);
insert into triplets(subj_id, prop_id,obj_id) values(12016,502,1194);
insert into triplets(subj_id, prop_id,obj_id) values(12017,502,1194);
insert into triplets(subj_id, prop_id,obj_id) values(12018,502,1194);
insert into triplets(subj_id, prop_id,obj_id) values(12019,502,1194);
insert into triplets(subj_id, prop_id,obj_id) values(12020,502,1194);
insert into triplets(subj_id, prop_id,obj_id) values(12021,502,1194);
insert into triplets(subj_id, prop_id,obj_id) values(12022,502,1194);
insert into triplets(subj_id, prop_id,obj_id) values(12023,502,1194);

-- Состояние заявки на изъятие техники
insert into triplets(subj_id, prop_id,obj_id) values(12024,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12025,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12026,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12027,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12028,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12029,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12030,1515,120);


insert into triplets(subj_id, prop_id,obj_id) values(12024,502,1195);
insert into triplets(subj_id, prop_id,obj_id) values(12025,502,1195);
insert into triplets(subj_id, prop_id,obj_id) values(12026,502,1195);
insert into triplets(subj_id, prop_id,obj_id) values(12027,502,1195);
insert into triplets(subj_id, prop_id,obj_id) values(12028,502,1195);
insert into triplets(subj_id, prop_id,obj_id) values(12029,502,1195);
insert into triplets(subj_id, prop_id,obj_id) values(12030,502,1195);

-- Состояния сервисной заявки
insert into triplets(subj_id, prop_id,obj_id) values(12031,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12032,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12033,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12039,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12040,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12041,1515,120);

insert into triplets(subj_id, prop_id,obj_id) values(12031,502,1196);
insert into triplets(subj_id, prop_id,obj_id) values(12032,502,1196);
insert into triplets(subj_id, prop_id,obj_id) values(12033,502,1196);
insert into triplets(subj_id, prop_id,obj_id) values(12039,502,1196);
insert into triplets(subj_id, prop_id,obj_id) values(12040,502,1196);
insert into triplets(subj_id, prop_id,obj_id) values(12041,502,1196);


-- Состояния по оплате
insert into triplets(subj_id, prop_id,obj_id) values(12034,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12035,1515,120);
insert into triplets(subj_id, prop_id,obj_id) values(12036,1515,120);

insert into triplets(subj_id, prop_id,obj_id) values(12034,502,1197);
insert into triplets(subj_id, prop_id,obj_id) values(12035,502,1197);
insert into triplets(subj_id, prop_id,obj_id) values(12036,502,1197);


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
insert into triplets(subj_id, prop_id,obj_id) values(11111,507,168);
insert into triplets(subj_id, prop_id,obj_id) values(11112,507,1614);
insert into triplets(subj_id, prop_id,obj_id) values(11113,507,1016);
insert into triplets(subj_id, prop_id,obj_id) values(11114,507,1017);
insert into triplets(subj_id, prop_id,obj_id) values(11115,507,1014);
insert into triplets(subj_id, prop_id,obj_id) values(11116,507,1027);
insert into triplets(subj_id, prop_id,obj_id) values(11117,507,1032);

insert into triplets(subj_id, prop_id,obj_id) values(1151,507,102);
insert into triplets(subj_id, prop_id,obj_id) values(1152,507,101);
insert into triplets(subj_id, prop_id,obj_id) values(1153,507,109);
insert into triplets(subj_id, prop_id,obj_id) values(1154,507,1010);
insert into triplets(subj_id, prop_id,obj_id) values(1155,507,1011);
insert into triplets(subj_id, prop_id,obj_id) values(1156,507,1012);
insert into triplets(subj_id, prop_id,obj_id) values(1157,507,1013);
insert into triplets(subj_id, prop_id,obj_id) values(1158,507,104);
insert into triplets(subj_id, prop_id,obj_id) values(1159,507,1014);
insert into triplets(subj_id, prop_id,obj_id) values(15393,507,1027);


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
insert into triplets(subj_id, prop_id,obj_id) values(15393,5015,115);

-- Действия для кнопок
-- 15051.Главное меню
insert into triplets(subj_id, prop_id,obj_id) values(15051,5012,231);
insert into triplets(subj_id, prop_id,obj_id) values(15051,5012,232);
insert into triplets(subj_id, prop_id,obj_id) values(15051,5012,233);
insert into triplets(subj_id, prop_id,obj_id) values(15051,5012,234);
insert into triplets(subj_id, prop_id,obj_id) values(15051,5012,239);
insert into triplets(subj_id, prop_id,obj_id) values(15051,5012,2310);
insert into triplets(subj_id, prop_id,obj_id) values(15051,5012,2311);
insert into triplets(subj_id, prop_id,obj_id) values(15051,5012,2312);
insert into triplets(subj_id, prop_id,obj_id) values(15051,5012,2335);
-- 15052.Левый бар
insert into triplets(subj_id, prop_id,obj_id) values(15052,5012,231);
insert into triplets(subj_id, prop_id,obj_id) values(15052,5012,232);
insert into triplets(subj_id, prop_id,obj_id) values(15052,5012,233);
insert into triplets(subj_id, prop_id,obj_id) values(15052,5012,234);
insert into triplets(subj_id, prop_id,obj_id) values(15052,5012,239);
insert into triplets(subj_id, prop_id,obj_id) values(15052,5012,2310);
insert into triplets(subj_id, prop_id,obj_id) values(15052,5012,2311);
insert into triplets(subj_id, prop_id,obj_id) values(15052,5012,2312);
insert into triplets(subj_id, prop_id,obj_id) values(15052,5012,2335);
-- 15054.Обзор
insert into triplets(subj_id, prop_id,obj_id) values(15054,5012,231);
insert into triplets(subj_id, prop_id,obj_id) values(15054,5012,232);
insert into triplets(subj_id, prop_id,obj_id) values(15054,5012,233);
insert into triplets(subj_id, prop_id,obj_id) values(15054,5012,234);
insert into triplets(subj_id, prop_id,obj_id) values(15054,5012,239);
insert into triplets(subj_id, prop_id,obj_id) values(15054,5012,2310);
insert into triplets(subj_id, prop_id,obj_id) values(15054,5012,2311);
insert into triplets(subj_id, prop_id,obj_id) values(15054,5012,2312);
-- Верхние кнопки
insert into triplets(subj_id, prop_id,obj_id) values(15058,5012,231);
insert into triplets(subj_id, prop_id,obj_id) values(15059,5012,232);
insert into triplets(subj_id, prop_id,obj_id) values(150510,5012,233);
insert into triplets(subj_id, prop_id,obj_id) values(150511,5012,234);
insert into triplets(subj_id, prop_id,obj_id) values(150528,5012,2331);
insert into triplets(subj_id, prop_id,obj_id) values(150529,5012,2333);
-- Разделитель 1
insert into triplets(subj_id, prop_id,obj_id) values(150512,5012,239);
insert into triplets(subj_id, prop_id,obj_id) values(150512,5012,2310);
insert into triplets(subj_id, prop_id,obj_id) values(150512,5012,2311);
insert into triplets(subj_id, prop_id,obj_id) values(150512,5012,2312);
-- Разделитель 2
insert into triplets(subj_id, prop_id,obj_id) values(150513,5012,239);
insert into triplets(subj_id, prop_id,obj_id) values(150513,5012,2310);
insert into triplets(subj_id, prop_id,obj_id) values(150513,5012,2311);
insert into triplets(subj_id, prop_id,obj_id) values(150513,5012,2312);
-- Кнопки после разделителя
insert into triplets(subj_id, prop_id,obj_id) values(150514,5012,239);
insert into triplets(subj_id, prop_id,obj_id) values(150515,5012,2310);
insert into triplets(subj_id, prop_id,obj_id) values(150516,5012,2311);
insert into triplets(subj_id, prop_id,obj_id) values(150517,5012,2312);

-- 15055.Клиенты
insert into triplets(subj_id, prop_id,obj_id) values(15055,5012,235);
insert into triplets(subj_id, prop_id,obj_id) values(15055,5012,2313);
-- 150518.База клиентов'
insert into triplets(subj_id, prop_id,obj_id) values(150518,5012,235);
-- 150519.Разделитель
insert into triplets(subj_id, prop_id,obj_id) values(150519,5012,2313);
-- 150520.Создание
insert into triplets(subj_id, prop_id,obj_id) values(150520,5012,2313);
-- 150521.Новый клиент
insert into triplets(subj_id, prop_id,obj_id) values(150521,5012,2313);
-- 15056.Сотрудники
insert into triplets(subj_id, prop_id,obj_id) values(15056,5012,236);
insert into triplets(subj_id, prop_id,obj_id) values(15056,5012,2314);
-- 150522.Список сотрудников
insert into triplets(subj_id, prop_id,obj_id) values(150522,5012,236);
-- 150523.Разделитель
insert into triplets(subj_id, prop_id,obj_id) values(150523,5012,2314);
-- 150524.Создание
insert into triplets(subj_id, prop_id,obj_id) values(150524,5012,2314);
-- 150525.Новый сотрудник
insert into triplets(subj_id, prop_id,obj_id) values(150525,5012,2314);
-- 15057.Отчёты
insert into triplets(subj_id, prop_id,obj_id) values(15057,5012,2335);

-- 150532.Магазины
insert into triplets(subj_id, prop_id,obj_id) values(150532,5012,2346);
insert into triplets(subj_id, prop_id,obj_id) values(150532,5012,2347);

-- Права пользователей START
-- 15011.Чернов Максим
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,231);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,232);
-- insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2326);
-- insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2315);
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
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2314);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,239);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2310);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2311);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2312);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2313);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2335); 
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2338);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2341);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2342);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2334);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2344);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2345);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2346);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2347);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2348);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2340);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2336);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2352);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2353);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2354);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2356);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2358);

insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2359);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2360);
insert into triplets(subj_id, prop_id,obj_id) values(15011,5011,2361);
select * from triplets where obj_id = 2315;


-- 15012.Лобанов Станислав
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,231);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,232);
-- insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2326);
-- insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2315);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2321);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,233);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,234);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2328);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2329);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2330);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2331);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,235);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,236);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2325);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2332);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2324);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,237);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,238);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2323);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2322);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2333);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2314);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,239);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2310);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2311);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2312);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2313);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2335); 
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2338);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2341);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2342);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2334);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2344);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2345);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2346);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2347);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2348);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2340);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2336);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2352);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2353);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2354);

-- 15014.Зякина Валентина
insert into triplets(subj_id, prop_id,obj_id) values(15014,5011,2335);
-- 15013.Артур Филатов
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,232);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2326);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2315);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2321); -- Просмотр Заявки на сервис
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2328);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2329);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2330);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,235);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,236);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2325);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2332);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2324);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,237);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,238);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2323);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2322);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2310);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2354);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2336);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2340);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2313);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2314);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2335);
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2341); -- Расширенный просмотр
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2344); -- 2344.Действия
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2338); -- 2338.Сессии
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2334); -- 2334.Изменение 
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2356); -- Создание адресов
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2357); -- Создание телефонов
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2358); -- Отображение телефонов

insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2359); -- Отображение моделей техники
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2346); -- Отображение запчастей
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2347); -- Отображение категорий продуктов

insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2360); -- Создание запчасти
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2361); -- Созданеи модели

insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,234); -- Просмотр заявок на изъятие техники
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2312); -- Создание заявки на изъятие техники

insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2352); -- Записки операторов

insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,231); -- Просмотр Заявок на сервис
insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,239); -- Создание Заявки на сервис

insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2362); -- Просмотр комментариев

insert into triplets(subj_id, prop_id,obj_id) values(15013,5011,2345); -- Создание сущности

-- 15016.Великанова Юлия
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,232);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2326);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2315);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2321);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2328);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2329);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2330);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,235);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,236);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2325);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2332);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2324);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,237);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,238);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2323);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2322);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2310);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2354);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2336);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2340);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2313);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2314);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2335);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2341); -- Расширенный просмотр
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2344); -- 2344.Действия
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2338); -- 2338.Сессии
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2334); -- 2334.Изменение 
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2356); -- Создание адресов
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2357); -- Создание телефонов
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2358); -- Отображение телефонов

insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2359); -- Отображение моделей техники
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2346); -- Отображение запчастей
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2347); -- Отображение категорий продуктов

insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2360); -- Создание запчасти
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2361); -- Созданеи модели

insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,234); -- Просмотр заявок на изъятие техники
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2312); -- Создание заявки на изъятие техники

insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2352); -- Записки операторов

insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,231); -- Просмотр Заявок на сервис
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,239); -- Создание Заявки на сервис
-- 15017.Овчинникова Елена
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,232);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2326);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2315);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2321);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2328);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2329);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2330);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,235);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,236);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2325);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2332);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2324);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,237);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,238);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2323);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2322);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2310);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2354);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2336);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2340);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2313);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2314);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2335);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2341); -- Расширенный просмотр
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2344); -- 2344.Действия
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2338); -- 2338.Сессии
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2334); -- 2334.Изменение 
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2356); -- Создание адресов
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2357); -- Создание телефонов
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2358); -- Отображение телефонов

insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2359); -- Отображение моделей техники
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2346); -- Отображение запчастей
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2347); -- Отображение категорий продуктов

insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2360); -- Создание запчасти
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2361); -- Созданеи модели

insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,234); -- Просмотр заявок на изъятие техники
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2312); -- Создание заявки на изъятие техники

insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2352); -- Записки операторов

insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,231); -- Просмотр Заявок на сервис
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,239); -- Создание Заявки на сервис
-- 15018.Короткова Мария
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,232);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2326);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2315);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2321);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2328);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2329);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2330);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,235);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,236);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2325);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2332);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2324);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,237);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,238);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2323);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2322);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2310);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2354);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2336);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2340);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2313);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2314);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2335);
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2341); -- Расширенный просмотр
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2344); -- 2344.Действия
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2338); -- 2338.Сессии
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2334); -- 2334.Изменение 
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2356); -- Создание адресов
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2357); -- Создание телефонов
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2358); -- Отображение телефонов

insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2359); -- Отображение моделей техники
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2346); -- Отображение запчастей
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2347); -- Отображение категорий продуктов

insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2360); -- Создание запчасти
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2361); -- Созданеи модели

insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,234); -- Просмотр заявок на изъятие техники
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2312); -- Создание заявки на изъятие техники

insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,2352); -- Записки операторов

insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,231); -- Просмотр Заявок на сервис
insert into triplets(subj_id, prop_id,obj_id) values(15018,5011,239); -- Создание Заявки на сервис
-- 15019
insert into triplets(subj_id, prop_id,obj_id) values(15019,5011,2323);
insert into triplets(subj_id, prop_id,obj_id) values(15019,5011,233);
-- 150110
insert into triplets(subj_id, prop_id,obj_id) values(150110,5011,2321);
insert into triplets(subj_id, prop_id,obj_id) values(150110,5011,231);
-- Права пользователей END


-- Связь заявок START
insert into triplets(subj_id, prop_id,obj_id) values(15031,5028,15032);
insert into triplets(subj_id, prop_id,obj_id) values(15031,5028,15033);
insert into triplets(subj_id, prop_id,obj_id) values(15034,5028,15031);
-- Связь заявок END

-- Возвращение значений
insert into triplets(id,subj_id,prop_id,obj_id,value,is_resource,cr_time,start_date,end_date)
select id,subj_id,prop_id,obj_id,value,is_resource,cr_time,start_date,end_date 
from triplets2
where (id,subj_id,prop_id,obj_id,value,is_resource,cr_time,start_date,end_date) not in
(select id,subj_id,prop_id,obj_id,value,is_resource,cr_time,start_date,end_date from triplets);
-- Пересоздание таблицы высказываний END


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
  value_template varchar(256), -- Шаблон отображения ресурса
  ent_prop_id bigint,
  event_form bigint,
  event_form_viewer bigint,
  event_form_container varchar(256),
  start_date datetime default '2015-11-01',
  end_date   datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
);  


-- Получение столбцов по идентификатору формы
select id, name, position, property, alias, domain, type, template , editable, location, pid, external
from sColumns
where form = 1153;

select * from sColumns;


delete from sColumns where form = 1153;

-- 1111
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id,event_form,event_form_viewer,event_form_container) 
  values(11295, 'Id', 1, 0, NULL,0,1111,NULL,129,151145,1151,null,'#main_data_container');
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(1121,'Фамилия',2, 1, NULL,1,1111,NULL,1210,151146);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(1122,'Имя',3,509, NULL,1,1111,NULL,1210,151147);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(1123,'Отчество',4,1, NULL,1,1111,NULL,1210,151148);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(1124,'Должность',5,1, NULL,1,1111,NULL,1210,151149);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(1125,'Телефон',6,1, NULL,1,1111,NULL,1210,151150);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(1126,'Адрес',7,1, NULL,1,1111,NULL,1210,151151);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(1127,'День рождения',8,1, NULL,1,1111,NULL,1210,151152);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(1128,'Состояние',9,1, NULL,1,1111,NULL,1210,151153);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(1129,'Комментарий',10,1, NULL,1,1111,NULL,1210,151154);
  
  select max(id) from sColumns;
-- 1112
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,event_form,event_form_viewer,event_form_container) 
  values(11296, 'Id', 1, 0, NULL,0,1112,NULL,129,151140,1152,null,'#main_data_container');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11210,'Фамилия',2,1, NULL,1,1112,NULL,1210,151141);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11211,'Имя',3,1, NULL,1,1112,NULL,1210,151142);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11212,'Отчество',4,1, NULL,1,1112,NULL,1210,151143);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11213,'Комментарий',5, 1, NULL,1,1112,NULL,1210,151144);
  
  select max(id) from sColumns;
-- 1113
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,event_form,event_form_viewer,event_form_container) 
  values(11297, 'Id', 1, 0, NULL,0,1113,NULL,129,151155,1153,null,'#main_data_container');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11214,'Дата создания',2, 1, NULL,1,1113,NULL,1210,151156);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11223,'Дата выезда',3,1, NULL,1,1113,NULL,1210,151168);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11222,'Время выезда',4,1, null,1,1113,NULL,1210,151167);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11216,'Клиент',5,0, NULL,1,1113,NULL,129,151158);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11217,'Телефон',6,0, NULL,1,1113,NULL,129,151159);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11218,'Адрес',7,0, NULL,1,1113,NULL,129,151160);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11224,'Модель',8,1, NULL,1,1113,NULL,1210,151169);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11221,'Возможные проблемы',9,1, NULL,1,1113,NULL,1210,151163);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11225,'Стоимость запчастей',10,1, NULL,1,1113,NULL,1210,151170);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11226,'Стоимость ремонта',11,1, NULL,1,1113,NULL,1210,151171);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11215,'Исполнитель',12,0, NULL,1,1113,NULL,129,151157);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112529,'Состояние оплаты',13,0, null,1,1113,NULL,1210,1511297);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11219,'Состояние',14,0, null,1,1113,NULL,1210,1511296);

insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11227,'Комментарий',15,1, NULL,1,1113,NULL,1210,151165);

select max(id) from sColumns;

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
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112533, 'Состояние оплаты', 2, 5048, 'name', null, 0,NULL,1,'',null,112529,0,121);
    
  
  
select * from dim_resource where id = 1114;
-- 1114
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,event_form,event_form_viewer,event_form_container) 
  values(11298, 'Id', 1, 0, NULL,0,1114,NULL,129,151155,1154,null,'#main_data_container');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11228,'Дата создания',2,1, NULL,1,1114,NULL,1210,151156);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,event_form,event_form_viewer,event_form_container) 
  values(11229,'Заказал',3, 0, NULL,1,1114,NULL,129,151157,1151,null,'#main_data_container');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,event_form,event_form_viewer,event_form_container) 
  values(11230,'Клиент',4,0, NULL,1,1114,NULL,129,151158,1152,null,'#main_data_container');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,event_form,event_form_viewer,event_form_container) 
  values(11231,'Телефон',5,0, NULL,1,1114,NULL,129,151159,1159,null,'#main_data_container');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,event_form,event_form_viewer,event_form_container) 
  values(11232,'Адрес',6, 0, NULL,1,1114,NULL,129,151160,1157,null,'#main_data_container');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11233,'Состояние',7,0, NULL,1,1114,NULL,1210,151161);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112530,'Состояние оплаты',7,0, null,1,1114,NULL,1210,1511297);
  /*
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11235,'Возможные проблемы',9, 1, NULL,1,1114,NULL,1210,151163);
  */
  -- delete from sColumns where id =11235;
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id)
  values(11236,'Дата заказа',10, 1, NULL,1,1114,NULL,1210,151173);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11237,'Дата прихода',11,1, NULL,1,1114,NULL,1210,151174);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11238,'Код запчасти',12, 1, NULL,1,1114,NULL,1210,151175);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11239,'Поставщик',13, 0, NULL,1,1114,NULL,1210,151176);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11240,'Цена покупки',14, 1, NULL,1,1114,NULL,1210,151177);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11241,'Цена продажи',15, 1, NULL,1,1114,NULL,1210,151178);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11242,'Комментарий',16, 1, NULL,1,1114,NULL,1210,151165);
  
select max(id) from sColumns;
  
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
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112508, 'Поставщик', 2, 5048, 'name', null, 0,NULL,1,'dim_resource',null,11239,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112509, 'Состояние', 2, 5048, 'name', null, 0,NULL,1,'dim_resource',null,11233,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112534, 'Состояние оплаты', 2, 5048, 'name', null, 0,NULL,1,'',null,112530,0,121);
-- 1115
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11299, 'Id', 1, 0, NULL,0,1115,NULL,129,151155);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11243,'Дата создания',2, 1, NULL,0,1115,NULL,1210,151156);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11244,'Исполнитель',3, 0, NULL,1,1115,NULL,129,151157);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11245,'Клиент',4, 0, NULL,1,1115,NULL,129,151158);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11246,'Телефон',5, 0, NULL,1,1115,NULL,129,151159);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11247,'Адрес',6,0, NULL,1,1115,NULL,129,151160);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11248,'Состояние',7,1, NULL,1,1115,NULL,1210,151161);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112531,'Состояние оплаты',7,0, null,1,1115,NULL,1210,1511297);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11250,'Возможные проблемы',9, 1, NULL,1,1115,NULL,1210,151163);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11251,'Время выезда',10,1, NULL,1,1115,NULL,1210,151180);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11252,'Дата выезда',11,1, NULL,1,1115,NULL,1210,151181);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11253,'Поставщик',12, 1, NULL,1,1115,NULL,1210,151182);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11254,'Код запчасти',13, 1, NULL,1,1115,NULL,1210,151183);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11255,'Цена покупки',14, 1, NULL,1,1115,NULL,1210,151184);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11256,'Цена продажи',15, 1, NULL,1,1115,NULL,1210,151185);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11257,'Цена доставки',16, 1, NULL,1,1115,NULL,1210,151186);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11258,'Комментарий',17, 1, NULL,1,1115,NULL,1210,151165);
  
select max(id) from sColumns;

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
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,event_form,event_form_viewer,event_form_container) 
  values(112100, 'Id', 1, 0, NULL,0,1116,NULL,129,151155,1156,null,'#main_data_container');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11259,'Дата создания',2, 1, NULL,1,1116,NULL,1210,151156);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11260,'Обработал',3,0, NULL,1,1116,NULL,129,151157);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11261,'Клиент',4,0, NULL,1,1116,NULL,129,151158);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11262,'Телефон',5,0, NULL,1,1116,NULL,129,151159);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11263,'Адрес',6,0, NULL,1,1116,NULL,129,151160);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11264,'Состояние',7,0, NULL,1,1116,NULL,1210,1511289);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112532,'Состояние оплаты',7,0, null,1,1116,NULL,1210,1511297);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11266,'Описание проблемы',9, 1, NULL,1,1116,NULL,1210,151163);
  /*
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11267,'Время выезда',10,1, NULL,1,1116,NULL,1210,151188);
  */
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11268,'Дата забора',11,1, NULL,1,1116,NULL,1210,151189);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11519,'Дата отвоза',11,1, NULL,1,1116,NULL,1210,1511288);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11269,'Комментарий',12,1, NULL,1,1116,NULL,1210,151165);
  
select max(id) from sColumns;

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
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112518, 'Состояние', 2, 5048, 'name', null, 0,NULL,1,'dim_resource',null,11264,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112535, 'Состояние оплаты', 2, 5048, 'name', null, 0,NULL,1,'',null,112532,0,121);
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
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id,event_form,event_form_viewer,event_form_container) 
  values(112184, 'Id', 1, 5048, 'id', 1013, 0, NULL,0,'addresses',1119,NULL,0,129,151195,1157,null,'#main_data_container');
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
 values( 112188,'Страна',2,5068,'country',NULL, 1, NULL,1,NULL,1119,NULL,0,1210,151196);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
 values( 112189,'Область',3,5069,'region',NULL, 1, NULL,1,NULL,1119,NULL,0,1210,151197);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
 values( 112190,'Район',4,5070,'destrict',NULL, 1, NULL,1,NULL,1119,NULL,0,1210,151198);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
 values( 112191,'Нас. пункт',5,5071,'town',NULL, 1, NULL,1,NULL,1119,NULL,0,1210,151199);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
 values( 112192,'Улица',6,5072,'street',NULL, 1, NULL,1,NULL,1119,NULL,0,1210,1511100);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
 values( 112193,'Дом',7,5073,'home',NULL, 1, NULL,1,NULL,1119,NULL,0,1210,1511101);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
 values( 112194,'Корпус',8,5074,'housing',NULL, 1, NULL,1,NULL,1119,NULL,0,1210,1511102);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
 values( 112195,'Квартира',9,5075,'flat',NULL, 1, NULL,1,NULL,1119,NULL,0,1210,1511103);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer,ent_prop_id) 
 values( 112196,'Полный',10,5066,'value',NULL, 1, NULL,1,NULL,1119,NULL,0,1210,1511104);

-- 11110
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112366, 'Id', 1, 0, NULL,0,11110,NULL,129,1511105);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112367,'Телефон1',2, 0, NULL,1,11110,NULL,129,1511106);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112378,'Телефон2',3, 0, NULL,1,11110,NULL,129,1511107);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112369,'Клиент',4,0, NULL,1,11110,NULL,129,1511108);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112370,'Сотрудник',5, 0, NULL,1,11110,NULL,129,1511109);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112371,'Дата',6, 1, NULL,1,11110,NULL,1210,1511110);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112372,'Продолжительность',7, 1, NULL,1,11110,NULL,1210,1511111);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112373,'Тип звонка',8, 1, NULL,1,11110,NULL,1210,1511112);
 
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112374,'Номер 1',1,null,'number',NULL, 1, NULL,1,NULL,null,112367,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
 values( 112375,'Номер 2',1,null,'number',NULL, 1, NULL,1,NULL,null,112378,0,121);

insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112376, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,112369,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112377, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,112369,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112382, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,112369,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112379, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,112370,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112380, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,112370,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112381, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,112370,0,121);
  
-- 11111 Просмотр сессий
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112436, 'Id', 1, 0, NULL,0,11111,NULL,1210,1511128);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112437,'Дата создания',2, 0, NULL,1,11111,NULL,1210,1511129);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112438,'Идентификатор сессии',3, 1, NULL,1,11111,NULL,1210,1511130);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112439,'Сотрудник',4,0, NULL,0,11111,NULL,129,1511131);
 
 
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112440, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,112439,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112441, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,112439,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112442, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,112439,0,121);
  
-- 11112 Просмотр выполнений действий
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112444, 'Id', 1, 0, NULL,0,11112,NULL,1210,1511158);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112445,'Пользователь',2, 0, NULL,1,11112,NULL,129,1511159);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112446,'Действие',3, 0, NULL,1,11112,NULL,1210,1511160);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112447,'Объект',4, 0, NULL,1,11112,NULL,129,1511161);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112448,'Домен',5, 0, NULL,1,11112,NULL,1210,1511162);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112449,'Состояние 1',6, 0, NULL,1,11112,NULL,1210,1511163);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112450,'Состояние 2',7, 0, NULL,1,11112,NULL,1210,1511164);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112451,'Родительское действие',8, 0, NULL,1,11112,NULL,1210,1511165);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112452,'Время начала',9, 0, NULL,1,11112,NULL,1210,1511166);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112453,'Время окончания',10, 0, NULL,1,11112,NULL,1210,1511167);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112454, 'Имя', 1, 509, 'first_name', null, 1,NULL,1,null,null,112445,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112455, 'Разделитель', 2, null, ''' ''', null, 1,NULL,1,null,null,112445,0,121);
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112456, 'Фамилия', 3, 508, 'second_name', null, 1,NULL,1,null,null,112445,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112457, 'Название', 1, 509, 'name', null, 1,NULL,1,null,null,112446,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112458, 'Название', 1, 509, 'name', null, 1,NULL,1,null,null,112447,0,121);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112459, 'Название', 1, 509, 'name', null, 1,NULL,1,null,null,112448,0,121);

select * from sColumns where form = 11112;

-- 11113
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112460, 'Id', 1, 0, NULL,0,11113,NULL,1210,1511173);
  
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112461,'Артикул',1, 0, NULL,1,11113,NULL,1210,1511174);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112462,'Наименование',2, 0, NULL,1,11113,NULL,1210,1511175);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112463,'Производитель',6, 0, NULL,1,11113,NULL,1210,1511176);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112464,'Поставщик',7, 0, NULL,1,11113,NULL,1210,1511177);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112465,'Цена покупки',3, 0, NULL,1,11113,NULL,1210,1511179);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112470,'Наценка',3, 4, NULL,1,11113,NULL,1211,1511185);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112466,'Цена продажи',5, 0, NULL,1,11113,NULL,1210,1511180);
  


-- 11114
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112467, 'Id', 1, 0, NULL,0,11114,NULL,1210,1511182);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112468,'Наименование',2, 0, NULL,1,11114,NULL,1210,1511183);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112469,'Родительская категория',3, 0, NULL,1,11114,NULL,1210,1511184);
-- 11115 Просмотр телефонов
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id,event_form,event_form_viewer,event_form_container) 
  values(112487, 'Id', 1, 0, NULL,0,11115,NULL,129,1511113,1159,null,'#main_data_container');
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112488, 'Номер', 1, 0, NULL,0,11115,NULL,1210,1511114);
  
-- 11116 Просмотр моделей техники
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id,event_form,event_form_viewer,event_form_container) 
  values(112496, 'Id', 1, 0, NULL,0,11116,NULL,129,1511214,15393,null,'#main_data_container');
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112497, 'Производитель', 2, 0, NULL,0,11116,NULL,1210,1511215);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112498, 'Тип техники', 3, 0, NULL,0,11116,NULL,1210,1511216);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112499, 'Название', 4, 1, NULL,0,11116,NULL,1210,1511217);
  
insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112510, 'Тип техники', 1, 509, 'show_name', null, 1,NULL,1,null,null,112498,0,121);

insert into sColumns(id, name, position, property, alias, domain, type, template,editable,location,form,pid,external,viewer) 
  values(112511, 'Производитель', 1, 509, 'show_name', null, 1,NULL,1,null,null,112497,0,121);

-- 11117 Просмотр комментариев
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id,event_form,event_form_viewer,event_form_container) 
  values(112537, 'Id', 1, 0, NULL,0,11117,NULL,129,1511301,15394,null,'#main_data_container');
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112538, 'Дата создания', 2, 1, NULL,0,11117,NULL,1210,1511302);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112539, 'Создатель', 3, 0, NULL,0,11117,NULL,1210,1511303);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112540, 'Текст', 4, 1, NULL,0,11117,NULL,1210,1511304);

select max(id) from sColumns;
-- 1151
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112103, 'Id', 1, 1, NULL,0,1151,NULL,121,151145);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112108,'Фамилия',2,1, NULL,1,1151,NULL,121,151146);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112109,'Имя',3,1, NULL,1,1151,NULL,121,151147);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112110,'Отчество',4,1, NULL,1,1151,NULL,121,151148);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112111,'Должность',5,1, NULL,1,1151,NULL,121,151149);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112112,'Телефон',6,1, NULL,1,1151,NULL,121,151150);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112113,'Адрес',7,1, NULL,1,1151,NULL,121,151151);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112114,'День рождения',8,1, NULL,1,1151,NULL,121,151152);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112115,'Состояние',9,1, NULL,1,1151,NULL,121,151153);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112116,'Комментарий',10,1, NULL,1,1151,NULL,121,151154);

-- 1152
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112104, 'Id', 1,  1, NULL,0,1152,NULL,121,151140);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112117,'Фамилия',2,1, NULL,1,1152,NULL,121,151141);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112118,'Имя',3,1, NULL,1,1152,NULL,121,151142);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112119,'Отчество',4,1, NULL,1,1152,NULL,121,151143);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112120,'Комментарий',5,1, NULL,1,1152,NULL,121,151144);
 
-- 1153
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11294, 'Id', 1, 1, NULL,0,1153,NULL,121,151155);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11279, 'Дата создания', 2, 3, '%Y-%m-%d %H:%i:%s',0,1153,NULL,122,151156);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11289, 'Дата выезда', 3, 3, '%Y-%m-%d',1,1153,NULL,122,151168);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11288, 'Время выезда', 4, 1, NULL,1,1153,NULL,126,151167);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template,event_form,event_form_viewer,event_form_container) 
  values(11281, 'Исполнитель', 5, 0,NULL,1,1153,NULL,123,151157,'%508% %509%',11510,null,'#dop_form_interface');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template,event_form,event_form_viewer,event_form_container) 
  values(11282, 'Клиент', 6, 0, NULL,1,1153,NULL,123,151158,'%508% %509%',1152,null,'#dop_form_interface');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template,event_form,event_form_viewer,event_form_container) 
  values(11283, 'Телефон', 7, 0, NULL,1,1153,NULL,123,151159,'%5067%',1159,null,'#dop_form_interface');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template,event_form,event_form_viewer,event_form_container) 
  values(11284, 'Адрес', 8, 0, NULL,1,1153,NULL,123,151160,'%5066%',1157,null,'#dop_form_interface');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112536, 'Название модели',9, 1, NULL,1,1153,NULL,1222,1511299);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11290, 'Модель', 10, 0, NULL,1,1153,NULL,123,151169);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11291, 'Стоимость запчастей', 11, 1, NULL,1,1153,NULL,121,151170);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11292, 'Стоимость ремонта', 12, 1, NULL,1,1153,NULL,121,151171);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11287, 'Возможные проблемы', 13, 1, NULL,1,1153,NULL,1222,151163);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11285, 'Состояние', 14, 4, NULL,1,1153,NULL,124,1511296);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112525, 'Состояние по оплате', 15, 4, NULL,1,1153,NULL,124,1511297);  
  /*
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(11286, 'Результат', 8,  0, NULL,1,1153,NULL,123,151162,'Заявка №%5048%');
  */

insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11293, 'Комментарий', 16, 1, NULL,1,1153,NULL,1222,151165);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112524,'Вложение',17,0, NULL,1,1153,NULL,1224,1511294);
  /*
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(112168, 'Предистория', 16, 0, NULL,1,1153,NULL,123,151164,'Заявка №%5048%');
*/

select max(id) from sColumns;

-- 1154
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112300, 'Id', 1, 1, NULL,0,1154,NULL,121,151155);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112301,'Дата создания',2,1, NULL,0,1154,NULL,122,151156);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template,event_form,event_form_viewer,event_form_container) 
  values(112302,'Обработал',3, 0, NULL,1,1154,NULL,123,1511266,'%508% %509%',11510,null,'#dop_form_interface');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template,event_form,event_form_viewer,event_form_container) 
  values(112490,'Заказал',3, 0, NULL,1,1154,NULL,123,151157,'%508% %509%',11510,null,'#dop_form_interface');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template,event_form,event_form_viewer,event_form_container) 
  values(112303,'Клиент',4,0, NULL,1,1154,NULL,123,151158,'%508% %509%',1152,null,'#dop_form_interface');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template,event_form,event_form_viewer,event_form_container) 
  values(112304,'Телефон',5,0, NULL,1,1154,NULL,123,151159,'%5067%',1159,null,'#dop_form_interface');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template,event_form,event_form_viewer,event_form_container) 
  values(112305,'Адрес',6, 0, NULL,1,1154,NULL,123,151160,'%5066%',1157,null,'#dop_form_interface');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112306,'Состояние',7,1, NULL,1,1154,NULL,124,151161);
  
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112526,'Состояние по оплате',7,1, NULL,1,1154,NULL,124,1511297);
/*
 insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112307,'Возможные проблемы',9, 1, NULL,1,1154,NULL,121,151163);
  */
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id)
  values(112308,'Дата заказа',8, 1, NULL,1,1154,NULL,122,151173);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112309,'Дата прихода',9,1, NULL,1,1154,NULL,122,151174);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112310,'Код запчасти',10, 1, NULL,1,1154,NULL,121,151175);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(112311,'Поставщик',11, 0, NULL,1,1154,NULL,123,151176,'%501%');
  
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(112489,'Бренд техники',12, 0, NULL,1,1154,NULL,123,1511267,'%50139%');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(112491,'Бренд производителя',13, 0, NULL,1,1154,NULL,123,1511268,'%50139%');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(112492,'Запчасть',14, 0, NULL,1,1154,NULL,123,1511269,'%50139%');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112493,'Название запчасти',15, 1, NULL,1,1154,NULL,1222,1511271);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(112494,'Модель техники',16, 0, NULL,1,1154,NULL,123,1511272,'%50139%');
  
  
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112312,'Цена покупки',17, 1, NULL,1,1154,NULL,121,151177);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112313,'Цена продажи',18, 1, NULL,1,1154,NULL,121,151178);
  
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112495,'Получено',19, 1, NULL,1,1154,NULL,121,1511270);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112506,'Предоплата',20, 1, NULL,1,1154,NULL,121,1511284);  
  
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112522,'Вложение',21,0, NULL,1,1154,NULL,1224,1511294);

  
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112314,'Комментарий',22, 1, NULL,1,1154,NULL,1222,151165);
  
select * from sColumns;
  


-- 1155
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112323, 'Id', 1, 1, NULL,0,1155,NULL,121,151155);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112324,'Дата создания',2, 1, NULL,0,1115,NULL,121,151156);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(112325,'Исполнитель',3, 0, NULL,1,1155,NULL,123,151157,'%508% %509%');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(112326,'Клиент',4, 0, NULL,1,1155,NULL,123,151158,'%508% %509%');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(112327,'Телефон',5, 0, NULL,1,1155,NULL,123,151159,'%5067%');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(112328,'Адрес',6,0, NULL,1,1155,NULL,123,151160,'%5066%');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112329,'Состояние',7,1, NULL,1,1155,NULL,121,151161);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112527,'Состояние по оплате',7,1, NULL,1,1155,NULL,121,1511297);  
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112330,'Возможные проблемы',9, 1, NULL,1,1155,NULL,121,151163);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112331,'Время выезда',10,1, NULL,1,1155,NULL,121,151180);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112332,'Дата выезда',11,1, NULL,1,1155,NULL,121,151181);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112333,'Поставщик',12, 1, NULL,1,1155,NULL,121,151182);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112334,'Код запчасти',13, 1, NULL,1,1155,NULL,121,151183);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112335,'Цена покупки',14, 1, NULL,1,1155,NULL,121,151184);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112336,'Цена продажи',15, 1, NULL,1,1155,NULL,121,151185);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112337,'Цена доставки',16, 1, NULL,1,1155,NULL,121,151186);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112338,'Комментарий',17, 1, NULL,1,1155,NULL,121,151165);
  

-- 1156
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112347, 'Id', 1, 1, NULL,0,1156,NULL,121,151155);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112348,'Дата создания',2, 1, NULL,0,1156,NULL,122,151156);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template,event_form,event_form_viewer,event_form_container) 
  values(112349,'Обработал',3,0, NULL,1,1156,NULL,123,151157,'%508% %509%',11510,null,'#dop_form_interface');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template,event_form,event_form_viewer,event_form_container) 
  values(112350,'Клиент',4,0, NULL,1,1156,NULL,123,151158,'%508% %509%',1152,null,'#dop_form_interface');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template,event_form,event_form_viewer,event_form_container) 
  values(112351,'Телефон',5,0, NULL,1,1156,NULL,123,151159,'%5067%',1159,null,'#dop_form_interface');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template,event_form,event_form_viewer,event_form_container) 
  values(112352,'Адрес',6,0, NULL,1,1156,NULL,123,151160,'%5066%',1157,null,'#dop_form_interface');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112353,'Состояние',7,1, NULL,1,1156,NULL,124,1511289);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112354,'Описание проблемы',9, 1, NULL,1,1156,NULL,121,151163);
/*
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112355,'Время выезда',10,1, NULL,1,1156,NULL,121,151188);
*/
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(112512,'Модель техники',11,0, NULL,1,1156,NULL,123,1511287,'%50139%');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112513,'Дата забора',12,1, NULL,1,1156,NULL,122,151189);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template,event_form,event_form_viewer,event_form_container) 
  values(112514,'Исполнитель забора',13,0, NULL,1,1156,NULL,123,1511291,'%508% %509%',11510,null,'#dop_form_interface');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112515,'Дата отвоза',14,1, NULL,1,1156,NULL,122,1511288);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template,event_form,event_form_viewer,event_form_container) 
  values(112516,'Исполнитель отвоза',15,0, NULL,1,1156,NULL,123,1511292,'%508% %509%',11510,null,'#dop_form_interface');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112517,'Срок изъятия',16,1, NULL,1,1156,NULL,121,1511290);
  
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112520,'Список запчастей',17,1, NULL,1,1156,NULL,121,1511295);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112521,'Вложение',18,0, NULL,1,1156,NULL,1224,1511294);
  
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112357,'Комментарий',12,1, NULL,1,1156,NULL,121,151165);
  

-- 1157
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112186, 'Id', 1, 1, NULL,0,1157,NULL,123,151195);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112528,'Индекс',2,1, NULL,1,1157,NULL,121,1511298);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112197,'Страна',2,1, NULL,1,1157,NULL,121,151196);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112198,'Область',3,1, NULL,1,1157,NULL,121,151197);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112199,'Район',4, 1, NULL,1,1157,NULL,121,151198);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112200,'Нас. пункт',5, 1, NULL,1,1157,NULL,121,151199);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112201,'Улица',6,1, NULL,1,1157,NULL,121,1511100);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112202,'Дом',7,1, NULL,1,1157,NULL,121,1511101);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112203,'Корпус',8, 1, NULL,1,1157,NULL,121,1511102);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112204,'Квартира',9,1, NULL,1,1157,NULL,121,1511103);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112205,'Полный',10,1, NULL,0,1157,NULL,121,1511104);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112504,'Объект',10,1, NULL,1,1157,NULL,121,1511281);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112505,'Комментарий',10,1, NULL,1,1157,NULL,121,1511282);
 -- update sColumns set editable = 0 where id = 112205;
-- 1158
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112187, 'Id', 1, 1, NULL,0,1158,NULL,123,1511105);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112215,'Телефон1',2, 0, NULL,1,1158,NULL,123,1511106);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112216,'Телефон2',3, 0, NULL,1,1158,NULL,123,1511107);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112217,'Клиент',4,0, NULL,1,1158,NULL,123,1511108);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112218,'Сотрудник',5, 0, NULL,1,1158,NULL,123,1511109);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112219,'Дата',6, 1, NULL,1,1158,NULL,121,1511110);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112220,'Продолжительность',7, 1, NULL,1,1158,NULL,121,1511111);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112221,'Тип звонка',8, 1, NULL,1,1158,NULL,121,1511112);
 
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
 
-- 1159
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112206, 'Id', 1, 1, NULL,0,1159,NULL,123,1511113);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112207,'Номер',2,1, NULL,1,1159,NULL,121,1511114);
 
 
-- 11510 Создание пользователя
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112291,'Фамилия',2,1, NULL,1,11510,NULL,121,151146);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112292,'Имя',3,1, NULL,1,11510,NULL,121,151147);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112293,'Отчество',4,1, NULL,1,11510,NULL,121,151148);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112294,'Должность',5,1, NULL,1,11510,NULL,121,151149);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112295,'Телефон',6,1, NULL,1,11510,NULL,121,151150);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112296,'Адрес',7,1, NULL,1,11510,NULL,121,151151);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112297,'День рождения',8,1, NULL,1,11510,NULL,121,151152);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112298,'Состояние',9,1, NULL,1,11510,NULL,121,151153);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112299,'Комментарий',10,1, NULL,1,11510,NULL,121,151154);
  
-- 11511 Создание клиента
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112383,'Фамилия',2,1, NULL,1,11511,NULL,121,151141);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112384,'Имя',3,1, NULL,1,11511,NULL,121,151142);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112385,'Отчество',4,1, NULL,1,11511,NULL,121,151143);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112386,'Комментарий',5,1, NULL,1,11511,NULL,121,151144);

-- 11512 Создание сервисной заявки
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112387, 'Исполнитель', 3, 0,NULL,1,11512,NULL,123,151157);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112388, 'Клиент', 4, 0, NULL,1,11512,NULL,123,151158);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112389, 'Телефон', 5, 0, NULL,1,11512,NULL,123,151159);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112390, 'Адрес', 6, 0, NULL,1,11512,NULL,123,151160);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112391, 'Состояние', 7, 4, NULL,1,11512,NULL,124,151161);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112392, 'Результат', 8,  0, NULL,1,11512,NULL,123,151162);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112393, 'Возможные проблемы', 9, 1, NULL,1,11512,NULL,121,151163);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112394, 'Время выезда', 10, 4, NULL,1,11512,NULL,126,151167);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112395, 'Дата выезда', 11, 3, '%Y-%m-%d',1,11512,NULL,122,151168);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112396, 'Модель', 12, 1, NULL,1,11512,NULL,121,151169);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112397, 'Стоимость', 13, 1, NULL,1,11512,NULL,121,151170);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112398, 'Стоимость ремонта', 14, 1, NULL,1,11512,NULL,121,151171);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112399, 'Комментарий', 15, 1, NULL,1,11512,NULL,121,151165);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112400, 'Предистория', 16, 0, NULL,1,11512,NULL,123,151164);


-- 11513 Создание заявки на заказ запчасти
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112401,'Исполнитель',3, 0, NULL,1,11513,NULL,123,151157);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112402,'Клиент',4,0, NULL,1,11513,NULL,123,151158);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112403,'Телефон',5,0, NULL,1,11513,NULL,123,151159);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112404,'Адрес',6, 0, NULL,1,11513,NULL,123,151160);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112405,'Состояние',7,1, NULL,1,11513,NULL,121,151161);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112406,'Возможные проблемы',9, 1, NULL,1,11513,NULL,121,151163);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id)
  values(112407,'Дата заказа',10, 1, NULL,1,11513,NULL,121,151173);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112408,'Дата прихода',11,1, NULL,1,11513,NULL,121,151174);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112409,'Код запчасти',12, 1, NULL,1,11513,NULL,121,151175);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112410,'Поставщик',13, 1, NULL,1,11513,NULL,121,151176);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112411,'Цена покупки',14, 1, NULL,1,11513,NULL,121,151177);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112412,'Цена продажи',15, 1, NULL,1,11513,NULL,121,151178);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112413,'Комментарий',16, 1, NULL,1,11513,NULL,121,151165);


-- 11514 Создание заявки на доставку
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112414,'Исполнитель',3, 0, NULL,1,11514,NULL,123,151157);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112415,'Клиент',4, 0, NULL,1,11514,NULL,123,151158);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112416,'Телефон',5, 0, NULL,1,11514,NULL,123,151159);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112417,'Адрес',6,0, NULL,1,11514,NULL,123,151160);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112418,'Состояние',7,1, NULL,1,11514,NULL,121,151161);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112419,'Возможные проблемы',9, 1, NULL,1,11514,NULL,121,151163);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112420,'Время выезда',10,1, NULL,1,11514,NULL,121,151180);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112421,'Дата выезда',11,1, NULL,1,11514,NULL,121,151181);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112422,'Поставщик',12, 1, NULL,1,11514,NULL,121,151182);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112423,'Код запчасти',13, 1, NULL,1,11514,NULL,121,151183);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112424,'Цена покупки',14, 1, NULL,1,11514,NULL,121,151184);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112425,'Цена продажи',15, 1, NULL,1,11514,NULL,121,151185);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112426,'Цена доставки',16, 1, NULL,1,11514,NULL,121,151186);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112427,'Комментарий',17, 1, NULL,1,11514,NULL,121,151165);
  
-- 11515  Создание заявки на изъятие техники
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112428,'Исполнитель',3,0, NULL,1,11515,NULL,123,151157);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112429,'Клиент',4,0, NULL,1,11515,NULL,123,151158);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112430,'Телефон',5,0, NULL,1,11515,NULL,123,151159);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112431,'Адрес',6,0, NULL,1,11515,NULL,123,151160);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112432,'Состояние',7,1, NULL,1,11515,NULL,121,151161);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112433,'Возможные проблемы',9, 1, NULL,1,11515,NULL,121,151163);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112434,'Время выезда',10,1, NULL,1,11515,NULL,121,151188);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112435,'Дата выезда',11,1, NULL,1,11515,NULL,121,151189);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112443,'Комментарий',12,1, NULL,1,11515,NULL,121,151165);
  
-- 11516 Создание записки оператора
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112471,'Значение',1,0, NULL,1,11516,NULL,123,1511187);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112472,'Отправитель',2,0, NULL,1,11516,NULL,123,1511188);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112473,'Дата создания',3,1, NULL,1,11516,NULL,123,1511189);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112474,'Флаг требования исполнения',4,0, NULL,1,11516,NULL,123,1511190);
 
-- 11517.Форма изменеия записки оператора
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112475,'Статус исполнения',1,1, NULL,1,11517,NULL,123,1511191);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112476,'Исполнитель',2,0, NULL,1,11517,NULL,123,1511192);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112477,'Дата исполнения',3,1, NULL,1,11517,NULL,123,1511193);
  
-- 11518
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112478, 'Id', 1, 0, NULL,0,11518,NULL,1210,1511173);
  
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112479,'Артикул',1, 0, NULL,1,11518,NULL,1210,1511174);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112480,'Наименование',2, 0, NULL,1,11518,NULL,1210,1511175);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112481,'Производитель',3, 0, NULL,1,11518,NULL,1210,1511176);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112482,'Поставщик',4, 0, NULL,1,11518,NULL,1210,1511177);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112483,'Цена покупки',5, 0, NULL,1,11518,NULL,1210,1511179);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112484,'Наценка',6, 4, NULL,1,11518,NULL,1211,1511185);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112485,'Цена продажи',7, 0, NULL,1,11518,NULL,1210,1511180);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 112486,'',8, 0, NULL,1,11518,NULL,1210,1511202); 

-- 15391.Форма просмотра запчастей (Поиск аналогов)
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 15047,'Артикул',1, 0, NULL,1,15391,NULL,1210,1511174);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 15041,'Поставка',2, 0, NULL,1,15391,NULL,1210,1511201);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 15042,'Изображение',3, 0, NULL,1,15391,NULL,1210,1511178);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 15043,'Название',4, 0, NULL,1,15391,NULL,1210,1511175);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 15044,'Поставщик',5, 0, NULL,1,15391,NULL,1210,1511177);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 15045,'Цена покупки',6, 0, NULL,1,15391,NULL,1210,1511179);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 15046,'Аналоги',7, 0, NULL,1,15391,NULL,1210,1511205);
 
 -- 15392.Форма просмотра запчастей премиальной техники (Поиск аналогов)
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
 values( 15048,'Артикул',1, 0, NULL,1,15392,NULL,1210,1511174);
 
 -- 15393.Форма просмотра модели техники
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112500, 'Id', 1, 1, NULL,0,15393,NULL,121,1511214);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id,value_template,event_form,event_form_viewer,event_form_container) 
  values(112501, 'Производитель', 2, 0, NULL,1,15393,NULL,123,1511215,'%50139%',null,null,'#dop_form_interface');
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id,value_template,event_form,event_form_viewer,event_form_container) 
  values(112502, 'Тип техники', 3, 0, NULL,1,15393,NULL,123,1511216,'%50139%',null,null,'#dop_form_interface');
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112503, 'Название', 4, 1, NULL,1,15393,NULL,121,1511217);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112519, 'Изображение', 4, 0, NULL,1,15393,NULL,1224,1511293);
  
 -- 15394.Форма просмотра комментариев
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112541, 'Id', 1, 1, NULL,0,15394,NULL,121,1511301);
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112542, 'Дата создания', 2, 1, NULL,1,15394,NULL,122,1511302); 
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id,value_template,event_form,event_form_viewer,event_form_container) 
  values(112543, 'Создатель', 3, 0, NULL,1,15394,NULL,123,1511303,'%508% %509%',11510,null,'#dop_form_interface'); 
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112544, 'Текст', 4, 1, NULL,1,15394,NULL,121,1511304); 
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112545, 'Вложение', 5, 0, NULL,1,15394,NULL,1224,1511305); 
  
-- 15395.Форма изменения записки оператора
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112546, 'Статус исполнения', 1, 1, NULL,1,15395,NULL,122,1511191); 
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112547, 'Исполнитель', 2, 0, NULL,1,15395,NULL,122,1511192); 
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112548, 'Дата исполнения', 3, 1, NULL,1,15395,NULL,122,1511193); 


select max(id) from sColumns;
 
-- counter 112524


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
  start_date datetime default '2015-11-01',
  end_date   datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
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

insert into buttons(id,name,link,pid,action,position,level) values(15054,'Обзор',null,15052,null,1,3);
insert into buttons(id,name,link,pid,action,position,level) values(15055,'Клиенты',null,15052,null,2,3);
insert into buttons(id,name,link,pid,action,position,level) values(15056,'Сотрудники',null,15052,null,3,3);
insert into buttons(id,name,link,pid,action,position,level) values(15057,'Аудит',null,15052,null,4,3);
insert into buttons(id,name,link,pid,action,position,level) values(150532,'Запчасти',null,15052,null,5,3);
insert into buttons(id,name,link,pid,action,position,level) values(150544,'Отчёты',null,15052,null,6,3);

insert into buttons(id,name,link,pid,action,position,level,type) values(15058,'Заявки на сервис','index.php?action=2341&param=15211',15054,null,1,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(15059,'Заявки на заказ запчасти','index.php?action=2341&param=15215',15054,null,2,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150510,'Заявки на доставку','index.php?action=233',15054,null,3,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150511,'Заявки на изъятие техники','index.php?action=2341&param=15214',15054,null,4,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150528,'Звонки','index.php?action=2331',15054,null,5,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150529,'Поиск','index.php?action=2333',15054,null,6,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150512,'Разделитель',null,15054,null,7,4,2);
insert into buttons(id,name,link,pid,action,position,level,type) values(150513,'Создание заявки',null,15054,null,8,4,3);
insert into buttons(id,name,link,pid,action,position,level,type) values(150514,'Сервис','index.php?action=239',15054,239,9,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150515,'Заказ запчасти','index.php?action=2310',15054,2310,10,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150516,'Доставка','index.php?action=2311',15054,2311,11,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150517,'Изъятие техники','index.php?action=2312',15054,2312,12,4,1);

insert into buttons(id,name,link,pid,action,position,level,type) values(150518,'База клиентов','index.php?action=235',15055,null,1,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150535,'База адресов','index.php?action=2330',15055,null,2,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150536,'База телефонов','index.php?action=2358',15055,null,3,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150519,'Разделитель',null,15055,null,4,4,2);
insert into buttons(id,name,link,pid,action,position,level,type) values(150520,'Создание',null,15055,null,5,4,3);
insert into buttons(id,name,link,pid,action,position,level,type) values(150521,'Новый клиент','index.php?action=2313',15055,2313,6,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150537,'Новый адрес','index.php?action=2356',15055,2356,7,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150538,'Новый телефон','index.php?action=2357',15055,2357,8,4,1);

insert into buttons(id,name,link,pid,action,position,level,type) values(150522,'Список сотрудников','index.php?action=236',15056,null,1,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150523,'Разделитель',null,15056,null,2,4,2);
insert into buttons(id,name,link,pid,action,position,level,type) values(150524,'Создание',null,15056,null,3,4,3);
insert into buttons(id,name,link,pid,action,position,level,type) values(150525,'Новый сотрудник','index.php?action=2314',15056,null,4,4,1);

insert into buttons(id,name,link,pid,action,position,level,type) values(150530,'Сессии','index.php?action=2341&param=15212',15057,2338,1,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150531,'Действия','index.php?action=2344',15057,2344,2,4,1);

insert into buttons(id,name,link,pid,action,position,level,type) values(150533,'Запчасти','index.php?action=2341&param=15213',150532,2341,1,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150539,'Модели техники','index.php?action=2359',150532,2346,2,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150534,'Категории запчастей','index.php?action=2347',150532,2346,3,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150540,'Разделитель',null,150532,null,4,4,2);
insert into buttons(id,name,link,pid,action,position,level,type) values(150541,'Создание',null,150532,null,5,4,3);
insert into buttons(id,name,link,pid,action,position,level,type) values(150542,'Запчасть','index.php?action=2360',150532,2341,6,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150543,'Модель техники','index.php?action=2361',150532,2341,7,4,1);

insert into buttons(id,name,link,pid,action,position,level,type) values(150545,'Комментарии','index.php?action=2341&param=15216',150544,null,1,4,1);

insert into buttons(id,name,link,pid,action,position,level,type) values(150526,'user_name',null,15053,null,1,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150527,'Выход','/logout',15053,null,2,4,1);

select max(id) from buttons;

-- Создание таблицы расположения сущностей
drop table if exists temp;
create table temp(
  id  bigint,
  counter bigint
);

insert into temp(id,counter)
select id, counter from entities;

drop table if exists entities;
create table entities(
  id  bigint,
  location     varchar(256),
  namespace    bigint,
  name_template varchar(1024),
  search_name_template varchar(1024),
  present_name_template varchar(1024),
  counter      bigint,
  main_form bigint,
  main_viewer bigint,
  save_contr bigint,
  start_date datetime default '2015-11-01',
  end_date   datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
);  

insert into entities(id, location) values(132, 'dim_resource');
insert into entities(id, location) values(113, 'buttons');
insert into entities(id, location,namespace,counter,name_template,search_name_template,present_name_template) values(101, 'clients',1502,10,'%508% %509% %5010%','%5048% %508% %509% %5010%','%508% %509% %5010%');
insert into entities(id, location,namespace,counter,name_template,search_name_template,present_name_template) values(102, 'users',1501,10,'%508% %509% %5010%','%5048% %508% %509% %5010%','%508% %509% %5010%');
insert into entities(id, location) values(106, 'actions');
insert into entities(id, location) values(107, 'logins');
insert into entities(id, location) values(103, 'requests');
insert into entities(id, location,namespace,counter,name_template,search_name_template,present_name_template) values(109, 'requests',1512,10,'Заявка №%5048%','%5048% %5022% %5014% %5024% %5025% %5026% %5029% %5021%','Дата создания:%5022%, Исполнитель:%5014%, Клиент:%5024%, Телефон:%5025%, Адрес:%5026%');
insert into entities(id, location,namespace,counter,name_template,search_name_template,present_name_template) values(1010, 'requests',1513,10,'Заявка №%5048%','%5048% %5022% %5014% %5024% %5025% %5026% %5029% %5021%','%5048%');
insert into entities(id, location,namespace,counter,name_template,search_name_template,present_name_template) values(1011, 'requests',1514,10,'Заявка №%5048%','%5048% %5022% %5014% %5024% %5025% %5026% %5029% %5021%','%5048%');
insert into entities(id, location,namespace,counter,name_template,search_name_template,present_name_template) values(1012, 'requests',1515,10,'Заявка №%5048%','%5048% %5022% %5014% %5024% %5025% %5026% %5029% %5021%','%5048%');

insert into entities(id, location) values(12, 'sCrmElements');
insert into entities(id, location) values(14, 'sCrmElements');

insert into entities(id, location) values(23, 'dim_actions');

insert into entities(id, location,namespace,counter,name_template,search_name_template,present_name_template,save_contr) values(1013, 'addresses',1508,10,'%5068% %5069% %5070% %5071% %5072% %5073% %5074% %5075%','%5068% %5069% %5070% %5071% %5072% %5073% %5074% %5075%','%5068% %5069% %5070% %5071% %5072% %5073% %5074% %5075%',1415);
insert into entities(id, location,namespace,counter) values(104, 'calls',1510,10);
insert into entities(id, location,namespace,counter,name_template,search_name_template,present_name_template) values(1014, 'telephones',1509,10,'%5067%','%5067%','%5067%');
insert into entities(id, location) values(1511, 'ent_properties');

insert into entities(id, location) values(112, 'sColumns');

insert into entities(id, location) values(1192, 'dim_resource');
insert into entities(id, location) values(1191, 'dim_resource');
insert into entities(id, location) values(10, 'entities');



-- select * from dim_resource
-- insert into entities(id, location) values(104, 'calls');
-- insert into entities(id, location) values(106, 'actions');
-- insert into entities(id, location) values(107, 'logins');
insert into entities(id, location,namespace,counter) values(108, 'dim_resource',1516,10);
-- insert into entities(id, location) values(1013, 'address');
-- insert into entities(id, location) values(1014, 'telephones');
-- 104.Звонок
-- 106.Действие пользователя
-- 107.Логин в систему
-- 108.Поставщик
-- 1013.Адрес
-- 1014.Телефон
insert into entities(id, location,namespace,counter) values(161, 'sFilters',1517,10);
insert into entities(id, location,namespace,counter) values(162, 'sFilterFields',1518,10);
insert into entities(id, location,namespace,counter) values(163, 'actionFilters',null,10);
insert into entities(id, location,namespace,counter) values(50, 'properties',null,10);

insert into entities(id, location,namespace,counter) values(168, 'sessions',1519,10);

insert into entities(id, location,namespace,counter) values(164, 'messages',1520,10);
insert into entities(id, location,namespace,counter) values(1613, 'layout_elements',1522,10);

insert into entities(id, location,namespace,counter) values(1614, 'executions',1523,10);
insert into entities(id, location,namespace,counter) values(1615, 'states',1524,10);

insert into entities(id, location,namespace,counter) values(1016, 'products',1526,30000);
insert into entities(id, location,namespace,counter) values(1017, 'product_categories',1525,1000);

insert into entities(id, location,namespace,counter) values(1024, 'base_elements',1530,100);
insert into entities(id, location,namespace,counter,name_template) values(1026, 'op_notes',1532,100,'%5066%');

insert into entities(id, location,namespace,counter) values(1616, 'triplets',1533,100);
-- insert into entities(id, location,namespace,counter) values(1029, 'products',1526,100);
insert into entities(id, location,namespace,counter,name_template,search_name_template,present_name_template) values(1027, 'models',1534,100,'%50139%','%50139%','%50139%');

insert into entities(id, location,namespace,counter) values(1020, 'manufacturers',1528,100);

insert into entities(id, location,namespace,counter) values(1617, 'forms',1536,100);
insert into entities(id, location,namespace,counter) values(1618, 'dim_resource',1537,100);

insert into entities(id, location,namespace,counter) values(1029, 'products_prem',1538,100);

insert into entities(id, location,namespace,counter) values(1018, 'files',1527,100);

insert into entities(id, location,namespace,counter) values(111, 'dim_resource',1539,100);

insert into entities(id, location,namespace,counter) values(1525212, 'products_belts',1526,100);

insert into entities(id, location,namespace,counter) values(1194, 'dim_resource',1526,100);
insert into entities(id, location,namespace,counter) values(1195, 'dim_resource',1526,100);
insert into entities(id, location,namespace,counter) values(1196, 'dim_resource',1526,100);
insert into entities(id, location,namespace,counter) values(1197, 'dim_resource',1526,100);
insert into entities(id, location,namespace,counter) values(1031, 'tech_types',1540,100);
insert into entities(id, location,namespace,counter) values(1032, 'comments',1542,100);

update entities e
  join temp t on e.id = t.id
set e.counter = t.counter;


-- Создание таблицы свойств сущности
drop table if exists ent_properties;
create table ent_properties(
  id        bigint,
  ent_id    bigint,
  prop_id   bigint,
  alias     varchar(256),
  domain    bigint,
  external  int default 0,
  editable  int default 1,
  auto      int default 0,
  virtual   int default 0,
  cardinal  int default 1,
  ne_create_flag int default 0,
  start_date datetime default '2015-11-01',
  end_date   datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
);  
 

select * from ent_properties;
-- 113.Menu
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(15111,113,5048,'id',113,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(15112,113,501,'name',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(15113,113,5056,'link',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(15114,113,5057,'pid',113,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(15115,113,5058,'action',23,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(15116,113,504,'position',135,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(15117,113,5060,'level',135,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(15118,113,5051,'type',135,0);

-- 12.Viewers
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(15119,12,5048,'id',12,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151110,12,501,'name',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151111,12,503,'location',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151112,12,5051,'type',12,0);

-- 14.Controllers
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
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511132,1511,50108,'auto',135,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511143,1511,50110,'virtual',135,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511144,1511,50111,'cardinal',135,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511280,1511,50216,'ne_create_flag',135,0);
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
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511145,112,50112,'value_template',134,0);

insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511263,112,50199,'event_form',132,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511264,112,50200,'event_form_viewer',132,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511265,112,50201,'event_form_container',134,0);



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
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151149,102,5016,'position',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151150,102,5017,'tel',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151151,102,5018,'address',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151152,102,5019,'birthday',136,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151153,102,5020,'state',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151154,102,5021,'comment',134,0); 

-- 103.Заявка
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(151155,103,5048,'id',103,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable,auto) values(151156,103,5022,'creation_time',136,0,0,1);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151157,103,5014,'user_id',102,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,ne_create_flag) values(151158,103,5024,'client_id',101,0,1);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,ne_create_flag) values(151159,103,5025,'tel',1014,0,1);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,ne_create_flag) values(151160,103,5026,'address',1013,0,1);
-- insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151161,103,5027,'state',1191,0);
-- insert into ent_properties(id, ent_id, prop_id, alias,domain,external,cardinal) values(151162,103,5028,'result',103,1,-1);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151163,103,5029,'poss_problem',134,0);
-- insert into ent_properties(id, ent_id, prop_id, alias,domain,external,virtual,cardinal) values(151164,103,5050,'prehistory',103,1,1,-1);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151165,103,5021,'comment',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511148,103,5051,'type',103,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,cardinal) values(1511294,103,50221,'attachment',1018,1,-1);

insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511297,103,50225,'payment_state',1197);


select * from ent_properties where ent_id = 1012;
select * from ent_properties where ent_id = 103;
-- 109.Заявка на сервис
-- insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151166,109,5048,'id',109,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151167,109,5030,'dep_time',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151168,109,5031,'dep_date',136,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151169,109,5032,'model',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151170,109,5033,'cost',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151171,109,5034,'rep_cost',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511296,109,50224,'service_state',1196,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511299,109,50227,'model_name',134,0);

-- 1010.Заявка на заказ запчасти
-- insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151172,1010,5048,'id',1010,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151173,1010,5035,'order_date',136,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151174,1010,5036,'recept_date',136,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151175,1010,5037,'comp_code',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151176,1010,5038,'provider_id',108,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151177,1010,5039,'buy_cost',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151178,1010,5040,'sell_cost',134,0);

insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151161,1010,50203,'state',1194,0);

insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511266,1010,50212,'registrar',102,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511267,1010,50204,'tech_brand',1020,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511268,1010,50205,'man_brand',1020,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511269,1010,50213,'part',1016,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511270,1010,50214,'get_cost',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511271,1010,50207,'part_name',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511272,1010,5032,'model',1027,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511284,1010,50215,'prepayment',134,0);

select max(id) from ent_properties;

-- 1011.Заявка на доставку
-- insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151179,1011,5048,'id',1011,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151180,1011,5030,'dep_time',1192,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151181,1011,5031,'dep_date',136,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151182,1011,5038,'provider_id',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151183,1011,5037,'comp_code',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151184,1011,5039,'buy_cost',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151185,1011,5040,'sell_cost',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151166,1011,5041,'dep_cost',134,0);

select max(id) from ent_properties;
-- 1012.Заявка на изъятие техники
-- insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151188,1012,5030,'dep_time',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151189,1012,5031,'dep_date',136,0);

insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511287,1012,5032,'model',1027,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511288,1012,50216,'del_date',136,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511289,1012,50217,'state1',1195,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511290,1012,50218,'samp_period',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511291,1012,50219,'dep_executor',102,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511292,1012,50220,'samp_executor',102,0);

insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511295,1012,50222,'part_list',134,0);
select * from ent_properties;
select max(id) from ent_properties;
-- 10.Элемент предметной области
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(151191,10,5048,'id',10,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151192,10,503,'location',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151193,10,5089,'namespace',135,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151194,10,5090,'counter',135,0);

insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511170,10,50133,'name_template',135,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511171,10,50134,'search_name_template',135,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511172,10,50135,'present_name_template',135,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511278,10,50215,'save_contr',14,0);


-- insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511279,10,50216,'nested_entity',10,1);


-- 104.Звонок
insert into ent_properties(id, ent_id, prop_id, alias,domain,editable) values(1511105,104,5048,'id',104,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,editable) values(1511106,104,5076,'tel1',1014,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,editable) values(1511107,104,5077,'tel2',1014,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,editable) values(1511108,104,5024,'client_id',101,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,editable) values(1511109,104,5079,'user_id',102,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,editable) values(1511110,104,5045,'datetime',136,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,editable) values(1511111,104,5080,'duration',135,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,editable) values(1511112,104,5081,'call_type',134,0);
-- 106.Действие пользователя
-- 107.Логин в систему
-- 108.Поставщик
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511273,108,5048,'id',108,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511274,108,501,'name',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511275,108,5051,'type',132);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511276,108,50100,'search_name',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511277,108,50136,'present_name',134);
select max(id) from ent_properties;
-- 1013.Адрес
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(151195,1013,5048,'id',1013,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(151196,1013,5068,'country',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(151197,1013,5069,'region',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(151198,1013,5070,'destrict',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(151199,1013,5071,'town',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511100,1013,5072,'street',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511101,1013,5073,'home',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511102,1013,5074,'housing',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511103,1013,5075,'flat',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511104,1013,5066,'value',134);

insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511281,1013,5013,'obj_id',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511282,1013,5021,'comment',134);

insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511298,1013,50226,'ind',134);
select max(id) from ent_properties;
-- 1014.Телефон
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511113,1014,5048,'id',1014,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511114,1014,5067,'number',134);

-- 161.Фильтр
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511115,161,5048,'id',161,0,0);
-- 162.Поле фильтра
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511116,162,5048,'id',162,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511117,162,501,'name',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511118,162,5096,'sql_code',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511119,162,5095,'filter_id',161);
-- 163.Фильтр действия
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511300,163,5048,'id',163);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511120,163,5095,'filter_id',161);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511121,163,5082,'prop_id',50);
-- insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511122,163,5058,'action',161);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511122,163,50109,'param_id',1611);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511123,163,5094,'default_value',161);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511124,163,504,'position',161);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511127,163,501,'name',134);

insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511224,163,50178,'viewer',12);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511225,163,50180,'result_viewer',12);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511226,163,5058,'action',23);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511227,163,50181,'result_container',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511228,163,5096,'sql_code',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511229,163,50139,'show_name',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511230,163,50183,'sort_flag',135);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511231,163,50184,'add_prop',132);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511232,163,5055,'domain',132);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511233,163,50187,'php_code',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511234,163,50188,'handler',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511235,163,50189,'null_elem_name',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511236,163,50190,'result_domain',132);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511262,163,50192,'null_elem_value',134);

-- 50.Свойство
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511125,50,5048,'id',50,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511126,50,501,'name',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511169,50,506,'alias',134);


-- 168.Сессия
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511128,168,5048,'id',168,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,editable,auto) values(1511129,168,5022,'creation_time',136,0,1);
insert into ent_properties(id, ent_id, prop_id, alias,domain,editable) values(1511130,168,50103,'session_id',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,editable) values(1511131,168,5079,'user_id',102,0);

-- 164.Сообщение 
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511133,164,5048,'id',164,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511134,164,5066,'value',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511135,164,5051,'type',164);
insert into ent_properties(id, ent_id, prop_id, alias,domain,auto) values(1511136,164,5022,'creation_time',136,1);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511137,164,50101,'life_time',135);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511138,164,50103,'session_id',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain,auto) values(1511139,164,5079,'user_id',136,1);
insert into ent_properties(id, ent_id, prop_id, alias,domain,auto) values(1511140,164,5057,'pid',136,1);
insert into ent_properties(id, ent_id, prop_id, alias,domain,auto) values(1511141,164,50105,'dialog',136,1);
insert into ent_properties(id, ent_id, prop_id, alias,domain,auto) values(1511142,164,50106,'flag',136,1);

-- 1612.Версионная сущность
-- insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511146,1612,50113,'start_date',136);
-- insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511147,1612,50114,'end_date',136);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511168,1612,50131,'version_state',1615);

-- 1613.Элемент верстки
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511156,1613,5048,'id',1613,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511157,1613,501,'name',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511149,1613,5057,'pid',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511150,1613,50116,'elem_type',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511151,1613,50117,'width',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511152,1613,50118,'height',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511153,1613,504,'position',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511154,1613,50119,'style',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain,virtual) values(1511155,1613,50120,'',134,1);
-- 1614.Исполнение действия
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511158,1614,5048,'id',1614,0,0);

insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511159,1614,5079,'user_id',102);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511160,1614,5062,'action_id',23);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511161,1614,5013,'obj_id',132);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511162,1614,5055,'domain',132);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511163,1614,50123,'state1',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511164,1614,50124,'state2',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511165,1614,5057,'pid',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511166,1614,50121,'start_time',136);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511167,1614,50122,'end_time',136);

-- 1016.Продукт
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511173,1016,5048,'id',1016,0,0);

insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511174,1016,50138,'articul',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511175,1016,50139,'show_name',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511176,1016,50137,'manufacturer_id',1020);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511177,1016,5038,'provider_id',108);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511178,1016,50140,'image',1019);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511179,1016,5039,'buy_cost',135);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511180,1016,5040,'sell_cost',135);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511185,1016,50145,'add_cost',135);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511181,1016,50141,'',1017,1);

insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511201,1016,50155,'cnt',1017,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,cardinal) values(1511202,1016,50165,'',1017,1,-1);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511203,1016,50172,'part_group',1017,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511204,1016,50173,'store',1017,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511205,1016,50174,'',1017,1);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511206,1016,50175,'',1017,1);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511207,1016,50176,'',1017,1);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511208,1016,50167,'',1017,1);


-- 1017.Категория продукта
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511182,1017,5048,'id',1017,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511183,1017,50139,'show_name',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511184,1017,5057,'pid',1017);
-- 1026.Записка оператора
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511186,1026,5048,'id',1017,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511187,1026,5066,'value',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511188,1026,50150,'sender',102);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511189,1026,5022,'creation_time',136);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511190,1026,50158,'ex_req_flag',135);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511191,1026,50159,'ex_status',135);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511192,1026,5014,'performer_id',102);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511193,1026,50160,'ex_date',136);
-- 1616.Высказывание
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511194,1616,5048,'id',1616,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511195,1616,50163,'subj_id',132);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511196,1616,5082,'prop_id',50);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511197,1616,5013,'obj_id',132);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511198,1616,5066,'value',133);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511199,1616,50164,'is_resource',135);
-- 1029.Продукт премиальной марки
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511200,1029,5048,'id',1029,0,0);

-- 132.Ресурс
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511209,132,5048,'id',132,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511210,132,501,'name',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511211,132,5051,'type',132);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511212,132,50100,'search_name',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511213,132,50136,'present_name',134);

-- 1027.Модель техники
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511214,1027,5048,'id',1027,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511215,1027,50137,'manufacturer_id',1020);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511216,1027,50165,'tech_type',1031);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511217,1027,50139,'show_name',134);
-- insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511218,1027,50166,'',1018,1);
-- insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511219,1027,50167,'',1019,1);
-- insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511220,1027,5051,'type',132);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511293,1027,50140,'image',1018);

-- 1020.Производитель
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511221,1020,5048,'id',1020,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511222,1020,50139,'show_name',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511223,1020,50178,'prem_flag',135);

-- 1617.Форма отображения
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511245,1617,5048,'id',1617,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511238,1617,50180,'result_viewer',12);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511239,1617,5058,'action',23);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511240,1617,50181,'result_container',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511241,1617,50190,'result_domain',132);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511242,1617,5057,'pid',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511256,1617,50198,'nested_form',1617);
-- 1618.Набор фильтров
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511244,1618,5048,'id',1618,0,0);

-- 1029.Продукт премиальной техники
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511246,1029,5048,'id',1029,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511247,1029,50168,'position',135);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511248,1029,50169,'deliv_flag',135);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511249,1029,50170,'man_articul',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511250,1029,50166,'schema_id',1019);
-- 1018.Файлы
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511251,1018,5048,'id',1018,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511252,1018,50142,'ph_name',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511253,1018,5051,'type',135);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511254,1018,50177,'path',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511255,1018,50197,'description',134);

-- 111.Форма просмотра
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511257,111,5048,'id',111,0,0);

-- 1525212.Ремень приводной
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511258,1525212,5048,'id',1525212,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511259,1525212,50194,'length',135);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511260,1525212,50195,'profile_type',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511261,1525212,50196,'dent_count',135);

-- 1031.Тип техники
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511285,1031,5048,'id',1031,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511286,1031,50139,'show_name',135);

-- 1032.Комментарий

insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511301,1032,5048,'id',1032,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511302,1032,5022,'creation_time',136);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511303,1032,50228,'creator',102);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511304,1032,5066,'value',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,cardinal) values(1511305,1032,50221,'attachment',1018,1,-1);

select max(id) from ent_properties;

-- 1511295

select * from ent_properties;

-- Создание таблицы свойств
drop table if exists properties;
create table properties(
  id         bigint,
  name       varchar(256),
  alias      varchar(256),
  start_date datetime default '2015-11-01',
  end_date   datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
);

insert into properties(id,name,alias) values(501,'Название','name');
insert into properties(id,name,alias) values(502,'Часть','');
insert into properties(id,name,alias) values(503,'Местоположение','location');
insert into properties(id,name,alias) values(504,'Позиция','position');
insert into properties(id,name,alias) values(505,'Атрибут','');
insert into properties(id,name,alias) values(506,'Псевдоним','alias');
insert into properties(id,name,alias) values(507,'Представление','present');
insert into properties(id,name,alias) values(508,'Фамилия','second_name');
insert into properties(id,name,alias) values(509,'Имя','first_name');
insert into properties(id,name,alias) values(5010,'Отчество','patronymic');
insert into properties(id,name,alias) values(5011,'Право','grant');
insert into properties(id,name,alias) values(5012,'Осуществление','');
insert into properties(id,name,alias) values(5013,'Объект','');
insert into properties(id,name,alias) values(5014,'Исполнитель','performer_id');
insert into properties(id,name,alias) values(5015,'Представитель','');
insert into properties(id,name,alias) values(5016,'Должность','position');
insert into properties(id,name,alias) values(5017,'Телефон','tel');
insert into properties(id,name,alias) values(5018,'Адресс','address');
insert into properties(id,name,alias) values(5019,'День рождения','birthday');
insert into properties(id,name,alias) values(5020,'Состояние','state');
insert into properties(id,name,alias) values(5021,'Комментарий','comment');
insert into properties(id,name,alias) values(5022,'Дата создания','creation_time');
insert into properties(id,name,alias) values(5024,'Клиент','client_id');
insert into properties(id,name,alias) values(5025,'Телефон','tel');
insert into properties(id,name,alias) values(5026,'Адрес','address');
insert into properties(id,name,alias) values(5027,'Состояние','state');
insert into properties(id,name,alias) values(5028,'Результат','result');
insert into properties(id,name,alias) values(5029,'Возможные проблемы','poss_problem');
insert into properties(id,name,alias) values(5030,'Время выезда','dep_time');
insert into properties(id,name,alias) values(5031,'Дата выезда','dep_date');
insert into properties(id,name,alias) values(5032,'Модель','model');
insert into properties(id,name,alias) values(5033,'Стоимость','cost');
insert into properties(id,name,alias) values(5034,'Стоимость ремонта','rep_cost');
insert into properties(id,name,alias) values(5035,'Дата заказа','order_date');
insert into properties(id,name,alias) values(5036,'Дата прихода','recept_date');
insert into properties(id,name,alias) values(5037,'Код запчасти','comp_code');
insert into properties(id,name,alias) values(5038,'Поставщик','provider_id');
insert into properties(id,name,alias) values(5039,'Цена покупки','buy_cost');
insert into properties(id,name,alias) values(5040,'Цена продажи','sell_cost');
insert into properties(id,name,alias) values(5041,'Цена доставки','dep_cost');
insert into properties(id,name,alias) values(5042,'Редактирование','');
insert into properties(id,name,alias) values(5043,'Логин','');
insert into properties(id,name,alias) values(5044,'IP','');
insert into properties(id,name,alias) values(5045,'Дата и время действия','datetime');
insert into properties(id,name,alias) values(5046,'Описание действия','');
insert into properties(id,name,alias) values(5047,'Объект','');
insert into properties(id,name,alias) values(5048,'Идентификатор','id');
insert into properties(id,name,alias) values(5049,'Является обратным','');
insert into properties(id,name,alias) values(5050,'Предистория','');
insert into properties(id,name,alias) values(5051,'Тип','type');
insert into properties(id,name,alias) values(5052,'Редактируемость','editable');
insert into properties(id,name,alias) values(5053,'Открываемость','');
insert into properties(id,name,alias) values(5054,'Изменяемость','');
insert into properties(id,name,alias) values(5055,'Домен','domain');
insert into properties(id,name,alias) values(5056,'Ссылка','link');
insert into properties(id,name,alias) values(5057,'Идентификатор родителя','pid');
insert into properties(id,name,alias) values(5058,'Действие','action');
insert into properties(id,name,alias) values(5059,'Внешний идентификатор','resource_id');
insert into properties(id,name,alias) values(5060,'Уровень','level');
insert into properties(id,name,alias) values(5061,'Подкласс','');
insert into properties(id,name,alias) values(5062,'Идентификатор действия','action_id');
insert into properties(id,name,alias) values(5063,'Контроллер','contr_id');
insert into properties(id,name,alias) values(5064,'Роль','role');
insert into properties(id,name,alias) values(5065,'Форма','form');
insert into properties(id,name,alias) values(5066,'Значение','value');
insert into properties(id,name,alias) values(5067,'Номер','number');
insert into properties(id,name,alias) values(5068,'Страна','country');
insert into properties(id,name,alias) values(5069,'Область','region');
insert into properties(id,name,alias) values(5070,'Район','destrict');
insert into properties(id,name,alias) values(5071,'Населенный пункт','town');
insert into properties(id,name,alias) values(5072,'Улица','street');
insert into properties(id,name,alias) values(5073,'Дом','home');
insert into properties(id,name,alias) values(5074,'Корпус','housing');
insert into properties(id,name,alias) values(5075,'Квартира','flat');
insert into properties(id,name,alias) values(5076,'Телефон1','tel1');
insert into properties(id,name,alias) values(5077,'Телефон2','tel2');
insert into properties(id,name,alias) values(5079,'Сотрудник','user_id');
insert into properties(id,name,alias) values(5080,'Продолжительность','duration');
insert into properties(id,name,alias) values(5081,'Тип звонка','call_type');
insert into properties(id,name,alias) values(5082,'Идентификатор свойства','prop_id');
insert into properties(id,name,alias) values(5083,'Идентификатор сущности','ent_id');
insert into properties(id,name,alias) values(5084,'Флаг внешнего свойства','external');
insert into properties(id,name,alias) values(5085,'Шаблон','template');
insert into properties(id,name,alias) values(5086,'Просмотрщик','viewer');
insert into properties(id,name,alias) values(5087,'Свойство сущности','ent_prop_id');
insert into properties(id,name,alias) values(5088,'Номер значения','');
insert into properties(id,name,alias) values(5089,'Пространство имен','namespace');
insert into properties(id,name,alias) values(5090,'Счётчик','counter');
insert into properties(id,name,alias) values(5091,'Поисковый запрос','');
insert into properties(id,name,alias) values(5092,'Флаг поиска','');
insert into properties(id,name,alias) values(5093,'Столбец','column');
insert into properties(id,name,alias) values(5094,'Значение по умолчанию','default_value');
insert into properties(id,name,alias) values(5095,'Фильтр','filter_id');
insert into properties(id,name,alias) values(5096,'SQL','sql_code');
insert into properties(id,name,alias) values(5097,'Фильтр','filter');
insert into properties(id,name,alias) values(5098,'Отображаемость','showable');
insert into properties(id,name,alias) values(5099,'Выбранный элемент','');
insert into properties(id,name,alias) values(50100,'Поисковое имя','search_name');
insert into properties(id,name,alias) values(50101,'Время жизни','life_time');
insert into properties(id,name,alias) values(50102,'Сессия','session');
insert into properties(id,name,alias) values(50103,'Идентификатор сессии','session_id');
insert into properties(id,name,alias) values(50104,'Идентификатор объекта документа','');
insert into properties(id,name,alias) values(50105,'Диалог','dialog');
insert into properties(id,name,alias) values(50106,'Флаг прочтения','flag');
insert into properties(id,name,alias) values(50107,'Участник','member');
insert into properties(id,name,alias) values(50108,'Автозаполняемое','auto');

insert into properties(id,name,alias) values(50109,'Идентификатор набора параметра','param_id');

insert into properties(id,name,alias) values(50110,'Флаг виртуального  свойства','virtual');
insert into properties(id,name,alias) values(50111,'Кардинальность','cardinal');
insert into properties(id,name,alias) values(50112,'Шаблон отображения  ресурса','value_template');
insert into properties(id,name,alias) values(50113,'Дата открытия  записи','start_date');
insert into properties(id,name,alias) values(50114,'Дата закрытия  записи','end_date');
insert into properties(id,name,alias) values(50115,'Набор свойств для отображения','');
insert into properties(id,name,alias) values(50116,'Тип элемента','elem_type');
insert into properties(id,name,alias) values(50117,'Высота','width');
insert into properties(id,name,alias) values(50118,'Ширина','height');
insert into properties(id,name,alias) values(50119,'Стиль','style');
insert into properties(id,name,alias) values(50120,'Идентификатор ребенка','');
insert into properties(id,name,alias) values(50121,'Время начала','start_time');
insert into properties(id,name,alias) values(50122,'Время окончания','end_time');
insert into properties(id,name,alias) values(50123,'Начальное состояние','state1');
insert into properties(id,name,alias) values(50124,'Конечное состояние','state2');
insert into properties(id,name,alias) values(50125,'Флаг поискового запроса','');
insert into properties(id,name,alias) values(50126,'Технические параметры','');
insert into properties(id,name,alias) values(50127,'Хеш пользователя','');
insert into properties(id,name,alias) values(50128,'Выделенное поле','');
insert into properties(id,name,alias) values(50129,'Выделенная форма','');
insert into properties(id,name,alias) values(50130,'Счетчик форм','');
insert into properties(id,name,alias) values(50131,'Версионное состояние','version_state');




select p.id, p.name, p.alias, ep.ent_id, e.name entity_name, d.name domain from properties p
  left join ent_properties ep on p.id = ep.prop_id 
  left join dim_resource e on e.id = ep.ent_id
  left join dim_resource d on d.id = ep.domain
order by p.id, ep.ent_id;

select id,name from properties;

select name,id from properties;

select ep.ent_id, e.name entity_name, p.id, p.name, p.alias, d.name domain 
from properties p
  left join ent_properties ep on p.id = ep.prop_id 
  left join dim_resource e on e.id = ep.ent_id
  left join dim_resource d on d.id = ep.domain
where ep.ent_id is not null
order by e.name, p.name;


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
  start_date datetime default '2015-11-01',
  end_date   datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
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
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2335,2316,'Просмотр отчётов',null,null,null,2316);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2338,2316,'Просмотр сессий',null,168,11111,2316);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2344,2316,'Просмотр выполнений действий',null,1614,11112,2316);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2346,2316,'Просмотр товаров',null,1016,11113,2316);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2347,2316,'Просмотр категорий товаров',null,1017,11114,2316);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2352,2316,'Отображение записок',1412,1026,null,2316);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2358,2316,'Просмотр телефонов',null,1014,11115,2316);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2359,2316,'Просмотр моделей техники',null,1027,11116,2316);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2362,2316,'Просмотр комментариев',null,1032,11117,2316);

insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2341,2341,'Настроенный просмотр сущностей класса',149,132,23);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2348,2348,'Просмотр сущностей класса с полосой разбивки',141,132,23);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2315,2315,'Просмотр сущности',142,132,23);
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
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2318,2318,'Создание сущности',147,132,23);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2327,2318,'Создание заявки',null,103,2318);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(239,2318,'Создание сервисной заявки',null,109,1153,2327);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2310,2318,'Создание заявки на заказ запчасти',null,1010,1154,2327); -- 11513
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2311,2318,'Создание заявки на доставку',null,1011,11514,2327);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2312,2318,'Создание заявки на изъятие техники',null,1012,1156,2327);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2313,2318,'Создание клиента',null,101,11511,2318);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2314,2318,'Создание пользователя',null,102,11510,2318);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2357,2318,'Создание телефона',null,1014,1159,2318);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2356,2318,'Создание адреса',null,1013,1157,2318);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2360,2318,'Создание запчасти',null,1016,1157,2318);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2361,2318,'Создание модели техники',null,1027,15393,2318);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2345,2345,'Создание сущности',1410,132,23);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2334,2334,'Изменение сущности',1410,132,23);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2319,2319,'Удаление сущности',null,132,23);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2333,2333,'Поиск сущностей(Отображение формы)',146,132,23);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2342,2342,'Поиск сущностей(Отображение запроса)',146,132,23);

insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2336,2336,'Печать содержимого поиска выбора',1411,132,23);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2340,2340,'Печать формы поиска выбора',1411,132,23);

insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2353,2353,'Отображение базы данных аналогов',1413,132,23);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2354,2354,'Получение списка',1414,132,23);
-- insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2355,2354,'Получение списка фильтров',1414,163,23);
select * from dim_actions; 

-- Создание таблицы элементов CRM
drop table if exists sCrmElements;
create table sCrmElements(
  id         bigint,
  name       varchar(256),
  location   varchar(256),
  type       bigint,
  start_date datetime default '2015-11-01',
  end_date   datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
);

insert into sCrmElements(id,name,location,type) values(141,'ShowController','core/show.controller.php',14);
insert into sCrmElements(id,name,location,type) values(142, 'EshowController', 'core/eshow.controller.php',14);
insert into sCrmElements(id,name,location,type) values(143, 'MenuController','core/menu.controller.php',14);
insert into sCrmElements(id,name,location,type) values(144, 'RedirectController', 'core/redirect.controller.php',14);
insert into sCrmElements(id,name,location,type) values(145, 'EntityController', 'core/entity.controller.php',14);
insert into sCrmElements(id,name,location,type) values(146, 'SearchController', 'core/search.controller.php',14);
insert into sCrmElements(id,name,location,type) values(147, 'CreateController', 'core/create.controller.php',14);
insert into sCrmElements(id,name,location,type) values(148, 'FilterController', 'core/filter.controller.php',14);
insert into sCrmElements(id,name,location,type) values(149, 'ExtShowController', 'core/ext_show.controller.php',14);
insert into sCrmElements(id,name,location,type) values(1410, 'EditController', 'core/edit.controller.php',14);
insert into sCrmElements(id,name,location,type) values(1411, 'Search2Controller', 'core/search2.controller.php',14);
insert into sCrmElements(id,name,location,type) values(1412, 'OpNotesController', 'core/opnotes.controller.php',14);
insert into sCrmElements(id,name,location,type) values(1413, 'AnalogBaseController', 'core/analog_base.controller.php',14);
insert into sCrmElements(id,name,location,type) values(1414, 'ListController', 'core/list.controller.php',14);
insert into sCrmElements(id,name,location,type) values(1415, 'EntitySaveAddressController', 'core/entity.save.address.controller.php',14);

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
insert into sCrmElements(id,name,location,type) values(1211,'Text3Viewer','core/viewers/text3.viewer.php',12);

insert into sCrmElements(id,name,location,type) values(1212,'PartViewer','core/viewers/part.viewer.php',12);
insert into sCrmElements(id,name,location,type) values(1213,'TechModelViewer','core/viewers/tech_model.viewer.php',12);

insert into sCrmElements(id,name,location,type) values(1214,'FilterComboboxViewer','core/viewers/filter.combobox.viewer.php',12);
insert into sCrmElements(id,name,location,type) values(1215,'FilterTextViewer','core/viewers/filter.text.viewer.php',12);
insert into sCrmElements(id,name,location,type) values(1216,'FilterNumberViewer','core/viewers/filter.number.viewer.php',12);
insert into sCrmElements(id,name,location,type) values(1217,'FilterNumber2Viewer','core/viewers/filter.number2.viewer.php',12);
insert into sCrmElements(id,name,location,type) values(1218,'FiltersSetViewer','core/viewers/filters_set.viewer.php',12);
insert into sCrmElements(id,name,location,type) values(1219,'TechModel2Viewer','core/viewers/tech_model2.viewer.php',12);
insert into sCrmElements(id,name,location,type) values(1220,'SetFormViewer','core/viewers/set_form.viewer.php',12);
insert into sCrmElements(id,name,location,type) values(1221,'EntityViewer','core/viewers/entity.viewer.php',12);


insert into sCrmElements(id,name,location,type) values(1222,'Text4Viewer','core/viewers/text4.viewer.php',12);
insert into sCrmElements(id,name,location,type) values(1223,'FileViewer','core/viewers/file.viewer.php',12);
insert into sCrmElements(id,name,location,type) values(1224,'File2Viewer','core/viewers/file2.viewer.php',12);

insert into sCrmElements(id,name,location,type) values(1225,'FilterText2Viewer','core/viewers/filter.text2.viewer.php',12);


-- Создание таблицы фильтров
drop table if exists sFilters;
create table sFilters(
  id            bigint,
  name          varchar(256),
  -- property      bigint,  -- Привязка к свойству
  -- default_field bigint,  -- Поле по умолчанию
  -- action        bigint,  -- Привязка к действию
  -- position      int,     -- Позиция
  domain        bigint,  -- Домен полей
  -- filter_id     bigint,  -- Идентификатор реального фильтра
  start_date datetime default '2015-11-01',
  end_date   datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
);

insert into sFilters(id) values(15171);
insert into sFilters(id) values(15172);
insert into sFilters(id) values(15173);
insert into sFilters(id) values(15175);
insert into sFilters(id) values(15176);
insert into sFilters(id) values(15177);
insert into sFilters(id) values(15178);


-- Создание таблицы значений фильтра
drop table if exists sFilterFields;
create table sFilterFields(
  id         bigint,
  name       varchar(256),
  sql_code varchar(512),
  filter_id  bigint,
  start_date datetime default '2015-11-01',
  end_date   datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
);


-- 15171. Дата выезда
insert into sFilterFields(id,name,sql_code,filter_id) values(15181,'На сегодня','DATE_FORMAT(%COLUMN%, "%Y-%m-%d") = CURDATE()',15171);
insert into sFilterFields(id,name,sql_code,filter_id) values(15182,'На завтра','DATE_FORMAT(%COLUMN%, "%Y-%m-%d") = DATE_ADD(CURDATE(),INTERVAL 1 DAY)',15171);
insert into sFilterFields(id,name,sql_code,filter_id) values(15183,'На неделю','YEAR(%COLUMN%) = YEAR(NOW()) AND WEEK(%COLUMN%, 1) = WEEK(NOW(), 1)',15171);
insert into sFilterFields(id,name,sql_code,filter_id) values(15184,'За всё время','1=1',15171);
insert into sFilterFields(id,name,sql_code,filter_id) values(151813,'Все предстоящие','%COLUMN% > now()',15171);

-- 1572. Сессии
insert into sFilterFields(id,name,sql_code,filter_id) values(15185,'За сегодня','DATE_FORMAT(%COLUMN%, "%Y-%m-%d") = CURDATE()',15172);
insert into sFilterFields(id,name,sql_code,filter_id) values(15186,'За неделю','%COLUMN% > NOW() - INTERVAL 7 DAY',15172);
insert into sFilterFields(id,name,sql_code,filter_id) values(15187,'За всё время','1=1',15172);

insert into sFilterFields(id,name,sql_code,filter_id) values(15188,'Тест','1=1',15173);

insert into sFilterFields(id,name,sql_code,filter_id) values(15189,'50','50',15174);
insert into sFilterFields(id,name,sql_code,filter_id) values(151810,'100','100',15174);
insert into sFilterFields(id,name,sql_code,filter_id) values(151811,'500','500',15174);
insert into sFilterFields(id,name,sql_code,filter_id) values(151812,'ВСЕ','',15174);

-- 1573.Состояние заявки на заказ запчасти
insert into sFilterFields(id,name,sql_code,filter_id) values(151814,'Обрабатывается','%COLUMN% = 12015',15175);
insert into sFilterFields(id,name,sql_code,filter_id) values(151815,'Отказ(Клиент)','%COLUMN% = 12016',15175);
insert into sFilterFields(id,name,sql_code,filter_id) values(151816,'Отказ(Наша сторона)','%COLUMN% = 12017',15175);
-- insert into sFilterFields(id,name,sql_code,filter_id) values(151817,'Цена сообщена клиенту','%COLUMN% = 12018',15175);
-- insert into sFilterFields(id,name,sql_code,filter_id) values(151818,'Оплачено','%COLUMN% = 12019',15175);
insert into sFilterFields(id,name,sql_code,filter_id) values(151819,'Заказано','%COLUMN% =12020 ',15175);

insert into sFilterFields(id,name,sql_code,filter_id) values(151840,'Подтвержден','%COLUMN% =12037 ',15175);
insert into sFilterFields(id,name,sql_code,filter_id) values(151841,'Отправлено','%COLUMN% =12038 ',15175);

insert into sFilterFields(id,name,sql_code,filter_id) values(151820,'Получен','%COLUMN% = 12021',15175);
insert into sFilterFields(id,name,sql_code,filter_id) values(151821,'Доставлен клиенту','%COLUMN% = 12022',15175);
insert into sFilterFields(id,name,sql_code,filter_id) values(151822,'Возврат','%COLUMN% = 12023',15175);
insert into sFilterFields(id,name,sql_code,filter_id) values(151823,'Все','1=1',15175);


-- 1574.Состояние заявки на изъятие техники
insert into sFilterFields(id,name,sql_code,filter_id) values(151824,'Обрабатывается','%COLUMN% = 12024',15176);
insert into sFilterFields(id,name,sql_code,filter_id) values(151825,'Отказ(Клиент)','%COLUMN% = 12025',15176);
insert into sFilterFields(id,name,sql_code,filter_id) values(151826,'Отказ(Наша сторона)','%COLUMN% = 12026',15176);
insert into sFilterFields(id,name,sql_code,filter_id) values(151827,'Техника забрана','%COLUMN% = 12027',15176);
insert into sFilterFields(id,name,sql_code,filter_id) values(151828,'Ожидание запчасти','%COLUMN% = 12028',15176);
insert into sFilterFields(id,name,sql_code,filter_id) values(151829,'Техника ожидает отвоза','%COLUMN% = 12029',15176);
insert into sFilterFields(id,name,sql_code,filter_id) values(151830,'Доставлено','%COLUMN% = 12030',15176);
insert into sFilterFields(id,name,sql_code,filter_id) values(151831,'Все','1=1',15176);

-- 1577.Состояние заявки на сервис
insert into sFilterFields(id,name,sql_code,filter_id) values(151832,'Обрабатывается','%COLUMN% = 12031',15177);
insert into sFilterFields(id,name,sql_code,filter_id) values(151833,'Ожидает запчасти','%COLUMN% = 12032',15177);
insert into sFilterFields(id,name,sql_code,filter_id) values(151834,'Ожидает выезда','%COLUMN% = 12033',15177);
insert into sFilterFields(id,name,sql_code,filter_id) values(151842,'Выполнен','%COLUMN% = 12039',15177);
insert into sFilterFields(id,name,sql_code,filter_id) values(151843,'Отказ(Клиент)','%COLUMN% = 12040',15177);
insert into sFilterFields(id,name,sql_code,filter_id) values(151844,'Отказ(Наша сторона)','%COLUMN% = 12041',15177);
insert into sFilterFields(id,name,sql_code,filter_id) values(151835,'Все','1=1',15177);

-- 1578.Состояние заявки по оплате
insert into sFilterFields(id,name,sql_code,filter_id) values(151836,'Не оплачен','%COLUMN% = 12034',15178);
insert into sFilterFields(id,name,sql_code,filter_id) values(151837,'Частично оплачен','%COLUMN% = 12035',15178);
insert into sFilterFields(id,name,sql_code,filter_id) values(151838,'Оплачен','%COLUMN% = 12036',15178);
insert into sFilterFields(id,name,sql_code,filter_id) values(151839,'Все','1=1',15178);


-- Создание таблицы фильтров действий
drop table if exists actionFilters;
create table actionFilters(
  id bigint,
  param_id bigint,
  filter_id bigint,
  name    varchar(256),
  prop_id      bigint,  -- Привязка к свойству
  default_value bigint,  -- Поле по умолчанию
  position      int,     -- Позиция
  showable  int default 1, -- 0-не отображать, 1-отображать
  viewer bigint,
  result_viewer bigint,
  action bigint,
  result_container varchar(256),
  sql_code varchar(256),
  show_name varchar(256),
  sort_flag int default 0,
  add_prop bigint,
  domain bigint,
  php_code varchar(1024),
  handler varchar(1024),
  null_elem_name varchar(256),
  result_domain bigint,
  null_elem_value varchar(256),
  type int default 1
);

-- Фильтры для Заявок на сервис
insert into actionFilters(id,param_id,filter_id,name,prop_id,default_value,position,showable) values(15411,15211,15171,'Дата выезда:',5031,15181,1,1);
insert into actionFilters(id,param_id,filter_id,name,prop_id,default_value,position,showable) values(15412,15211,15177,'Состояние:',50224,151835,2,1);
insert into actionFilters(id,param_id,filter_id,name,prop_id,default_value,position,showable) values(15413,15211,15178,'Состояние оплаты:',50225,151839,3,1);
insert into actionFilters(id,param_id,name,prop_id,position,showable,viewer) values(15414,15211,'Поиск:',50100,4,1,1225);

-- Фильтры для Заявок на изъятие техники
insert into actionFilters(id,param_id,filter_id,name,prop_id,default_value,position,showable) values(15415,15214,15171,'Дата забора:',5031,15184,1,1);
insert into actionFilters(id,param_id,filter_id,name,prop_id,default_value,position,showable) values(15416,15214,15171,'Дата отвоза:',50216,151813,2,1);
insert into actionFilters(id,param_id,filter_id,name,prop_id,default_value,position,showable) values(15417,15214,15176,'Состояние:',50217,151831,2,1);
insert into actionFilters(id,param_id,filter_id,name,prop_id,default_value,position,showable) values(15418,15214,15178,'Состояние оплаты:',50225,151839,3,1);

-- Фильтры для Заявок на заказ запчасти
insert into actionFilters(id,param_id,filter_id,name,prop_id,default_value,position,showable) values(15419,15215,15171,'Дата заказа:',5035,15184,1,1);
insert into actionFilters(id,param_id,filter_id,name,prop_id,default_value,position,showable) values(154110,15215,15171,'Дата прихода:',5036,151813,2,1);
insert into actionFilters(id,param_id,filter_id,name,prop_id,default_value,position,showable) values(154111,15215,15175,'Состояние:',50203,151823,3,1);
insert into actionFilters(id,param_id,filter_id,name,prop_id,default_value,position,showable) values(154112,15215,15178,'Состояние оплаты:',50225,151839,3,1);

insert into actionFilters(id,param_id,filter_id,name,prop_id,default_value,position,showable) values(154113,15212,15172,'Время создания:',5022,15185,1,1);

insert into actionFilters(id,param_id,filter_id,name,prop_id,default_value,position,showable) values(154114,15213,15174,'Строк на странице:',50147,15189,1,1); -- 50146.Limit

insert into actionFilters(id,param_id,prop_id,position,viewer,domain,php_code,handler,null_elem_name) values(154115,15371,50137,1,1214,1020,'$filters[50178]="%COLUMN%=1";','onchange="updateFilter2(15361,50137,generateFilterValue(%VALUE%));sendForm(15361);"','Все бренды');
insert into actionFilters(id,param_id,prop_id,position,viewer,sql_code,domain,php_code,handler,null_elem_name,show_name) values(154116,15371,50165,2,1214,'%COLUMN%=generateFilterValue(%VALUE%)',1017,'$filters[5057]="%COLUMN%=1525171";','onchange="updateFilter(this);"','Все типы техники','Тип техники:');
insert into actionFilters(id,param_id,prop_id,position,viewer,sql_code,domain,handler) values(154117,15371,50165,3,1215,'%COLUMN%=LIKE("generateFilterValue(%VALUE%)")',134,'oninput="updateFilter(this);"');

insert into actionFilters(id,param_id,prop_id,position,viewer,sql_code,domain,php_code,handler,null_elem_name) values(154118,15372,50137,1,1214,'%COLUMN%=generateFilterValue(%VALUE%)',1020,'$filters[50178]="%COLUMN%=1";','onchange="updateFilter2(15362,50137,generateFilterValue(%VALUE%));sendForm(15362);"','Все бренды');
insert into actionFilters(id,param_id,prop_id,position,viewer,sql_code,domain,php_code,handler,null_elem_name) values(154119,15372,50165,2,1214,'%COLUMN%=generateFilterValue(%VALUE%)',1017,'$filters[5057]="%COLUMN%=1525171";','onchange="updateFilter2(15362,50165,generateFilterValue(%VALUE%));sendForm(15362);"','Все типы техники');
insert into actionFilters(id,param_id,prop_id,position,viewer,sql_code,domain,php_code,handler,null_elem_name) values(154120,15372,50172,2,1214,'%COLUMN%=generateFilterValue(%VALUE%)',1017,'$filters[5057]="%COLUMN%=1525170";','onchange="updateFilter2(15362,50172,generateFilterValue(%VALUE%));sendForm(15362);"','Все группы запчастей');
insert into actionFilters(id,param_id,prop_id,position,viewer,sql_code,domain,handler) values(154121,15372,50165,3,1215,'%COLUMN%=LIKE("generateFilterValue(%VALUE%)")',134,'oninput="updateFilter(this);"');

insert into actionFilters(id,param_id,prop_id,position,viewer,sql_code,domain,php_code,handler,null_elem_name) values(154122,15373,50137,1,1214,'%COLUMN%=generateFilterValue(%VALUE%)',1020,'$filters[50178]="%COLUMN%=0";','onchange="updateFilter2(15363,50137,generateFilterValue(%VALUE%));sendForm(15363);updateFilter2(15365,5048,\'%COLUMN%=15391\');sendForm(15365);"','Все бренды');
insert into actionFilters(id,param_id,prop_id,position,viewer,sql_code,domain,php_code,handler,null_elem_name) values(154123,15373,50165,2,1214,'%COLUMN%=generateFilterValue(%VALUE%)',1017,'$filters[5057]="%COLUMN%=1525171";','onchange="updateFilter2(15363,50165,generateFilterValue(%VALUE%));sendForm(15363);"','Все типы техники');
insert into actionFilters(id,param_id,prop_id,position,viewer,sql_code,domain,php_code,handler,null_elem_name,null_elem_value) values(154124,15373,50172,2,1214,'%COLUMN%=generateFilterValue(%VALUE%)',1017,'$filters[5057]="%COLUMN%=1525170";','onchange="updatePropValue(15363,5055,%VALUE%);sendForm(15363);updateFilter2(15364,50184,generateFilterValue(%VALUE%));sendForm(15364);"','Все группы запчастей','1016');
-- updateFilter2(15363,50172,generateFilterValue(%VALUE%));
insert into actionFilters(id,param_id,prop_id,position,viewer,sql_code,domain,handler) values(154125,15373,50165,3,1215,'%COLUMN%=LIKE("generateFilterValue(%VALUE%)")',134,'oninput="updateFilter(this);"');

insert into actionFilters(id,param_id,prop_id,position,viewer,sql_code,domain,handler,add_prop,show_name) values(154126,15374,50196,1,1217,'%COLUMN%=generateFilterValue(%VALUE%)',1020,'onchange="updateFilter2(15363,50194,generateFilterValue(%VALUE%));sendForm(15363);"',1525212,'Длина:');
insert into actionFilters(id,param_id,prop_id,position,viewer,sql_code,domain,handler,add_prop,show_name) values(154127,15374,50196,1,1216,'%COLUMN%=generateFilterValue(%VALUE%)',1020,'onchange="updateFilter2(15363,50195,generateFilterValue(%VALUE%));sendForm(15363);"',1525212,'Тип профиля:');
insert into actionFilters(id,param_id,prop_id,position,viewer,sql_code,domain,handler,add_prop,show_name) values(154128,15374,50196,1,1216,'%COLUMN%=generateFilterValue(%VALUE%)',1020,'onchange="updateFilter2(15363,50196,generateFilterValue(%VALUE%));sendForm(15363);"',1525212,'Кол-во зубьев:');



select * from actionFilters;

-- Создание таблицы производителей
drop table if exists forms;
create table  forms(
  id bigint,
  result_viewer bigint,
  action bigint,
  result_container varchar(1024),
  result_domain bigint,
  pid bigint,
  nested_form bigint
);
  
  
insert into forms(id,result_viewer,action,result_container,result_domain,pid) values(15361,1213,2354,'#find_res_1',1027,15371);
insert into forms(id,result_viewer,action,result_container,result_domain,pid) values(15362,1212,2354,'#find_res_2',1016,15372);
insert into forms(id,result_viewer,action,result_container,result_domain,pid) values(15363,1212,2354,'#find_res_3',1016,15373);
insert into forms(id,result_viewer,action,result_container,result_domain,pid) values(15364,null,2354,'#find_res_4',163,15373);
insert into forms(id,result_viewer,action,result_container,result_domain,pid,nested_form) values(15365,1220,2354,'#find_res_5',111,15373,15363);
insert into forms(id,result_viewer,action,result_container,result_domain,pid) values(15366,1219,2354,'#win_2',1027,15371);
insert into forms(id,result_viewer,action,result_container,result_domain,pid,nested_form) values(15367,1220,2354,'#find_res_6',111,15371,15368);
insert into forms(id,result_viewer,action,result_container,result_domain,pid) values(15368,1212,2354,'#find_res_2',1016,15371);

insert into forms(id,result_viewer,action,result_container,result_domain,pid) values(15369,null,2354,null,1016,15372);

select * from models