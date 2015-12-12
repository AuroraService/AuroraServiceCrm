-- Создание справочника ресурсов
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

-- Формы создания
insert into dim_resource(id,name,type) values(11510,'Форма создания сотрудника',115);
insert into dim_resource(id,name,type) values(11511,'Форма создания клиента',115);
insert into dim_resource(id,name,type) values(11512,'Форма создания сервисной заявки',115);
insert into dim_resource(id,name,type) values(11513,'Форма создания заявки на заказ запчасти',115);
insert into dim_resource(id,name,type) values(11514,'Форма создания заявки на доставку',115);
insert into dim_resource(id,name,type) values(11515,'Форма создания заявки на изъятие техники',115);
insert into dim_resource(id,name,type) values(11516,'Форма создания адреса',115);


-- Набор параметров
insert into dim_resource(id,name,type) values(15211,'Параметр 1',1611);
insert into dim_resource(id,name,type) values(15212,'Параметр 2',1611);

-- 1119,11110,1157,1158 / 1013,104
-- Создание таблицы высказываний
drop table if exists triplets;
create table triplets(
  subj_id	 bigint,
  prop_id    bigint,
  obj_id	    bigint,
  value	    varchar(256),
  cr_time    datetime,
  start_date datetime default '2015-11-01',
  end_date   datetime default '9999-01-01',
  PRIMARY KEY(subj_id,prop_id,obj_id,end_date)
);

select * from triplets;

-- Действия для параметров
insert into triplets(subj_id, prop_id,obj_id) values(15211,5058,231);
insert into triplets(subj_id, prop_id,obj_id) values(15212,5058,2338);

insert into triplets(subj_id, prop_id,obj_id) values(15213,5058,2346);



-- Иерархия классов заявок
insert into triplets(subj_id, prop_id,obj_id) values(103,5061,1612);
insert into triplets(subj_id, prop_id,obj_id) values(109,5061,103);
insert into triplets(subj_id, prop_id,obj_id) values(1010,5061,103);
insert into triplets(subj_id, prop_id,obj_id) values(1011,5061,103);
insert into triplets(subj_id, prop_id,obj_id) values(1012,5061,103);
-- Отношения между свойствами
insert into triplets(subj_id, prop_id,obj_id) values(5050,5049,5028);
insert into triplets(subj_id, prop_id,obj_id) values(50120,5049,5057);
-- Выпадающие списки
insert into triplets(subj_id, prop_id,obj_id) values(1191,1515,119);
insert into triplets(subj_id, prop_id,obj_id) values(1192,1515,119);
insert into triplets(subj_id, prop_id,obj_id) values(1193,1515,119);
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

select u.id, concat(IFNULL(u.second_name,''),' ',IFNULL(u.first_name,''),' ',IFNULL(u.patronymic,''),' ',IFNULL(u.position,''),' ',IFNULL(u.tel,''),' ',IFNULL(u.address,''),' ',IFNULL(u.login,''))
from users u;

-- Права
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
select * from triplets where obj_id = 2315;


-- 15012.Лобанов Станислав
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,231);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,232);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2326);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2315);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,2321);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,233);
insert into triplets(subj_id, prop_id,obj_id) values(15012,5011,234);

-- 15014.Зякина Валентина
insert into triplets(subj_id, prop_id,obj_id) values(15014,5011,2335);

-- 15016.Великанова Юлия
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,231);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,232);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2326);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2315);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2321);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,233);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,234);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2328);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2329);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2330);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2331);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,235);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,236);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2325);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2332);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2324);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,237);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,238);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2323);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2322);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2333);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,239);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2310);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2311);
insert into triplets(subj_id, prop_id,obj_id) values(15016,5011,2312);
-- 15017.Овчинникова Елена
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,231);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,232);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2326);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2315);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2321);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,233);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,234);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2328);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2329);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2330);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2331);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,235);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,236);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2325);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2332);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2324);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,237);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,238);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2323);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2322);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2333);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,239);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2310);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2311);
insert into triplets(subj_id, prop_id,obj_id) values(15017,5011,2312);
-- 15019
insert into triplets(subj_id, prop_id,obj_id) values(15019,5011,2323);
insert into triplets(subj_id, prop_id,obj_id) values(15019,5011,233);
-- 150110
insert into triplets(subj_id, prop_id,obj_id) values(150110,5011,2321);
insert into triplets(subj_id, prop_id,obj_id) values(150110,5011,231);



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
drop table if exists requests;
create table requests(
  id            bigint,
  creation_time timestamp default current_timestamp,
  client_id     bigint,
  user_id       bigint,
  tel           varchar(256),
  address       varchar(256),
  state         bigint,
  version_state bigint,
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



insert into dim_resource(id,name,search_name,type) values(15031,'Заявка №15031','15031 Лобанов Станислав Дмитриевич Илья Бобошко Александрович +7(909)925-77-54 Железнодорожная 12-15',109);
insert into dim_resource(id,name,search_name,type) values(15032,'Заявка №15032','15032 Чернов Максим Михайлович Валентин Коткин Николаевич +7(906)313-75-54 Красная 16-54',1010);
insert into dim_resource(id,name,search_name,type) values(15033,'Заявка №15033','15033 Лобанов Станислав Дмитриевич Елена Ерохина Владимировна +7(913)160-49-42 Красная 16-54',1011);
insert into dim_resource(id,name,search_name,type) values(15034,'Заявка №15034','15034 Филатов Артур  Елена Ерохина Владимировна +7(911)568-73-44 Железнодорожная 12-15',1011);
insert into dim_resource(id,name,search_name,type) values(15035,'Заявка №15035','15035 Зякина Валентина Михайловна Елена Ерохина Владимировна +7(962)205-75-00 Железнодорожная 12-15',1012);
insert into dim_resource(id,name,search_name,type) values(15036,'Заявка №15031','15031 Лобанов Станислав Дмитриевич Илья Бобошко Александрович +7(909)925-77-54 Железнодорожная 12-15',109);

select * from requests;

select r.id, concat(r.id,' ',IFNULL(u.second_name,''),' ',IFNULL(u.first_name,''),' ',IFNULL(u.patronymic,''),' ',IFNULL(c.second_name,''),' ',IFNULL(c.first_name,''),' ',IFNULL(c.patronymic,''),' ',IFNULL(t.number,''),' ',IFNULL(a.value,''))
from requests r
  join users u on u.id = r.user_id
  join clients c on c.id = r.client_id
  join telephones t on t.id = r.tel
  join addresses a on a.id = r.address;

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
  value_template varchar(256), -- Шаблон отображения ресурса
  ent_prop_id bigint,
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
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11295, 'Id', 1, 0, NULL,0,1111,NULL,129,151145);
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
  
-- 1112
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11296, 'Id', 1, 0, NULL,0,1112,NULL,129,151140);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11210,'Фамилия',2,1, NULL,1,1112,NULL,1210,151141);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11211,'Имя',3,1, NULL,1,1112,NULL,1210,151142);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11212,'Отчество',4,1, NULL,1,1112,NULL,1210,151143);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11213,'Комментарий',5, 1, NULL,1,1112,NULL,1210,151144);
-- 1113
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11297, 'Id', 1, 0, NULL,0,1113,NULL,129,151155);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11214,'Дата создания',2, 1, NULL,1,1113,NULL,1210,151156);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11215,'Исполнитель',3,0, NULL,1,1113,NULL,129,151157);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11216,'Клиент',4,0, NULL,1,1113,NULL,129,151158);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11217,'Телефон',5,0, NULL,1,1113,NULL,129,151159);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11218,'Адрес',6,0, NULL,1,1113,NULL,129,151160);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11219,'Состояние',7,0, null,1,1113,NULL,1210,151161);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11221,'Возможные проблемы',9,1, NULL,1,1113,NULL,1210,151163);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11222,'Время выезда',10,0, null,1,1113,NULL,1210,151167);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11223,'Дата выезда',11,1, NULL,1,1113,NULL,1210,151168);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11224,'Модель',12,1, NULL,1,1113,NULL,1210,151169);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11225,'Стоимость',13,1, NULL,1,1113,NULL,1210,151170);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11226,'Стоимость ремонта',14,1, NULL,1,1113,NULL,1210,151171);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11227,'Комментарий',15,1, NULL,1,1113,NULL,1210,151165);

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
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11298, 'Id', 1, 0, NULL,0,1114,NULL,129,151155);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11228,'Дата создания',2,1, NULL,1,1114,NULL,1210,151156);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11229,'Исполнитель',3, 0, NULL,1,1114,NULL,129,151157);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11230,'Клиент',4,0, NULL,1,1114,NULL,129,151158);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11231,'Телефон',5,0, NULL,1,1114,NULL,129,151159);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11232,'Адрес',6, 0, NULL,1,1114,NULL,129,151160);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11233,'Состояние',7,1, NULL,1,1114,NULL,1210,151161);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11235,'Возможные проблемы',9, 1, NULL,1,1114,NULL,1210,151163);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id)
  values(11236,'Дата заказа',10, 1, NULL,1,1114,NULL,1210,151173);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11237,'Дата прихода',11,1, NULL,1,1114,NULL,1210,151174);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11238,'Код запчасти',12, 1, NULL,1,1114,NULL,1210,151175);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11239,'Поставщик',13, 1, NULL,1,1114,NULL,1210,151176);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11240,'Цена покупки',14, 1, NULL,1,1114,NULL,1210,151177);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11241,'Цена продажи',15, 1, NULL,1,1114,NULL,1210,151178);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11242,'Комментарий',16, 1, NULL,1,1114,NULL,1210,151165);
  
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
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11299, 'Id', 1, 0, NULL,0,1115,NULL,129,151155);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11243,'Дата создания',2, 1, NULL,0,11115,NULL,1210,151156);
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
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112100, 'Id', 1, 0, NULL,0,1116,NULL,129,151155);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11259,'Дата создания',2, 1, NULL,1,1116,NULL,1210,151156);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11260,'Исполнитель',3,0, NULL,1,1116,NULL,129,151157);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11261,'Клиент',4,0, NULL,1,1116,NULL,129,151158);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11262,'Телефон',5,0, NULL,1,1116,NULL,129,151159);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11263,'Адрес',6,0, NULL,1,1116,NULL,129,151160);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11264,'Состояние',7,1, NULL,1,1116,NULL,1210,151161);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11266,'Возможные проблемы',9, 1, NULL,1,1116,NULL,1210,151163);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11267,'Время выезда',10,1, NULL,1,1116,NULL,1210,151188);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11268,'Дата выезда',11,1, NULL,1,1116,NULL,1210,151189);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11269,'Комментарий',12,1, NULL,1,1116,NULL,1210,151165);
  
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
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(11281, 'Исполнитель', 3, 0,NULL,1,1153,NULL,123,151157,'%508% %509%');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(11282, 'Клиент', 4, 0, NULL,1,1153,NULL,123,151158,'%508% %509%');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(11283, 'Телефон', 5, 0, NULL,1,1153,NULL,123,151159,'%5067%');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(11284, 'Адрес', 6, 0, NULL,1,1153,NULL,123,151160,'%5066%');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11285, 'Состояние', 7, 4, NULL,1,1153,NULL,124,151161);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(11286, 'Результат', 8,  0, NULL,1,1153,NULL,123,151162,'Заявка №%5048%');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11287, 'Возможные проблемы', 9, 1, NULL,1,1153,NULL,121,151163);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11288, 'Время выезда', 10, 4, NULL,1,1153,NULL,126,151167);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11289, 'Дата выезда', 11, 3, '%Y-%m-%d',1,1153,NULL,122,151168);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11290, 'Модель', 12, 1, NULL,1,1153,NULL,121,151169);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11291, 'Стоимость', 13, 1, NULL,1,1153,NULL,121,151170);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11292, 'Стоимость ремонта', 14, 1, NULL,1,1153,NULL,121,151171);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(11293, 'Комментарий', 15, 1, NULL,1,1153,NULL,121,151165);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(112168, 'Предистория', 16, 0, NULL,1,1153,NULL,123,151164,'Заявка №%5048%');


-- 1154
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112300, 'Id', 1, 1, NULL,0,1154,NULL,121,151155);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112301,'Дата создания',2,1, NULL,1,1154,NULL,121,151156);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(112302,'Исполнитель',3, 0, NULL,1,1154,NULL,123,151157,'%508% %509%');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(112303,'Клиент',4,0, NULL,1,1154,NULL,123,151158,'%508% %509%');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(112304,'Телефон',5,0, NULL,1,1154,NULL,123,151159,'%5067%');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(112305,'Адрес',6, 0, NULL,1,1154,NULL,123,151160,'%5066%');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112306,'Состояние',7,1, NULL,1,1154,NULL,121,151161);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112307,'Возможные проблемы',9, 1, NULL,1,1154,NULL,121,151163);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id)
  values(112308,'Дата заказа',10, 1, NULL,1,1154,NULL,121,151173);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112309,'Дата прихода',11,1, NULL,1,1154,NULL,121,151174);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112310,'Код запчасти',12, 1, NULL,1,1154,NULL,121,151175);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112311,'Поставщик',13, 1, NULL,1,1154,NULL,121,151176);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112312,'Цена покупки',14, 1, NULL,1,1154,NULL,121,151177);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112313,'Цена продажи',15, 1, NULL,1,1154,NULL,121,151178);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112314,'Комментарий',16, 1, NULL,1,1154,NULL,121,151165);
  


-- 1155
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112323, 'Id', 1, 1, NULL,0,1155,NULL,121,151155);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112324,'Дата создания',2, 1, NULL,0,11115,NULL,121,151156);
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
  values(112347, 'Id', 1, 1, NULL,0,1156,NULL,123,151155);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112348,'Дата создания',2, 1, NULL,1,1156,NULL,121,151156);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(112349,'Исполнитель',3,0, NULL,1,1156,NULL,123,151157,'%508% %509%');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(112350,'Клиент',4,0, NULL,1,1156,NULL,123,151158,'%508% %509%');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(112351,'Телефон',5,0, NULL,1,1156,NULL,123,151159,'%5067%');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id,value_template) 
  values(112352,'Адрес',6,0, NULL,1,1156,NULL,123,151160,'%5066%');
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112353,'Состояние',7,1, NULL,1,1156,NULL,121,151161);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112354,'Возможные проблемы',9, 1, NULL,1,1156,NULL,121,151163);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112355,'Время выезда',10,1, NULL,1,1156,NULL,121,151188);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112356,'Дата выезда',11,1, NULL,1,1156,NULL,121,151189);
insert into sColumns(id, name, position,  type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112357,'Комментарий',12,1, NULL,1,1156,NULL,121,151165);
  
  
-- 1157
insert into sColumns(id, name, position, type, template,editable,form,pid,viewer,ent_prop_id) 
  values(112186, 'Id', 1, 1, NULL,0,1157,NULL,123,151195);
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
 values( 112205,'Полный',10,1, NULL,1,1157,NULL,121,1511104);
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
  
select max(id) from sColumns;
 
-- counter 112477


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
insert into buttons(id,name,link,pid,action,position,level) values(15057,'Отчёты',null,15052,null,4,3);
insert into buttons(id,name,link,pid,action,position,level) values(150532,'Магазины',null,15052,null,5,3);

insert into buttons(id,name,link,pid,action,position,level,type) values(15058,'Заявки на сервис','index.php?action=2341&param=15211',15054,null,1,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(15059,'Заявки на заказ запчасти','index.php?action=232',15054,null,2,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150510,'Заявки на доставку','index.php?action=233',15054,null,3,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150511,'Заявки на изъятие техники','index.php?action=234',15054,null,4,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150528,'Звонки','index.php?action=2331',15054,null,5,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150529,'Поиск','index.php?action=2333',15054,null,6,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150512,'Разделитель',null,15054,null,7,4,2);
insert into buttons(id,name,link,pid,action,position,level,type) values(150513,'Создание заявки',null,15054,null,8,4,3);
insert into buttons(id,name,link,pid,action,position,level,type) values(150514,'Сервис','index.php?action=239',15054,239,9,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150515,'Заказ запчасти','index.php?action=2310',15054,2310,10,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150516,'Доставка','index.php?action=2311',15054,2311,11,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150517,'Изъятие техники','index.php?action=2312',15054,2312,12,4,1);

insert into buttons(id,name,link,pid,action,position,level,type) values(150518,'База клиентов','index.php?action=235',15055,null,1,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150519,'Разделитель',null,15055,null,2,4,2);
insert into buttons(id,name,link,pid,action,position,level,type) values(150520,'Создание',null,15055,null,3,4,3);
insert into buttons(id,name,link,pid,action,position,level,type) values(150521,'Новый клиент','index.php?action=2313',15055,2313,4,4,1);

insert into buttons(id,name,link,pid,action,position,level,type) values(150522,'Список сотрудников','index.php?action=236',15056,null,1,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150523,'Разделитель',null,15056,null,2,4,2);
insert into buttons(id,name,link,pid,action,position,level,type) values(150524,'Создание',null,15056,null,3,4,3);
insert into buttons(id,name,link,pid,action,position,level,type) values(150525,'Новый сотрудник','index.php?action=2314',15056,null,4,4,1);

insert into buttons(id,name,link,pid,action,position,level,type) values(150530,'Сессии','index.php?action=2341&param=15212',15057,2338,1,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150531,'Действия','index.php?action=2344',15057,2344,2,4,1);

insert into buttons(id,name,link,pid,action,position,level,type) values(150533,'Продукты','index.php?action=2341&param=15213',150532,2341,2,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150534,'Категории продуктов','index.php?action=2347',150532,2346,2,4,1);

insert into buttons(id,name,link,pid,action,position,level,type) values(150526,'user_name',null,15053,null,1,4,1);
insert into buttons(id,name,link,pid,action,position,level,type) values(150527,'Выход','/logout',15053,null,2,4,1);


-- Создание таблицы расположения сущностей
drop table if exists entities;
create table entities(
  id  bigint,
  location     varchar(256),
  namespace    bigint,
  name_template varchar(1024),
  search_name_template varchar(1024),
  present_name_template varchar(1024),
  counter      bigint,
  start_date datetime default '2015-11-01',
  end_date   datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
);  

insert into entities(id, location) values(132, 'dim_resource');
insert into entities(id, location) values(113, 'buttons');
insert into entities(id, location,namespace,counter) values(101, 'clients',1502,10);
insert into entities(id, location,namespace,counter) values(102, 'users',1501,10);
insert into entities(id, location) values(106, 'actions');
insert into entities(id, location) values(107, 'logins');
insert into entities(id, location) values(103, 'requests');
insert into entities(id, location,namespace,counter,name_template,search_name_template,present_name_template) values(109, 'requests',1512,10,'Заявка №%5048%','%5048% %5022% %5014% %5024% %5025% %5026% %5029%','Дата создания:%5022%, Исполнитель:%5014%, Клиент:%5024%, Телефон:%5025%, Адрес:%5026%');
insert into entities(id, location,namespace,counter,name_template,search_name_template,present_name_template) values(1010, 'requests',1513,10,'Заявка №%5048%','%5048%','%5048%');
insert into entities(id, location,namespace,counter,name_template,search_name_template,present_name_template) values(1011, 'requests',1514,10,'Заявка №%5048%','%5048%','%5048%');
insert into entities(id, location,namespace,counter,name_template,search_name_template,present_name_template) values(1012, 'requests',1515,10,'Заявка №%5048%','%5048%','%5048%');

insert into entities(id, location) values(12, 'sCrmElements');
insert into entities(id, location) values(14, 'sCrmElements');

insert into entities(id, location) values(23, 'dim_actions');

insert into entities(id, location,namespace,counter) values(1013, 'addresses',1508,10);
insert into entities(id, location,namespace,counter) values(104, 'calls',1510,10);
insert into entities(id, location,namespace,counter) values(1014, 'telephones',1509,10);
insert into entities(id, location) values(1511, 'ent_properties');

insert into entities(id, location) values(112, 'sColumns');

insert into entities(id, location) values(1192, 'dim_resource');
insert into entities(id, location) values(1191, 'dim_resource');
insert into entities(id, location) values(10, 'entities');




-- insert into entities(id, location) values(104, 'calls');
-- insert into entities(id, location) values(106, 'actions');
-- insert into entities(id, location) values(107, 'logins');
insert into entities(id, location,namespace,counter) values(108, 'providers',1516,10);
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
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,cardinal) values(151162,103,5028,'result',103,1,-1);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151163,103,5029,'poss_problem',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,virtual,cardinal) values(151164,103,5050,'prehistory',103,1,1,-1);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151165,103,5021,'comment',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511148,103,5051,'type',103,0);
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

-- 10.Элемент предметной области
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(151191,10,5048,'id',10,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151192,10,503,'location',134,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151193,10,5089,'namespace',135,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(151194,10,5090,'counter',135,0);

insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511170,10,50133,'name_template',135,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511171,10,50134,'search_name_template',135,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain,external) values(1511172,10,50135,'present_name_template',135,0);

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

-- 1014.Телефон
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511113,1014,5048,'id',1014,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511114,1014,5067,'number',1014);

-- 161.Фильтр
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511115,161,5048,'id',161,0,0);
-- 162.Поле фильтра
insert into ent_properties(id, ent_id, prop_id, alias,domain,external,editable) values(1511116,162,5048,'id',162,0,0);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511117,162,501,'name',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511118,162,5096,'sql_code',134);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511119,162,5095,'filter_id',161);
-- 163.Фильтр действия
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511120,163,5095,'filter_id',161);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511121,163,5082,'prop_id',50);
-- insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511122,163,5058,'action',161);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511122,163,50109,'param_id',1611);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511123,163,5094,'default_value',161);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511124,163,504,'position',161);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511127,163,501,'name',134);
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
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511146,1612,50113,'start_date',136);
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511147,1612,50114,'end_date',136);
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
insert into ent_properties(id, ent_id, prop_id, alias,domain) values(1511161,1614,5013,'object_id',132);
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

-- 1511193

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
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(239,2318,'Создание сервисной заявки',null,109,11512,2327);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2310,2318,'Создание заявки на заказ запчасти',null,1010,11513,2327);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2311,2318,'Создание заявки на доставку',null,1011,11514,2327);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2312,2318,'Создание заявки на изъятие техники',null,1012,11515,2327);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2313,2318,'Создание клиента',null,101,11511,2318);
insert into dim_actions(id,action_id,name,contr_id,domain,form,pid) values(2314,2318,'Создание пользователя',null,102,11510,2318);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2345,2345,'Создание сущности',1410,132,23);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2334,2334,'Изменение сущности',1410,132,23);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2319,2319,'Удаление сущности',null,132,23);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2333,2333,'Поиск сущностей(Отображение формы)',146,132,23);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2342,2342,'Поиск сущностей(Отображение запроса)',146,132,23);

insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2336,2336,'Печать содержимого поиска выбора',1411,132,23);
insert into dim_actions(id,action_id,name,contr_id,domain,pid) values(2340,2340,'Печать формы поиска выбора',1411,132,23);
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
  start_date datetime default '2015-11-01',
  end_date   datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
);

insert into addresses(id,value) values(15081,'Красная 16-54');
insert into addresses(id,value,country,region,destrict,town,street,home,housing,flat) values(15082,'Железнодорожная 12-15','Россия','Саратовская','','Ртищево','Железнодорожная','12','','15');

insert into dim_resource(id,name,type) values(15081,'Красная 16-54',1013);
insert into dim_resource(id,name,type) values(15082,'Железнодорожная 12-15',1013);

-- Создание таблицы телефонов 
drop table if exists telephones;
create table telephones(
  id         bigint,
  number     varchar(256),
  start_date datetime default '2015-11-01',
  end_date   datetime default '9999-01-01',
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

-- Создание таблицы фильтров действий
drop table if exists actionFilters;
create table actionFilters(
  param_id bigint,
  filter_id bigint,
  name    varchar(256),
  prop_id      bigint,  -- Привязка к свойству
  default_value bigint,  -- Поле по умолчанию
  position      int,     -- Позиция
  showable  int default 1 -- 0-не отображать, 1-отображать
);


insert into actionFilters(param_id,filter_id,name,prop_id,default_value,position,showable) values(15211,15171,'Дата выезда:',5031,15181,1,1);

insert into actionFilters(param_id,filter_id,name,prop_id,default_value,position,showable) values(15212,15172,'Время создания:',5022,15185,1,1);

insert into actionFilters(param_id,filter_id,name,prop_id,default_value,position,showable) values(15213,15174,'Строк на странице:',50147,15189,1,1); -- 50146.Limit

select * from actionFilters;

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

-- 1572. Сессии
insert into sFilterFields(id,name,sql_code,filter_id) values(15185,'За сегодня','DATE_FORMAT(%COLUMN%, "%Y-%m-%d") = CURDATE()',15172);
insert into sFilterFields(id,name,sql_code,filter_id) values(15186,'За неделю','%COLUMN% > NOW() - INTERVAL 7 DAY',15172);
insert into sFilterFields(id,name,sql_code,filter_id) values(15187,'За всё время','1=1',15172);

insert into sFilterFields(id,name,sql_code,filter_id) values(15188,'Тест','1=1',15173);

insert into sFilterFields(id,name,sql_code,filter_id) values(15189,'50','50',15174);
insert into sFilterFields(id,name,sql_code,filter_id) values(151810,'100','100',15174);
insert into sFilterFields(id,name,sql_code,filter_id) values(151811,'500','500',15174);
insert into sFilterFields(id,name,sql_code,filter_id) values(151812,'ВСЕ','',15174);

-- Создание таблицы сессий
drop table if exists sessions;
create table sessions(
  id         bigint,
  session_id varchar(256),
  creation_time timestamp default CURRENT_TIMESTAMP,
  user_id    bigint,
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
  object_id bigint,
  domain bigint,
  state1 bigint,
  state2 bigint,
  action_id bigint,
  pid bigint,
  start_time datetime,
  end_time datetime,
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

-- Создание таблицы файлов
drop table if exists files;
create table  files(
  id  bigint,
  ph_name varchar(256),
  type  bigint,
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

-- Создание таблицы записок
drop table if exists op_notes;
create table  op_notes(
  id  bigint,
  value varchar(1024),
  sender bigint,
  creation_time datetime,
  ex_req_flag int,
  ex_status int,
  performer_id bigint,
  ex_date datetime,
  start_date datetime default '2015-10-01',
  end_date   datetime default '9999-01-01',
  PRIMARY KEY(id,end_date)
);

select * from op_notes;

insert into op_notes(id,value,sender,creation_time,ex_req_flag,ex_status,performer_id,ex_date) values (15321,'Записка 1',15011,'2015-12-10 13:42',0,0,null,null);
insert into op_notes(id,value,sender,creation_time,ex_req_flag,ex_status,performer_id,ex_date) values (15322,'Записка 2',15011,'2015-12-10 13:43',1,0,null,null);
insert into op_notes(id,value,sender,creation_time,ex_req_flag,ex_status,performer_id,ex_date) values (15323,'Записка 3',15011,'2015-12-10 13:44',1,0,null,null);
insert into op_notes(id,value,sender,creation_time,ex_req_flag,ex_status,performer_id,ex_date) values (15324,'Записка 4',15011,'2015-12-10 13:40',1,0,null,null);

insert into op_notes(id,value,sender,creation_time,ex_req_flag,ex_status,performer_id,ex_date) values (15325,'Записка 5',15012,'2015-12-10 13:45',1,2,15015,'2015-12-10 13:55');
insert into op_notes(id,value,sender,creation_time,ex_req_flag,ex_status,performer_id,ex_date) values (15326,'Записка 6',15013,'2015-12-10 13:49',1,1,15014,'2015-12-10 13:50');

insert into dim_resource(id,type) values(15324,1026);

-- 
select * from requests;
select * from triplets;

-- update triplets set end_date = '' where subj_id = 15031 and prop_id = 5028 and obj_id=15031 and end_date = '9999-01-01';
select * from entities;
select * from executions;
select * from dim_resource;

/*
update products p 
  join buffer_products bp on bp.articul = p.articul
set p.provider_id = 15161;
*/
insert into dim_resource(id, name,type, start_date)
select id, show_name,1016, '2015-10-01 00:00:00' from products;