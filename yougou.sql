SET NAMES UTF8;
DROP DATABASE IF EXISTS yougou;
CREATE DATABASE yougou CHARSET=UTF8;
USE yougou;

/**用户登录表**/
CREATE TABLE yougou_user_login(
  uid INT PRIMARY KEY AUTO_INCREMENT,    #用户编号
  uname VARCHAR(32) UNIQUE NOT NULL,     #用户名
  upwd VARCHAR(32) NOT NULL,             #用户密码
  phone VARCHAR(16) UNIQUE NOT NULL,     #用户手机
  email VARCHAR(64) UNIQUE               #用户邮箱
 );
INSERT INTO yougou_user_login VALUES
(NULL,'tom1234',md5('123456'),'13812345678','tom@sina.com'),
(NULL,'lucy1234',md5('123456'),'13812345679','lucy@sina.com'),
(NULL,'lily1234',md5('123456'),'13812345688','lily@sina.com'),
(NULL,'sunny1234',md5('123456'),'13812345689','sunny@sina.com');
/**首页轮播**/
CREATE TABLE yougou_index_banner(
  bid INT PRIMARY KEY AUTO_INCREMENT,    
  src VARCHAR(256) NOT NULL,             
  title VARCHAR(128) NOT NULL             
);
 INSERT INTO yougou_index_banner VALUES
(NULL,'http://127.0.0.1:3000/img/banner1.jpg','首页轮播1'),
(NULL,'http://127.0.0.1:3000/img/banner2.jpg','首页轮播2'),
(NULL,'http://127.0.0.1:3000/img/banner3.jpg','首页轮播3'),
(NULL,'http://127.0.0.1:3000/img/banner4.jpg','首页轮播4');
/**首页二层**/
CREATE TABLE yougou_index_new(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  fid INT,
  img VARCHAR(256) NOT NULL,
  logo VARCHAR(256) NOT NULL,
  title VARCHAR(256),
  price DECIMAL(9,2),
  packet INT
);
INSERT INTO yougou_index_new VALUES
(1,101,'http://127.0.0.1:3000/img/index_new_01.jpg','http://127.0.0.1:3000/img/belle_logo.png','英伦 满帮鞋',999,1),
(2,102,'http://127.0.0.1:3000/img/index_new_02.jpg','http://127.0.0.1:3000/img/tata_logo.png','英伦 满帮鞋',899,1),
(3,103,'http://127.0.0.1:3000/img/index_new_03.jpg','http://127.0.0.1:3000/img/teenmix_logo.png','商务 满帮鞋',959,1),
(4,104,'http://127.0.0.1:3000/img/index_new_04.jpg','http://127.0.0.1:3000/img/bata_logo.png','英伦 满帮鞋',1290,1),
(5,105,'http://127.0.0.1:3000/img/index_new_05.jpg','http://127.0.0.1:3000/img/joypeace_logo.png','时尚休闲 休闲靴',1398,1),
(6,106,'http://127.0.0.1:3000/img/index_new_06.jpg','http://127.0.0.1:3000/img/millies_logo.png','休闲 短靴',888,1),
(7,107,'http://127.0.0.1:3000/img/index_new_07.jpg','http://127.0.0.1:3000/img/tata_logo.png','OL通勤 短靴',1099,1),
(8,108,'http://127.0.0.1:3000/img/index_new_08.jpg','http://127.0.0.1:3000/img/joypeace_logo.png','商务 满帮鞋',1090,1),
(9,109,'http://127.0.0.1:3000/img/index_new_09.jpg','http://127.0.0.1:3000/img/staccato_logo.png','英伦 满帮鞋',1199,1),
(10,110,'http://127.0.0.1:3000/img/index_new_10.jpg','http://127.0.0.1:3000/img/bata_logo.png','英伦 满帮鞋',1290,1),
(11,111,'http://127.0.0.1:3000/img/index_new_11.jpg','http://127.0.0.1:3000/img/staccato_logo.png','简约 满帮鞋',1898,1),
(12,112,'http://127.0.0.1:3000/img/index_new_12.jpg','http://127.0.0.1:3000/img/belle_logo.png','英伦 满帮鞋',1198,1),
(13,201,'http://127.0.0.1:3000/img/index_new_0101.jpg','http://127.0.0.1:3000/img/adidas_logo.png','休闲鞋',495,2),
(14,202,'http://127.0.0.1:3000/img/index_new_0102.jpg','http://127.0.0.1:3000/img/adidasoriginals_logo.png','休闲鞋',1599,2),
(15,203,'http://127.0.0.1:3000/img/index_new_0103.jpg','http://127.0.0.1:3000/img/adidasoriginals_logo.png','休闲鞋',482,2),
(16,204,'http://127.0.0.1:3000/img/index_new_0104.jpg','http://127.0.0.1:3000/img/adidas_logo.png','休闲鞋',639,2),
(17,205,'http://127.0.0.1:3000/img/index_new_0105.jpg','http://127.0.0.1:3000/img/nike_logo.png','休闲鞋',699,2),
(18,206,'http://127.0.0.1:3000/img/index_new_0106.jpg','http://127.0.0.1:3000/img/nike_logo.png','休闲鞋',1098,2),
(19,207,'http://127.0.0.1:3000/img/index_new_0107.jpg','http://127.0.0.1:3000/img/adidasneo_logo.png','休闲鞋',629,2),
(20,208,'http://127.0.0.1:3000/img/index_new_0108.jpg','http://127.0.0.1:3000/img/puma_logo.png','休闲鞋',589,2),
(21,209,'http://127.0.0.1:3000/img/index_new_0109.jpg','http://127.0.0.1:3000/img/adidasneo_logo.png','休闲鞋',599,2),
(22,210,'http://127.0.0.1:3000/img/index_new_0110.jpg','http://127.0.0.1:3000/img/converse_logo.png','羽绒服',1099,2),
(23,211,'http://127.0.0.1:3000/img/index_new_0111.jpg','http://127.0.0.1:3000/img/thenorthface_logo.png','皮肤衣',798,2),
(24,212,'http://127.0.0.1:3000/img/index_new_0112.jpg','http://127.0.0.1:3000/img/nike_logo.png','休闲鞋',788,2);
/**首页三层**/
CREATE TABLE yougou_index_poster(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(256) NOT NULL,
  bigLogo VARCHAR(256) NOT NULL,
  brandId INT,
  packet INT
);
INSERT INTO yougou_index_poster VALUES
(NULL,"http://127.0.0.1:3000/img/index_poster01.jpg","http://127.0.0.1:3000/img/index_poster01_hover.png",101,1),
(NULL,"http://127.0.0.1:3000/img/index_poster02.jpg","http://127.0.0.1:3000/img/index_poster02_hover.png",102,1),
(NULL,"http://127.0.0.1:3000/img/index_poster03.jpg","http://127.0.0.1:3000/img/index_poster03_hover.png",103,1),
(NULL,"http://127.0.0.1:3000/img/index_poster0201.jpg","http://127.0.0.1:3000/img/index_poster0201_hover.png",201,2),
(NULL,"http://127.0.0.1:3000/img/index_poster0202.jpg","http://127.0.0.1:3000/img/index_poster0202_hover.png",202,2),
(NULL,"http://127.0.0.1:3000/img/index_poster0203.jpg","http://127.0.0.1:3000/img/index_poster0203_hover.png",203,2);
CREATE TABLE yougou_index_brand(
  bid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(256) NOT NULL,
  brandName VARCHAR(32),
  brandId INT,
  packet INT
);
INSERT INTO yougou_index_brand VALUES
(NULL,"http://127.0.0.1:3000/img/millies_mini03.png","millies",101,1),
(NULL,"http://127.0.0.1:3000/img/index_poster_mini02.png","bata",102,1),
(NULL,"http://127.0.0.1:3000/img/index_poster_mini01.png","hush",103,1),
(NULL,"http://127.0.0.1:3000/img/index_poster_mini05.png","joy",104,1),
(NULL,"http://127.0.0.1:3000/img/index_poster_mini06.png","tata",105,1),
(NULL,"http://127.0.0.1:3000/img/index_poster_mini07.png","basto",106,1),
(NULL,"http://127.0.0.1:3000/img/index_poster_mini08.png","belle",107,1),
(NULL,"http://127.0.0.1:3000/img/index_poster_mini09.png","teenmix",108,1),
(NULL,"http://127.0.0.1:3000/img/index_poster_mini10.png","staccato",109,1),
(NULL,"http://127.0.0.1:3000/img/index_poster_mini04.png","skap",110,1),
(NULL,"http://127.0.0.1:3000/img/index_poster_mini11.png","senda",111,1),
(NULL,"http://127.0.0.1:3000/img/index_poster_mini08.png","belle",107,1),
(NULL,"http://127.0.0.1:3000/img/nike_logo.png","nike",201,2),
(NULL,"http://127.0.0.1:3000/img/thenorthface_logo.png","thenorthface",202,2),
(NULL,"http://127.0.0.1:3000/img/blackL-vans.png","vans",203,2),
(NULL,"http://127.0.0.1:3000/img/puma_logo.png","puma",204,2),
(NULL,"http://127.0.0.1:3000/img/reebok_logo.png","reebok",205,2),
(NULL,"http://127.0.0.1:3000/img/converse_logo.png","converse",206,2),
(NULL,"http://127.0.0.1:3000/img/adidasoriginals_logo.png","adidasoriginals",207,2),
(NULL,"http://127.0.0.1:3000/img/adidasneo_logo.png","adidasneo",208,2),
(NULL,"http://127.0.0.1:3000/img/adidas_logo.png","adidas",209,2),
(NULL,"http://127.0.0.1:3000/img/timberland.png","timberland",210,2),
(NULL,"http://127.0.0.1:3000/img/onitsukatiger.png","onitsukatiger",211,2),
(NULL,"http://127.0.0.1:3000/img/skechers.png","skechers",212,2),
(NULL,"http://127.0.0.1:3000/img/asics.png","asics",213,2),
(NULL,"http://127.0.0.1:3000/adidas_logo.png","adidas",209,2);

/**商品详情**/
CREATE TABLE yougou_product_img(
  mid INT PRIMARY KEY AUTO_INCREMENT,
  nid INT,
  fid INT,
  imgs VARCHAR(255),
  imgm VARCHAR(255),
  imgl VARCHAR(255)
);
INSERT INTO yougou_product_img VALUES
(NULL,1,101,'http://127.0.0.1:3000/img/details/101109372_01_t.jpg','http://127.0.0.1:3000/img/details/101109372_01_m.jpg','http://127.0.0.1:3000/img/details/101109372_01_l.jpg'),
(NULL,1,101,'http://127.0.0.1:3000/img/details/101109372_02_t.jpg','http://127.0.0.1:3000/img/details/101109372_02_m.jpg','http://127.0.0.1:3000/img/details/101109372_01_2.jpg'),
(NULL,1,101,'http://127.0.0.1:3000/img/details/101109372_03_t.jpg','http://127.0.0.1:3000/img/details/101109372_03_m.jpg','http://127.0.0.1:3000/img/details/101109372_03_l.jpg'),
(NULL,1,101,'http://127.0.0.1:3000/img/details/101109372_04_t.jpg','http://127.0.0.1:3000/img/details/101109372_04_m.jpg','http://127.0.0.1:3000/img/details/101109372_04_l.jpg'),
(NULL,1,101,'http://127.0.0.1:3000/img/details/101109372_05_t.jpg','http://127.0.0.1:3000/img/details/101109372_05_m.jpg','http://127.0.0.1:3000/img/details/101109372_05_l.jpg'),
(NULL,1,101,'http://127.0.0.1:3000/img/details/101109372_06_t.jpg','http://127.0.0.1:3000/img/details/101109372_06_m.jpg','http://127.0.0.1:3000/img/details/101109372_06_l.jpg'),
(NULL,1,101,'http://127.0.0.1:3000/img/details/101109372_07_t.jpg','http://127.0.0.1:3000/img/details/101109372_07_m.jpg','http://127.0.0.1:3000/img/details/101109372_01_7.jpg'),
(NULL,25,101,'http://127.0.0.1:3000/img/details/101102046_01_t.jpg','http://127.0.0.1:3000/img/details/101102046_01_m.jpg','http://127.0.0.1:3000/img/details/101102046_01_l.jpg'),
(NULL,25,101,'http://127.0.0.1:3000/img/details/101102046_02_t.jpg','http://127.0.0.1:3000/img/details/101102046_02_m.jpg','http://127.0.0.1:3000/img/details/101102046_02_l.jpg'),
(NULL,25,101,'http://127.0.0.1:3000/img/details/101102046_03_t.jpg','http://127.0.0.1:3000/img/details/101102046_03_m.jpg','http://127.0.0.1:3000/img/details/101102046_03_l.jpg'),
(NULL,25,101,'http://127.0.0.1:3000/img/details/101102046_04_t.jpg','http://127.0.0.1:3000/img/details/101102046_04_m.jpg','http://127.0.0.1:3000/img/details/101102046_04_l.jpg'),
(NULL,25,101,'http://127.0.0.1:3000/img/details/101102046_05_t.jpg','http://127.0.0.1:3000/img/details/101102046_05_m.jpg','http://127.0.0.1:3000/img/details/101102046_05_l.jpg'),
(NULL,25,101,'http://127.0.0.1:3000/img/details/101102046_06_t.jpg','http://127.0.0.1:3000/img/details/101102046_06_m.jpg','http://127.0.0.1:3000/img/details/101102046_06_l.jpg'),
(NULL,2,102,'http://127.0.0.1:3000/img/details/101085063_01_t.jpg','http://127.0.0.1:3000/img/details/101085063_01_m.jpg','http://127.0.0.1:3000/img/details/101085063_01_l.jpg'),
(NULL,2,102,'http://127.0.0.1:3000/img/details/101085063_02_t.jpg','http://127.0.0.1:3000/img/details/101085063_02_m.jpg','http://127.0.0.1:3000/img/details/101085063_02_l.jpg'),
(NULL,2,102,'http://127.0.0.1:3000/img/details/101085063_03_t.jpg','http://127.0.0.1:3000/img/details/101085063_03_m.jpg','http://127.0.0.1:3000/img/details/101085063_03_l.jpg'),
(NULL,2,102,'http://127.0.0.1:3000/img/details/101085063_04_t.jpg','http://127.0.0.1:3000/img/details/101085063_04_m.jpg','http://127.0.0.1:3000/img/details/101085063_04_l.jpg'),
(NULL,2,102,'http://127.0.0.1:3000/img/details/101085063_05_t.jpg','http://127.0.0.1:3000/img/details/101085063_05_m.jpg','http://127.0.0.1:3000/img/details/101085063_05_l.jpg'),
(NULL,2,102,'http://127.0.0.1:3000/img/details/101085063_06_t.jpg','http://127.0.0.1:3000/img/details/101085063_06_m.jpg','http://127.0.0.1:3000/img/details/101085063_06_l.jpg'),
(NULL,2,102,'http://127.0.0.1:3000/img/details/101085063_07_t.jpg','http://127.0.0.1:3000/img/details/101085063_07_m.jpg','http://127.0.0.1:3000/img/details/101085063_07_l.jpg'),
(NULL,2,102,'http://127.0.0.1:3000/img/details/101085063_01_t.jpg','http://127.0.0.1:3000/img/details/101085063_01_m.jpg','http://127.0.0.1:3000/img/details/101085063_01_l.jpg'),
(NULL,26,102,'http://127.0.0.1:3000/img/details/101085064_01_t.jpg','http://127.0.0.1:3000/img/details/101085064_01_m.jpg','http://127.0.0.1:3000/img/details/101085064_01_l.jpg'),
(NULL,26,102,'http://127.0.0.1:3000/img/details/101085064_02_t.jpg','http://127.0.0.1:3000/img/details/101085064_02_m.jpg','http://127.0.0.1:3000/img/details/101085064_02_l.jpg'),
(NULL,26,102,'http://127.0.0.1:3000/img/details/101085064_03_t.jpg','http://127.0.0.1:3000/img/details/101085064_03_m.jpg','http://127.0.0.1:3000/img/details/101085064_03_l.jpg'),
(NULL,26,102,'http://127.0.0.1:3000/img/details/101085064_04_t.jpg','http://127.0.0.1:3000/img/details/101085064_04_m.jpg','http://127.0.0.1:3000/img/details/101085064_04_l.jpg'),
(NULL,26,102,'http://127.0.0.1:3000/img/details/101085064_05_t.jpg','http://127.0.0.1:3000/img/details/101085064_05_m.jpg','http://127.0.0.1:3000/img/details/101085064_05_l.jpg'),
(NULL,26,102,'http://127.0.0.1:3000/img/details/101085064_06_t.jpg','http://127.0.0.1:3000/img/details/101085064_06_m.jpg','http://127.0.0.1:3000/img/details/101085064_06_l.jpg'),
(NULL,13,201,'http://127.0.0.1:3000/img/details/101182656_01_t.jpg','http://127.0.0.1:3000/img/details/101182656_01_m.jpg','http://127.0.0.1:3000/img/details/101182656_01_l.jpg'),
(NULL,13,201,'http://127.0.0.1:3000/img/details/101182656_02_t.jpg','http://127.0.0.1:3000/img/details/101182656_02_m.jpg','http://127.0.0.1:3000/img/details/101182656_02_l.jpg'),
(NULL,13,201,'http://127.0.0.1:3000/img/details/101182656_03_t.jpg','http://127.0.0.1:3000/img/details/101182656_03_m.jpg','http://127.0.0.1:3000/img/details/101182656_03_l.jpg'),
(NULL,13,201,'http://127.0.0.1:3000/img/details/101182656_04_t.jpg','http://127.0.0.1:3000/img/details/101182656_04_m.jpg','http://127.0.0.1:3000/img/details/101182656_04_l.jpg'),
(NULL,13,201,'http://127.0.0.1:3000/img/details/101182656_05_t.jpg','http://127.0.0.1:3000/img/details/101182656_05_m.jpg','http://127.0.0.1:3000/img/details/101182656_05_l.jpg'),
(NULL,13,201,'http://127.0.0.1:3000/img/details/101182656_06_t.jpg','http://127.0.0.1:3000/img/details/101182656_06_m.jpg','http://127.0.0.1:3000/img/details/101182656_06_l.jpg'),
(NULL,13,201,'http://127.0.0.1:3000/img/details/101182656_07_t.jpg','http://127.0.0.1:3000/img/details/101182656_07_m.jpg','http://127.0.0.1:3000/img/details/101182656_07_l.jpg'),
(NULL,15,203,'http://127.0.0.1:3000/img/details/101186221_01_t.jpg','http://127.0.0.1:3000/img/details/101186221_01_m.jpg','http://127.0.0.1:3000/img/details/101186221_01_l.jpg'),
(NULL,15,203,'http://127.0.0.1:3000/img/details/101186221_02_t.jpg','http://127.0.0.1:3000/img/details/101186221_02_m.jpg','http://127.0.0.1:3000/img/details/101186221_02_l.jpg'),
(NULL,15,203,'http://127.0.0.1:3000/img/details/101186221_03_t.jpg','http://127.0.0.1:3000/img/details/101186221_03_m.jpg','http://127.0.0.1:3000/img/details/101186221_03_l.jpg'),
(NULL,15,203,'http://127.0.0.1:3000/img/details/101186221_04_t.jpg','http://127.0.0.1:3000/img/details/101186221_04_m.jpg','http://127.0.0.1:3000/img/details/101186221_04_l.jpg'),
(NULL,15,203,'http://127.0.0.1:3000/img/details/101186221_05_t.jpg','http://127.0.0.1:3000/img/details/101186221_05_m.jpg','http://127.0.0.1:3000/img/details/101186221_05_l.jpg'),
(NULL,15,203,'http://127.0.0.1:3000/img/details/101186221_06_t.jpg','http://127.0.0.1:3000/img/details/101186221_06_m.jpg','http://127.0.0.1:3000/img/details/101186221_06_l.jpg'),
(NULL,15,203,'http://127.0.0.1:3000/img/details/101186221_07_t.jpg','http://127.0.0.1:3000/img/details/101186221_07_m.jpg','http://127.0.0.1:3000/img/details/101186221_07_l.jpg'),
(NULL,14,202,'http://127.0.0.1:3000/img/details/101024927_01_t.jpg','http://127.0.0.1:3000/img/details/101024927_01_m.jpg','http://127.0.0.1:3000/img/details/101024927_01_l.jpg'),
(NULL,14,202,'http://127.0.0.1:3000/img/details/101024927_02_t.jpg','http://127.0.0.1:3000/img/details/101024927_02_m.jpg','http://127.0.0.1:3000/img/details/101024927_02_l.jpg'),
(NULL,14,202,'http://127.0.0.1:3000/img/details/101024927_03_t.jpg','http://127.0.0.1:3000/img/details/101024927_03_m.jpg','http://127.0.0.1:3000/img/details/101024927_03_l.jpg'),
(NULL,14,202,'http://127.0.0.1:3000/img/details/101024927_04_t.jpg','http://127.0.0.1:3000/img/details/101024927_04_m.jpg','http://127.0.0.1:3000/img/details/101024927_04_l.jpg'),
(NULL,14,202,'http://127.0.0.1:3000/img/details/101024927_05_t.jpg','http://127.0.0.1:3000/img/details/101024927_05_m.jpg','http://127.0.0.1:3000/img/details/101024927_05_l.jpg'),
(NULL,14,202,'http://127.0.0.1:3000/img/details/101024927_06_t.jpg','http://127.0.0.1:3000/img/details/101024927_06_m.jpg','http://127.0.0.1:3000/img/details/101024927_06_l.jpg'),
(NULL,14,202,'http://127.0.0.1:3000/img/details/101024927_07_t.jpg','http://127.0.0.1:3000/img/details/101024927_07_m.jpg','http://127.0.0.1:3000/img/details/101024927_07_l.jpg'),
(NULL,27,202,'http://127.0.0.1:3000/img/details/100980703_01_t.jpg','http://127.0.0.1:3000/img/details/100980703_01_m.jpg','http://127.0.0.1:3000/img/details/100980703_01_l.jpg'),
(NULL,27,202,'http://127.0.0.1:3000/img/details/100980703_02_t.jpg','http://127.0.0.1:3000/img/details/100980703_02_m.jpg','http://127.0.0.1:3000/img/details/100980703_02_l.jpg'),
(NULL,27,202,'http://127.0.0.1:3000/img/details/100980703_03_t.jpg','http://127.0.0.1:3000/img/details/100980703_03_m.jpg','http://127.0.0.1:3000/img/details/100980703_03_l.jpg'),
(NULL,27,202,'http://127.0.0.1:3000/img/details/100980703_04_t.jpg','http://127.0.0.1:3000/img/details/100980703_04_m.jpg','http://127.0.0.1:3000/img/details/100980703_04_l.jpg'),
(NULL,27,202,'http://127.0.0.1:3000/img/details/100980703_05_t.jpg','http://127.0.0.1:3000/img/details/100980703_05_m.jpg','http://127.0.0.1:3000/img/details/100980703_05_l.jpg'),
(NULL,27,202,'http://127.0.0.1:3000/img/details/100980703_06_t.jpg','http://127.0.0.1:3000/img/details/100980703_06_m.jpg','http://127.0.0.1:3000/img/details/100980703_06_l.jpg'),
(NULL,27,202,'http://127.0.0.1:3000/img/details/100980703_07_t.jpg','http://127.0.0.1:3000/img/details/100980703_07_m.jpg','http://127.0.0.1:3000/img/details/100980703_07_l.jpg'),
(NULL,28,202,'http://127.0.0.1:3000/img/details/101024552_01_t.jpg','http://127.0.0.1:3000/img/details/101024552_01_m.jpg','http://127.0.0.1:3000/img/details/101024552_01_l.jpg'),
(NULL,28,202,'http://127.0.0.1:3000/img/details/101024552_02_t.jpg','http://127.0.0.1:3000/img/details/101024552_02_m.jpg','http://127.0.0.1:3000/img/details/101024552_02_l.jpg'),
(NULL,28,202,'http://127.0.0.1:3000/img/details/101024552_03_t.jpg','http://127.0.0.1:3000/img/details/101024552_03_m.jpg','http://127.0.0.1:3000/img/details/101024552_03_l.jpg'),
(NULL,28,202,'http://127.0.0.1:3000/img/details/101024552_04_t.jpg','http://127.0.0.1:3000/img/details/101024552_04_m.jpg','http://127.0.0.1:3000/img/details/101024552_04_l.jpg'),
(NULL,28,202,'http://127.0.0.1:3000/img/details/101024552_05_t.jpg','http://127.0.0.1:3000/img/details/101024552_05_m.jpg','http://127.0.0.1:3000/img/details/101024552_05_l.jpg'),
(NULL,28,202,'http://127.0.0.1:3000/img/details/101024552_06_t.jpg','http://127.0.0.1:3000/img/details/101024552_06_m.jpg','http://127.0.0.1:3000/img/details/101024552_06_l.jpg'),
(NULL,28,202,'http://127.0.0.1:3000/img/details/101024552_07_t.jpg','http://127.0.0.1:3000/img/details/101024552_07_m.jpg','http://127.0.0.1:3000/img/details/101024552_07_l.jpg');

CREATE TABLE yougou_product_basic(
  nid INT PRIMARY KEY,
  fid INT,
  title VARCHAR(128),
  logo VARCHAR(255),
  newPrice DECIMAL(9,2),
  oldPrice DECIMAL(9,2),
  isSale TINYINT(1),
  colorImg VARCHAR(255),
  size VARCHAR(500),
  qrCode VARCHAR(255)
);
INSERT INTO yougou_product_basic VALUES
(1,101,'Belle/百丽2019春季商场同款新牛皮革英伦风满帮女单鞋T4M1DAM9','http://127.0.0.1:3000/img/blackS-belle.png',658,999,1,'http://127.0.0.1:3000/img/101109372_01_c.jpg','<a data-value="34">34</a><a data-value="35">35</a><a data-value="36">36</a><a data-value="37">37</a><a data-value="38">38</a><a data-value="39">39</a>','http://127.0.0.1:3000/img/T4M1DAM9.png'),
(2,102,'Tata/他她2019春专柜同款粉色羊皮革方头乐福鞋平底鞋休闲女鞋FLD21AM9','http://127.0.0.1:3000/img/blackS-tata.png',588,899,1,'http://127.0.0.1:3000/img/101085063_01_c.jpg','<a data-value="33">33</a><a data-value="34">34</a><a data-value="35">35</a><a data-value="36">36</a><a data-value="37">37</a><a data-value="38">38</a><a data-value="39">39</a>','http://127.0.0.1:3000/img/FLD21AM9.png'),
(25,101,'Belle/百丽2019春季商场同款新牛皮革英伦风满帮女单鞋T4M1DAM9','http://127.0.0.1:3000/img/blackS-belle.png',658,999,1,'http://127.0.0.1:3000/img/101102046_01_c.jpg','<a data-value="34">34</a><a data-value="35">35</a><a data-value="36">36</a><a data-value="37">37</a><a data-value="38">38</a><a data-value="39">39</a>','http://127.0.0.1:3000/img/T4M1DAM9.png'),
(26,102,'Tata/他她2019春专柜同款灰色羊皮革方头乐福鞋平底鞋休闲女鞋FLD21AM9','http://127.0.0.1:3000/img/blackS-tata.png',588,899,1,'http://127.0.0.1:3000/img/101085064_01_c.jpg','<a data-value="33">33</a><a data-value="34">34</a><a data-value="35">35</a><a data-value="36">36</a><a data-value="37">37</a><a data-value="38">38</a><a data-value="39">39</a>','http://127.0.0.1:3000/img/FLD21AM9.png'),
(13,201,'adidas阿迪达斯2019男子CUT篮球场下休闲篮球鞋EE3825','http://127.0.0.1:3000/img/blackS-adidas.png',399,599,1,'http://127.0.0.1:3000/img/101182656_01_c.jpg','<a data-value="39">39</a><a data-value="40">40</a><a data-value="40.5">40.5</a><a data-value="41">41</a><a data-value="42">42</a><a data-value="42.5">42.5</a><a data-value="43">43</a><a data-value="44">44</a><a data-value="44.5">44.5</a><a data-value="45">45</a>','http://127.0.0.1:3000/img/EE3825.png'),
(15,203,'adidas Originals阿迪三叶草2018女子Swift Run W三叶草系列休闲鞋B37717','http://127.0.0.1:3000/img/blackS-adidasoriginals.png',529,729,1,'http://127.0.0.1:3000/img/101186221_01_c.jpg','<a data-value="36">36</a><a data-value="36.5">36.5</a><a data-value="37">37</a><a data-value="38">38</a><a data-value="38.5">38.5</a><a data-value="39">39</a><a data-value="40">40</a><a data-value="40.5">40.5</a>','http://127.0.0.1:3000/img/B37717.png'),
(14,202,'Nike耐克2018年新款女子W NIKE AIR VAPORMAX FLYKNIT 2跑步鞋942843-203','http://127.0.0.1:3000/img/blackS-nike.png',1599,1599,0,'http://127.0.0.1:3000/img/101024927_01_c.jpg','<a data-value="35.5">35.5</a><a data-value="36">36</a><a data-value="36.5">36.5</a><a data-value="37.5">37.5</a><a data-value="38">38</a><a data-value="38.5">38.5</a><a data-value="39">39</a><a data-value="40">40</a>','http://127.0.0.1:3000/img/942843-203.png'),
(27,202,'Nike耐克2018年新款女子W NIKE AIR VAPORMAX FLYKNIT 2跑步鞋942843-105','http://127.0.0.1:3000/img/blackS-nike.png',1599,1599,0,'http://127.0.0.1:3000/img/100980703_01_c.jpg','<a data-value="35.5">35.5</a><a data-value="36">36</a><a data-value="36.5">36.5</a><a data-value="37.5">37.5</a><a data-value="38">38</a><a data-value="38.5">38.5</a><a data-value="39">39</a><a data-value="40">40</a>','http://127.0.0.1:3000/img/942843-203.png'),
(28,202,'Nike耐克2018年新款女子W NIKE AIR VAPORMAX FLYKNIT 2跑步鞋942843-013','http://127.0.0.1:3000/img/blackS-nike.png',1599,1599,0,'http://127.0.0.1:3000/img/101024552_01_c.jpg','<a data-value="35.5">35.5</a><a data-value="36">36</a><a data-value="36.5">36.5</a><a data-value="37.5">37.5</a><a data-value="38">38</a><a data-value="38.5">38.5</a><a data-value="39">39</a><a data-value="40">40</a>','http://127.0.0.1:3000/img/942843-203.png');

CREATE TABLE yougou_product_details(
  nid INT PRIMARY KEY,
  fid INT,
  desc1 VARCHAR(1000),
  size VARCHAR(1000),
  detail_img VARCHAR(1000)
);
INSERT INTO yougou_product_details VALUES
(2,102,'<div>鞋底材质：橡胶底</div><div>面料图案：纯色</div><div>内增高：无</div><div>鞋跟形状：平跟</div><div>鞋面材质：羊皮革</div><div>流行元素：皮带扣纯色绒面</div><div>36码鞋长参考(女)：23.5CM</div><div>36码鞋宽参考(女)：7CM</div><div>闭合方式：套脚</div><div>风格：英伦</div><div>色系：粉色</div><div>鞋跟：1CM</div><div>鞋头：方头</div><div>配跟：无</div><div>性别：女子</div><div>里料材质：猪皮革</div><div>制作工艺：胶贴皮鞋</div><div>鞋垫材质：PU革</div><div>皮质特征：绒面皮</div><div>前掌高度：无</div><div>款式：乐福鞋</div><div>防水台高度：无</div>','<div>法国码</div><div>32</div><div>33</div><div>34</div><div>35</div><div>36</div><div>37</div><div>38</div><div>39</div><div>40</div><div>41</div><div>42</div><div>国际码</div><div>210</div><div>215</div><div>220</div><div>225</div><div>230</div><div>235</div><div>240</div><div>245</div><div>250</div><div>255</div><div>260</div>','<img src="http://127.0.0.1:3000/img/details/101085063_01_b.jpg"><img src="http://127.0.0.1:3000/img/details/101085063_04_b.jpg"><img src="http://127.0.0.1:3000/img/details/101085063_05_b.jpg"><img src="http://127.0.0.1:3000/img/details/101085063_10_b.jpg"><img src="http://127.0.0.1:3000/img/details/101085063_11_b.jpg"><img src="http://127.0.0.1:3000/img/details/101085063_41_b.jpg"><img src="http://127.0.0.1:3000/img/details/101085063_42_b.jpg"><img src="http://127.0.0.1:3000/img/details/101085063_51_b.jpg">'),
(26,102,'<div>鞋底材质：橡胶底</div><div>面料图案：纯色</div><div>内增高：无</div><div>鞋跟形状：平跟</div><div>鞋面材质：羊皮革</div><div>流行元素：皮带扣纯色绒面</div><div>36码鞋长参考(女)：23.5CM</div><div>36码鞋宽参考(女)：7CM</div><div>闭合方式：套脚</div><div>风格：英伦</div><div>色系：灰色</div><div>鞋跟：1CM</div><div>鞋头：方头</div><div>配跟：无</div><div>性别：女子</div><div>里料材质：猪皮革</div><div>制作工艺：胶贴皮鞋</div><div>鞋垫材质：PU革</div><div>皮质特征：绒面皮</div><div>前掌高度：无</div><div>款式：乐福鞋</div><div>防水台高度：无</div>','<div>法国码</div><div>32</div><div>33</div><div>34</div><div>35</div><div>36</div><div>37</div><div>38</div><div>39</div><div>40</div><div>41</div><div>42</div><div>国际码</div><div>210</div><div>215</div><div>220</div><div>225</div><div>230</div><div>235</div><div>240</div><div>245</div><div>250</div><div>255</div><div>260</div>','<img src="http://127.0.0.1:3000/img/details/101085063_01_b.jpg"><img src="http://127.0.0.1:3000/img/details/101085064_04_b.jpg"><img src="http://127.0.0.1:3000/img/details/101085064_05_b.jpg"><img src="http://127.0.0.1:3000/img/details/101085064_10_b.jpg"><img src="http://127.0.0.1:3000/img/details/101085064_11_b.jpg"><img src="http://127.0.0.1:3000/img/details/101085064_41_b.jpg"><img src="http://127.0.0.1:3000/img/details/101085064_42_b.jpg"><img src="http://127.0.0.1:3000/img/details/101085063_51_b.jpg">'),
(1,101,'<div>鞋底材质：橡胶底</div><div>面料图案：纯色</div><div>内增高：无</div><div>鞋跟形状：方跟</div><div>鞋面材质：牛皮革</div><div>流行元素：褶皱</div><div>36码鞋长参考(女)：24CM</div><div>36码鞋宽参考(女)：8.5CM</div><div>闭合方式：系带</div><div>风格：英伦</div><div>色系：白色</div><div>鞋跟：3CM</div><div>鞋头：圆头</div><div>配跟：无</div><div>性别：女子</div><div>里料材质：猪皮革</div><div>制作工艺：胶贴皮鞋</div><div>鞋垫材质：头层猪皮革</div><div>皮质特征：软面皮</div><div>前掌高度：1CM</div><div>款式：单鞋</div><div>防水台高度：无</div>','<div>法国码</div><div>32</div><div>33</div><div>34</div><div>35</div><div>36</div><div>37</div><div>38</div><div>39</div><div>40</div><div>41</div><div>42</div><div>国际码</div><div>210</div><div>215</div><div>220</div><div>225</div><div>230</div><div>235</div><div>240</div><div>245</div><div>250</div><div>255</div><div>260</div>','<img src="http://127.0.0.1:3000/img/details/101109372_00_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_01_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_02_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_03_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_04_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_11_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_12_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_13_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_14_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_41_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_42_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_51_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_52_b.jpg">'),
(25,101,'<div>鞋底材质：橡胶底</div><div>面料图案：纯色</div><div>内增高：无</div><div>鞋跟形状：方跟</div><div>鞋面材质：牛皮革</div><div>流行元素：褶皱</div><div>36码鞋长参考(女)：24CM</div><div>36码鞋宽参考(女)：8.5CM</div><div>闭合方式：系带</div><div>风格：英伦</div><div>色系：棕色</div><div>鞋跟：3CM</div><div>鞋头：圆头</div><div>配跟：无</div><div>性别：女子</div><div>里料材质：猪皮革</div><div>制作工艺：胶贴皮鞋</div><div>鞋垫材质：头层猪皮革</div><div>皮质特征：软面皮</div><div>前掌高度：1CM</div><div>款式：单鞋</div><div>防水台高度：无</div>','<div>法国码</div><div>32</div><div>33</div><div>34</div><div>35</div><div>36</div><div>37</div><div>38</div><div>39</div><div>40</div><div>41</div><div>42</div><div>国际码</div><div>210</div><div>215</div><div>220</div><div>225</div><div>230</div><div>235</div><div>240</div><div>245</div><div>250</div><div>255</div><div>260</div>','<img src="http://127.0.0.1:3000/img/details/101102046_00_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_01_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_02_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_03_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_04_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_11_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_12_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_13_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_14_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_41_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_42_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_51_b.jpg"><img src="http://127.0.0.1:3000/img/details/101109372_52_b.jpg">'),
(13,201,'<div>色系：蓝色</div><div>鞋帮：中帮</div><div>适合人群：男子</div><div>鞋底材质：其他</div><div>性别：男子</div><div>鞋面材质：其他</div><div>运动项目：篮球</div><div>闭合方式：系带</div>','<div>中国码</div><div>21.5</div><div>22</div><div>22.5</div><div>23</div><div>23.5</div><div>23.5</div><div>24</div><div>24.5</div><div>25</div><div>25.5</div><div>26</div><div>26.5</div><div>26.5</div><div>27</div><div>27.5</div><div>28</div><div>28.5</div><div>29</div><div>29</div><div>法国码</div><div>35</div><div>36</div><div>36.5</div><div>37</div><div>38</div><div>38.5</div><div>39</div><div>
40</div><div>40.5</div><div>41</div><div>42</div><div>42.5</div><div>43</div><div>44</div><div>44.5</div><div>45</div><div>46</div><div>46.5</div><div>47</div><div>英国码</div><div>3</div><div>3.5</div><div>4</div><div>4.5</div><div>5</div><div>5.5</div><div>6</div><div>6.5</div><div>7</div><div>7.5</div><div>8</div><div>8.5</div><div>9</div><div>9.5</div><div>10</div><div>10.5</div><div>11</div><div>11.5</div><div>12</div>','<img src="http://127.0.0.1:3000/img/details/101182656_01_b.jpg"><img src="http://127.0.0.1:3000/img/details/101182656_10_b.jpg"><img src="http://127.0.0.1:3000/img/details/101182656_11_b.jpg"><img src="http://127.0.0.1:3000/img/details/101182656_12_b.jpg"><img src="http://127.0.0.1:3000/img/details/101182656_13_b.jpg"><img src="http://127.0.0.1:3000/img/details/101182656_14_b.jpg"><img src="http://127.0.0.1:3000/img/details/101182656_15_b.jpg"><img src="http://127.0.0.1:3000/img/details/101182656_16_b.jpg"><img src="http://127.0.0.1:3000/img/details/101182656_18_b.jpg"><img src="http://127.0.0.1:3000/img/details/101182656_19_b.jpg"><img src="http://127.0.0.1:3000/img/details/101182656_20_b.jpg"><img src="http://127.0.0.1:3000/img/details/101182656_21_b.jpg">'),
(15,203,'<div>色系：黑色</div><div>鞋帮：低帮</div><div>适合人群：女子</div><div>鞋底材质：其他</div><div>性别：女子</div><div>鞋面材质：其他</div><div>运动项目：休闲</div><div>闭合方式：前系带</div><div>风格：休闲</div><div>主要功能：其他</div>','<div>中国码</div><div>21.5</div><div>22</div><div>22.5</div><div>23</div><div>23.5</div><div>23.5</div><div>24</div><div>24.5</div><div>25</div><div>25.5</div><div>26</div><div>26.5</div><div>26.5</div><div>27</div><div>27.5</div><div>28</div><div>28.5</div><div>29</div><div>29</div><div>法国码</div><div>35</div><div>36</div><div>36.5</div><div>37</div><div>38</div><div>38.5</div><div>39</div><div>
40</div><div>40.5</div><div>41</div><div>42</div><div>42.5</div><div>43</div><div>44</div><div>44.5</div><div>45</div><div>46</div><div>46.5</div><div>47</div><div>英国码</div><div>3</div><div>3.5</div><div>4</div><div>4.5</div><div>5</div><div>5.5</div><div>6</div><div>6.5</div><div>7</div><div>7.5</div><div>8</div><div>8.5</div><div>9</div><div>9.5</div><div>10</div><div>10.5</div><div>11</div><div>11.5</div><div>12</div>','<img src="http://127.0.0.1:3000/img/details/101186221_01_b.jpg"><img src="http://127.0.0.1:3000/img/details/101186221_10_b.jpg"><img src="http://127.0.0.1:3000/img/details/101186221_11_b.jpg"><img src="http://127.0.0.1:3000/img/details/101186221_12_b.jpg"><img src="http://127.0.0.1:3000/img/details/101186221_13_b.jpg"><img src="http://127.0.0.1:3000/img/details/101186221_14_b.jpg"><img src="http://127.0.0.1:3000/img/details/101186221_15_b.jpg"><img src="http://127.0.0.1:3000/img/details/101186221_16_b.jpg"><img src="http://127.0.0.1:3000/img/details/101186221_18_b.jpg"><img src="http://127.0.0.1:3000/img/details/101186221_19_b.jpg"><img src="http://127.0.0.1:3000/img/details/101186221_20_b.jpg"><img src="http://127.0.0.1:3000/img/details/101186221_21_b.jpg">'),
(14,202,'<div>色系：棕色</div>闭合方式：系带</div><div>鞋底材质：气垫底</div><div>性别：女子</div>','<div>中国码</div><div>21.5</div><div>22</div><div>22.5</div><div>23</div><div>23.5</div><div>23.5</div><div>24</div><div>24.5</div><div>25</div><div>25.5</div><div>26</div><div>26.5</div><div>26.5</div><div>27</div><div>27.5</div><div>28</div><div>28.5</div><div>29</div><div>29</div><div>法国码</div><div>35</div><div>36</div><div>36.5</div><div>37</div><div>38</div><div>38.5</div><div>39</div><div>
40</div><div>40.5</div><div>41</div><div>42</div><div>42.5</div><div>43</div><div>44</div><div>44.5</div><div>45</div><div>46</div><div>46.5</div><div>47</div><div>英国码</div><div>3</div><div>3.5</div><div>4</div><div>4.5</div><div>5</div><div>5.5</div><div>6</div><div>6.5</div><div>7</div><div>7.5</div><div>8</div><div>8.5</div><div>9</div><div>9.5</div><div>10</div><div>10.5</div><div>11</div><div>11.5</div><div>12</div>',null),
(27,202,'<div>色系：灰色</div><div>适合人群：女子</div><div>鞋底材质：气垫底</div><div>性别：女子</div><div>品牌系列：AIR MAX</div><div>运动项目：跑步</div><div>闭合方式：系带</div><div>主要功能：透气</div>','<div>中国码</div><div>21.5</div><div>22</div><div>22.5</div><div>23</div><div>23.5</div><div>23.5</div><div>24</div><div>24.5</div><div>25</div><div>25.5</div><div>26</div><div>26.5</div><div>26.5</div><div>27</div><div>27.5</div><div>28</div><div>28.5</div><div>29</div><div>29</div><div>法国码</div><div>35</div><div>36</div><div>36.5</div><div>37</div><div>38</div><div>38.5</div><div>39</div><div>
40</div><div>40.5</div><div>41</div><div>42</div><div>42.5</div><div>43</div><div>44</div><div>44.5</div><div>45</div><div>46</div><div>46.5</div><div>47</div><div>英国码</div><div>3</div><div>3.5</div><div>4</div><div>4.5</div><div>5</div><div>5.5</div><div>6</div><div>6.5</div><div>7</div><div>7.5</div><div>8</div><div>8.5</div><div>9</div><div>9.5</div><div>10</div><div>10.5</div><div>11</div><div>11.5</div><div>12</div>','<img src="http://127.0.0.1:3000/img/details/101024552_02_b.jpg"><img src="http://127.0.0.1:3000/img/details/101024552_10_b.jpg"><img src="http://127.0.0.1:3000/img/details/101024552_11_b.jpg"><img src="http://127.0.0.1:3000/img/details/101024552_12_b.jpg"><img src="http://127.0.0.1:3000/img/details/101024552_13_b.jpg"><img src="http://127.0.0.1:3000/img/details/101024552_14_b.jpg"><img src="http://127.0.0.1:3000/img/details/101024552_15_b.jpg"><img src="http://127.0.0.1:3000/img/details/101024552_16_b.jpg"><img src="http://127.0.0.1:3000/img/details/101024552_18_b.jpg"><img src="http://127.0.0.1:3000/img/details/101024552_19_b.jpg"><img src="http://127.0.0.1:3000/img/details/101024552_20_b.jpg"><img src="http://127.0.0.1:3000/img/details/101024552_21_b.jpg">'),
(28,202,'<div>色系：白色</div><div>适合人群：女子</div><div>鞋底材质：气垫底</div><div>品牌系列：AIR MAX</div><div>季节：秋季</div><div>运动项目：跑步</div><div>闭合方式：系带</div><div>风格：休闲</div>','<div>中国码</div><div>21.5</div><div>22</div><div>22.5</div><div>23</div><div>23.5</div><div>24</div><div>24.5</div><div>25</div><div>25.5</div><div>26</div><div>26.5</div><div>27</div><div>27.5</div><div>28</div><div>28.5</div><div>29</div><div>法国码</div><div>35</div><div>36</div><div>36.5</div><div>37</div><div>38</div><div>38.5</div><div>39</div><div>
40</div><div>40.5</div><div>41</div><div>42</div><div>42.5</div><div>43</div><div>44</div><div>44.5</div><div>45</div><div>46</div><div>46.5</div><div>47</div><div>英国码</div><div>3</div><div>3.5</div><div>4</div><div>4.5</div><div>5</div><div>5.5</div><div>6</div><div>6.5</div><div>7</div><div>7.5</div><div>8</div><div>8.5</div><div>9</div><div>9.5</div><div>10</div><div>10.5</div><div>11</div><div>11.5</div><div>12</div>','<img src="http://127.0.0.1:3000/img/details/100980703_01_b.jpg"><img src="http://127.0.0.1:3000/img/details/100980703_02_b.jpg"><img src="http://127.0.0.1:3000/img/details/100980703_10_b.jpg"><img src="http://127.0.0.1:3000/img/details/100980703_11_b.jpg"><img src="http://127.0.0.1:3000/img/details/100980703_12_b.jpg"><img src="http://127.0.0.1:3000/img/details/100980703_13_b.jpg"><img src="http://127.0.0.1:3000/img/details/100980703_14_b.jpg"><img src="http://127.0.0.1:3000/img/details/100980703_15_b.jpg"><img src="http://127.0.0.1:3000/img/details/100980703_16_b.jpg"><img src="http://127.0.0.1:3000/img/details/100980703_18_b.jpg"><img src="http://127.0.0.1:3000/img/details/100980703_19_b.jpg"><img src="http://127.0.0.1:3000/img/details/100980703_20_b.jpg"><img src="http://127.0.0.1:3000/img/details/100980703_21_b.jpg">');



CREATE TABLE yougou_product_brandSpec(
  pid INT PRIMARY KEY AUTO_INCREMENT, 
  fid INT,
  s_img VARCHAR(255),
  spec VARCHAR(255)
);
INSERT INTO yougou_product_brandSpec VALUES
(NULL,102,'http://127.0.0.1:3000/img/details/ta_ta_.jpg','他她（Tata），品牌成立于2003年，致力为都市年轻人群提供时尚潮流、具有性价比的鞋履产品。十五年来“踏踏”的着地声，寓意都市白领元气满满的生活，如时尚“伴履”的TATA一直陪伴左右、伴随走出TATA的时尚步伐。2017年TATA美丽蜕变，TATA STAR元素的加入预示品牌将成为闪亮、前端的时尚鞋履品牌。'),
(NULL,101,'http://127.0.0.1:3000/img/details/bai_li_.jpg','BeLLE（百丽），百变所以美丽。主张多变多元的新生代态度，不断融合潮流趋势，拥抱不同的生活体验与生活经历。将女性的百变魅力注入到鞋履设计中，让女人在不同的人生阶段，不同的场合，不同的潮流趋势下，尽显自己自信的一面。致力于为现代都市女性提供充满自由的行走体验。'),
(NULL,201,'http://127.0.0.1:3000/img/details/a_di_da_si_.jpg','（阿迪达斯），创办于1949年，是德国运动用品制造商阿迪达斯AG成员公司。以其创办人阿道夫·阿迪·达斯勒（Adolf Adi Dassler）命名，阿道夫达斯勒先生，是一位拥有运动员身份和鞋匠技术的德国人。品牌产品主要区分四大系列：经典系列、运动表现系列、休闲生活系列、时尚系列。'),
(NULL,203,'http://127.0.0.1:3000/img/details/san_ye_cao_.jpg','Originals（三叶草），adidas品牌旗下的运动经典系列，在全球各地有众多的追求者和拥有者。该系列以三叶草为标志，如同地球立体三维的平面展开，像一张世界地图，象征着三条纹延伸至全世界。这一系列大量运用20世纪40年代到80年代的元素作为设计灵感，具有强烈的复古感。adidas Originals是对阿迪达斯经典产品的传承。'),
(NULL,202,'http://127.0.0.1:3000/img/details/nai_ke_.jpg','NIKE（耐克），全球著名体育运动品牌，英文原意指希腊胜利女神。该公司总部位于美国俄勒冈州Beaverton，由比尔·鲍尔曼和校友菲利浦·奈特共同创立。耐克深知，只有运用先进的技术才能产出更好的产品，所以一直以来，投入大量的人力、物力用于新产品的开发和研究，以满足消费者的需求。');

CREATE TABLE yougou_list(
  nid INT PRIMARY KEY,
  title VARCHAR(255),
  oldPrice DECIMAL(9,2),
  newPrice DECIMAL(9,2),
  sales INT,
  addTime DATE,
  img VARCHAR(255)
);
INSERT INTO yougou_list VALUES
(1,'Belle/百丽粗跟单鞋2019春季商场同款新黑色牛皮革女休闲鞋T5G1DAM9',999,658,22,'2018-10-8','http://127.0.0.1:3000/img/list/101109372_01_mb.jpg'),
(2,'Tata/他她2019春专柜同款粉色羊皮革方头乐福鞋平底鞋休闲女鞋FLD21AM9',899,528,56,'2018-9-9','http://127.0.0.1:3000/img/list/101085063_01_mb.jpg'),
(25,'Belle/百丽2019春季商场同款新牛皮革英伦风满帮女单鞋T4M1DAM9',999,658,15,'2018-10-9','http://127.0.0.1:3000/img/list/101102046_01_mb.jpg'),
(26,'Tata/他她2019春专柜同款灰色羊皮革方头乐福鞋平底鞋休闲女鞋FLD21AM9',899,528,65,'2018-9-10','http://127.0.0.1:3000/img/list/101085064_01_mb.jpg'),
(3,'Belle/百丽英伦风布洛克雕花单鞋2019春季商场同款新羊皮革女鞋T4W1DAM9',959,658,30,'2018-9-19','http://127.0.0.1:3000/img/list/101101931_01_mb.jpg'),
(4,'Tata/他她2019春专柜同款黑色羊皮革方头乐福鞋休闲女鞋FLC22AM9',899,608,32,'2018-9-5','http://127.0.0.1:3000/img/list/101085020_01_mb.jpg'),
(5,'Belle/百丽英伦风布洛克雕花单鞋2019春季商场同款新羊皮革女鞋T4W1DAM9',959,658,12,'2018-9-6','http://127.0.0.1:3000/img/list/101101932_01_mb.jpg'),
(6,'Tata/他她2019春专柜同款米色羊皮革方头乐福鞋休闲女鞋FLC22AM9',899,608,2,'2018-9-26','http://127.0.0.1:3000/img/list/101085021_01_mb.jpg'),
(7,'STACCATO/思加图2019专柜同款亮片布女皮凉鞋9YD22AH9',1290,1158,2,'2018-9-20','http://127.0.0.1:3000/img/list/101049482_01_mb.jpg'),
(8,'Tata/他她2019春专柜同款白色牛皮革水钻亮片小白鞋板鞋休闲女鞋FOF25AM9',999,568,22,'2018-9-21','http://127.0.0.1:3000/img/list/101084891_01_mb.jpg'),
(9,'Tata/他她2019春专柜同款白/粉红牛皮革糖果色小白鞋套脚休闲女单鞋DIF01AM9',799,488,65,'2018-9-21','http://127.0.0.1:3000/img/list/101102094_01_mb.jpg'),
(10,'Senda/森达2019春季新款专柜同款韩版学生女休闲小皮鞋3KK01AM9',959,639,1,'2018-10-21','http://127.0.0.1:3000/img/list/101058673_01_mb.jpg'),
(11,'BASTO/百思图2019春季白/红牛皮革字母系带小白鞋女休闲鞋YYC09AM9',999,499,18,'2018-10-21','http://127.0.0.1:3000/img/list/101092801_01_mb.jpg'),
(12,'BASTO/百思图2019春季白色牛皮革简约平跟小白鞋女休闲鞋YIP16AQ9',999,499,22,'2018-10-21','http://127.0.0.1:3000/img/list/101154517_01_mb.jpg'),
(16,'Tata/他她2019春专柜同款白色牛皮革涂鸦小白鞋板鞋休闲女鞋FW620AM9',999,558,60,'2018-10-23','http://127.0.0.1:3000/img/list/101084930_01_mb.jpg'),
(17,'思加图2019春季新款金属银粗中跟尖头时尚气质女浅口鞋9YD78AQ9',1290,998,3,'2018-10-23','http://127.0.0.1:3000/img/list/101049399_01_mb.jpg'),
(18,'Tata/他她2019春专柜同款黑色羊皮革绒面尖头休闲鞋浅口女鞋2K7B9AQ9',899,518,34,'2018-10-23','http://127.0.0.1:3000/img/list/101085061_01_mb.jpg'),
(19,'Belle/百丽马衔扣乐福鞋2019春新商场同款款亮片布复古方头女单鞋BK32DAM9',959,668,16,'2018-10-23','http://127.0.0.1:3000/img/list/101084202_01_mb.jpg'),
(20,'Tata/他她2019春专柜同款白/浅绿牛皮革糖果色小白鞋休闲鞋女单鞋DHF01AM9',799,488,17,'2018-11-22','http://127.0.0.1:3000/img/list/101102097_01_mb.jpg'),
(21,'STACCATO/思加图2019专柜同款浅口绵羊皮革女皮鞋9Y211AQ9',1290,1158,9,'2018-11-22','http://127.0.0.1:3000/img/list/101049459_01_mb.jpg'),
(22,'Senda/森达2019春季新款专柜同款韩版学生女休闲小皮鞋3KK01AM9',959,639,10,'2018-11-22','http://127.0.0.1:3000/img/list/101058672_01_mb.jpg'),
(23,'BASTO/百思图2019春季白/银牛皮革系带简约平跟女休闲鞋小白鞋YIP19AQ9',999,499,3,'2018-11-22','http://127.0.0.1:3000/img/list/101154516_01_mb.jpg'),
(24,'Belle/百丽复古老爹鞋2019春商场同款新摔纹牛皮革厚底满帮女休闲鞋BQ120AM9',999,999,1,'2018-11-22','http://127.0.0.1:3000/img/list/101176849_01_mb.jpg'),
(29,'Belle/百丽马衔扣乐福鞋2019春新商场同款款皱漆牛皮革复古方头女单鞋BK32DAM9',959,668,71,'2018-12-1','http://127.0.0.1:3000/img/list/101084205_01_mb.jpg'),
(30,'STACCATO/思加图2019专柜同款亮片布女皮凉鞋9YD22AH9',1158,1290,5,'2018-9-2','http://127.0.0.1:3000/img/list/101049400_01_mb.jpg'),
(31,'Senda/森达2019春季新款专柜同款舒适平底女休闲皮鞋VTS20AM9',959,639,1,'2018-12-1','http://127.0.0.1:3000/img/list/101058653_01_mb.jpg'),
(32,'思加图2019春季新款时尚粗中跟粗尖头包头女士后空凉鞋S2102AH9',1090,958,1,'2018-8-30','http://127.0.0.1:3000/img/list/101052501_01_mb.jpg'),
(33,'BASTO/百思图2019春季专柜同款白色软面牛皮革系带小白鞋女休闲鞋YPQ17AM9',1099,599,19,'2018-12-1','http://127.0.0.1:3000/img/list/101102010_01_mb.jpg'),
(34,'Belle/百丽复古方头奶奶鞋2019春商场同款新牛皮革女单鞋T4F1DAQ9',899,899,1,'2018-12-1','http://127.0.0.1:3000/img/list/101101905_01_mb.jpg'),
(35,'Senda/森达2019春季新款专柜同款韩版学生休闲女小白鞋VNNC2AM9',899,599,15,'2018-12-1','http://127.0.0.1:3000/img/list/101058634_01_mb.jpg'),
(36,'STACCATO/思加图2019专柜同款休闲尖头低跟女皮鞋9D978AM9',1290,998,1,'2018-12-8','http://127.0.0.1:3000/img/list/101049362_01_mb.jpg'),
(37,'Belle/百丽复古方头奶奶鞋2019春商场同款新牛皮革方跟女单鞋T4F1DAQ9',899,899,1,'2018-12-1','http://127.0.0.1:3000/img/list/101101906_01_mb.jpg'),
(38,'Senda/森达2019春季新款专柜同款舒适平底女休闲皮鞋VTS20AM9',959,639,2,'2018-12-8','http://127.0.0.1:3000/img/list/101058654_01_mb.jpg'),
(39,'Teenmix/天美意2019春新款商场同款黑色牛皮革女皮鞋CCJ25AM9',899,589,2,'2018-12-8','http://127.0.0.1:3000/img/list/101086597_01_mb.jpg'),
(40,'Belle/百丽厚底松糕鞋2019春商场同款新牛皮革雕花布洛克女单鞋BK820AM9',1099,758,6,'2018-12-8','http://127.0.0.1:3000/img/list/101084209_01_mb.jpg'),
(41,'STACCATO/思加图2019专柜同款亮片布羊皮革女皮鞋9YD04AQ9',1390,1198,0,'2018-8-30','http://127.0.0.1:3000/img/list/101049484_01_mb.jpg'),
(42,'Belle/百丽粗跟单鞋2019春季商场同款新黑色牛皮革女休闲鞋T5G1DAM9',959,959,2,'2018-12-8','http://127.0.0.1:3000/img/list/101186723_01_mb.jpg'),
(43,'Belle/百丽厚底休闲鞋2019春季商场同款新闪光布女松糕鞋黑灰T4J1DAM9',1099,1099,2,'2018-12-8','http://127.0.0.1:3000/img/list/101103449_01_mb.jpg'),
(44,'Belle/百丽2019春季新款牛皮革小白鞋女休闲鞋BYDF7AM9',999,498,80,'2018-10-30','http://127.0.0.1:3000/img/list/101176897_01_mb.jpg'),
(45,'Tata/他她2019春专柜同款白/深兰/银拼接亮片小白鞋休闲女单鞋FOF24AM9',899,608,63,'2018-10-30','http://127.0.0.1:3000/img/list/101084924_01_mb.jpg'),
(46,'Senda/森达2019春季新款专柜同款简约通勤舒适女单鞋VSC21AM9',959,639,24,'2018-10-30','http://127.0.0.1:3000/img/list/101058655_01_mb.jpg'),
(47,'Belle/百丽粗跟单鞋2019春季商场同款新米白牛皮革女休闲鞋T5G1DAM9',959,959,1,'2018-12-8','http://127.0.0.1:3000/img/list/101186722_01_mb.jpg'),
(48,'Tata/他她2019春专柜同款白/金拼接学院小白鞋板鞋休闲女鞋EVF01AM9',999,678,36,'2018-10-2','http://127.0.0.1:3000/img/list/101187030_01_mb.jpg'),
(49,'Teenmix/天美意2019春新款商场同款黑色打蜡布洛克牛皮革女皮鞋CBQ25AM9',959,669,12,'2018-11-3','http://127.0.0.1:3000/img/list/101086711_01_mb.jpg'),
(50,'Belle/百丽彩色运动风小白鞋2019春商场同款新牛皮革女休闲平底板鞋BXGF3AM9',959,959,7,'2018-10-3','http://127.0.0.1:3000/img/list/101084193_01_mb.jpg'),
(51,'Senda/森达2019春季新款专柜同款通勤简约舒适平底女单鞋VBIB4AM9',899,599,16,'2018-10-3','http://127.0.0.1:3000/img/list/101058628_01_mb.jpg'),
(52,'Tata/他她2019春专柜同款米色牛皮革方头玛丽珍奶奶鞋浅口女单鞋CEF03AQ9',799,528,26,'2018-10-3','http://127.0.0.1:3000/img/list/101155627_01_mb.jpg'),
(53,'Senda/森达2019春季新款专柜同款韩版甜美休闲女小白鞋3KG01AM9',899,599,31,'2018-10-6','http://127.0.0.1:3000/img/list/101058683_01_mb.jpg'),
(54,'Teenmix/天美意2019春新款商场同款杏色牛皮革女皮鞋AT281AM9',899,639,36,'2018-10-6','http://127.0.0.1:3000/img/list/101086577_01_mb.jpg'),
(55,'Teenmix/天美意2019春新款商场同款杏色牛皮革女皮鞋AT281AM9',959,669,14,'2018-11-18','http://127.0.0.1:3000/img/list/101103420_01_mb.jpg'),
(56,'Belle/百丽厚底松糕鞋2019春商场同款新牛皮革雕花布洛克女单鞋BK820AM9',1099,758,6,'2018-11-18','http://127.0.0.1:3000/img/list/101084210_01_mb.jpg'),
(57,'Senda/森达2019春季新款专柜同款简约舒适休闲女小皮鞋3KL01AM9',959,639,3,'2018-11-18','http://127.0.0.1:3000/img/list/101058685_01_mb.jpg');


CREATE TABLE yougou_cart(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,
  nid INT,
  count INT,
  color VARCHAR(8),
  size VARCHAR(8)
);
INSERT INTO yougou_cart VALUES
(NULL,1,1,2,"米白","38"),
(NULL,1,2,1,"粉色","39"),
(NULL,1,13,1,"黑色","38");