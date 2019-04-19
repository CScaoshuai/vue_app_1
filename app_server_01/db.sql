#创建数据库
SET NAMES UTF8;
DROP DATABASE IF EXISTS MQ;
CREATE DATABASE MQ CHARSET=UTF8;
USE MQ;

#创建用户登录表
#用户登录密码需要加密保存使用  mysql自带函数md5()
CREATE TABLE login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(25),
  upwd  VARCHAR(32)
);
INSERT INTO login VALUES(null,'tom',md5('123'));
INSERT INTO login VALUES(null,'tom1',md5('123'));
INSERT INTO login VALUES(null,'tom2',md5('123'));
INSERT INTO login VALUES(null,'tom3',md5('123'));
INSERT INTO login VALUES(null,'jerry',md5('123'));
INSERT INTO login VALUES(null,'jerry1',md5('123'));
INSERT INTO login VALUES(null,'jerry2',md5('123'));
INSERT INTO login VALUES(null,'jerry3',md5('123'));
#理解:用户输入123对用户输入内容加密
#加密后与数据密码比较
#SELECT id FROM mq_login
#WHERE uname = ? AND upwd = md5(?)


#创建商品表
CREATE TABLE products_img(
  Iid  INT PRIMARY KEY AUTO_INCREMENT,
  title  VARCHAR(64),
  price DECIMAL(10,2),
  pic  VARCHAR(128)
);
INSERT INTO products_img VALUES(null,'马克华菲束脚裤子男韩版潮流小脚裤宽松春秋运动裤男士休闲裤男裤',69,'img/product/a1.jpg');
INSERT INTO products_img VALUES(null,'反季2019春高端小个子流行人字纹短款双面呢大衣女零羊绒呢子外套',179,'img/product/a2.jpg');
INSERT INTO products_img VALUES(null,'伊芙丽西装外套女2019新款春装韩版宽松职业格子V',179,'img/product/a3.jpg');
INSERT INTO products_img VALUES(null,'战地吉圃春季薄款运动裤男裤子松紧卫裤针织宽松直筒透气休闲长裤',89,'img/product/a4.jpg');
INSERT INTO products_img VALUES(null,'预售 YSL圣罗兰莹亮纯魅丰盈唇膏 黑心口红橘色5草莓红06 正品',359,'img/product/a5.jpg');
INSERT INTO products_img VALUES(null,'YSL圣罗兰黑管唇釉 豆沙色407唇蜜口红唇彩梅子色茄红416 正品',320,'img/product/a6.jpg');
INSERT INTO products_img VALUES(null,'YSL圣罗兰纯口红 方管正红色1星星色52正橘色13豆沙色姨妈色正品',320,'img/product/a7.jpg');
INSERT INTO products_img VALUES(null,'预售 YSL圣罗兰莹亮纯魅唇膏圆管新色烂番茄色80复古红83口红正品',279,'img/product/a8.jpg');
INSERT INTO products_img VALUES(null,'七格格春季白色薄款外套女2019新款潮百搭秋韩版中长款针织开衫',299,'img/product/a9.jpg');
INSERT INTO products_img VALUES(null,'2019春装新款宽松连帽卫衣女长袖百搭上衣很仙的洋气上衣外套',519,'img/product/a10.jpg');
INSERT INTO products_img VALUES(null,'短款薄外套女春秋季2019新款春装宽松韩版百搭小个子流行西装夹克',158,'img/product/a11.jpg');
INSERT INTO products_img VALUES(null,'俏妹妹套装2019春季适合女人穿洋气胖外套大码女装显瘦两件套',179,'img/product/a12.jpg');
INSERT INTO products_img VALUES(null,'雅顿复合面霜75ml乳液补水保湿滋润紧致护肤懒人霜女官方正品',315,'img/product/a13.jpg');
INSERT INTO products_img VALUES(null,'预售 YSL圣罗兰细管纯口红 小金条复古正红21呛口辣椒1哑光蜜橘色',369,'img/product/a14.jpg');
INSERT INTO products_img VALUES(null,'YSL圣罗兰莹亮纯魅液体唇膏 口红唇釉唇彩爱心银管豆沙色 正品',320,'img/product/a15.jpg');
INSERT INTO products_img VALUES(null,'YSL圣罗兰纯色唇釉 水唇釉镜面唇釉唇彩番茄红口红斩男色 正品',350,'img/product/a16.jpg');
INSERT INTO products_img VALUES(null,'马克华菲束脚裤子男韩版潮流小脚裤宽松春秋运动裤男士休闲裤男裤',69,'img/product/a1.jpg');
INSERT INTO products_img VALUES(null,'反季2019春高端小个子流行人字纹短款双面呢大衣女零羊绒呢子外套',179,'img/product/a2.jpg');
INSERT INTO products_img VALUES(null,'伊芙丽西装外套女2019新款春装韩版宽松职业格子V',179,'img/product/a3.jpg');
INSERT INTO products_img VALUES(null,'战地吉圃春季薄款运动裤男裤子松紧卫裤针织宽松直筒透气休闲长裤',89,'img/product/a4.jpg');
INSERT INTO products_img VALUES(null,'预售 YSL圣罗兰莹亮纯魅丰盈唇膏 黑心口红橘色5草莓红06 正品',359,'img/product/a5.jpg');
INSERT INTO products_img VALUES(null,'YSL圣罗兰黑管唇釉 豆沙色407唇蜜口红唇彩梅子色茄红416 正品',320,'img/product/a6.jpg');
INSERT INTO products_img VALUES(null,'YSL圣罗兰纯口红 方管正红色1星星色52正橘色13豆沙色姨妈色正品',320,'img/product/a7.jpg');
INSERT INTO products_img VALUES(null,'预售 YSL圣罗兰莹亮纯魅唇膏圆管新色烂番茄色80复古红83口红正品',279,'img/product/a8.jpg');
INSERT INTO products_img VALUES(null,'七格格春季白色薄款外套女2019新款潮百搭秋韩版中长款针织开衫',299,'img/product/a9.jpg');
INSERT INTO products_img VALUES(null,'2019春装新款宽松连帽卫衣女长袖百搭上衣很仙的洋气上衣外套',519,'img/product/a10.jpg');
INSERT INTO products_img VALUES(null,'短款薄外套女春秋季2019新款春装宽松韩版百搭小个子流行西装夹克',158,'img/product/a11.jpg');
INSERT INTO products_img VALUES(null,'俏妹妹套装2019春季适合女人穿洋气胖外套大码女装显瘦两件套',179,'img/product/a12.jpg');
INSERT INTO products_img VALUES(null,'雅顿复合面霜75ml乳液补水保湿滋润紧致护肤懒人霜女官方正品',315,'img/product/a13.jpg');
INSERT INTO products_img VALUES(null,'预售 YSL圣罗兰细管纯口红 小金条复古正红21呛口辣椒1哑光蜜橘色',369,'img/product/a14.jpg');
INSERT INTO products_img VALUES(null,'YSL圣罗兰莹亮纯魅液体唇膏 口红唇釉唇彩爱心银管豆沙色 正品',320,'img/product/a15.jpg');
INSERT INTO products_img VALUES(null,'YSL圣罗兰纯色唇釉 水唇釉镜面唇釉唇彩番茄红口红斩男色 正品',350,'img/product/a16.jpg');
INSERT INTO products_img VALUES(null,'马克华菲束脚裤子男韩版潮流小脚裤宽松春秋运动裤男士休闲裤男裤',69,'img/product/a1.jpg');
INSERT INTO products_img VALUES(null,'反季2019春高端小个子流行人字纹短款双面呢大衣女零羊绒呢子外套',179,'img/product/a2.jpg');
INSERT INTO products_img VALUES(null,'伊芙丽西装外套女2019新款春装韩版宽松职业格子V',179,'img/product/a3.jpg');
INSERT INTO products_img VALUES(null,'战地吉圃春季薄款运动裤男裤子松紧卫裤针织宽松直筒透气休闲长裤',89,'img/product/a4.jpg');
INSERT INTO products_img VALUES(null,'预售 YSL圣罗兰莹亮纯魅丰盈唇膏 黑心口红橘色5草莓红06 正品',359,'img/product/a5.jpg');
INSERT INTO products_img VALUES(null,'YSL圣罗兰黑管唇釉 豆沙色407唇蜜口红唇彩梅子色茄红416 正品',320,'img/product/a6.jpg');
INSERT INTO products_img VALUES(null,'YSL圣罗兰纯口红 方管正红色1星星色52正橘色13豆沙色姨妈色正品',320,'img/product/a7.jpg');
INSERT INTO products_img VALUES(null,'预售 YSL圣罗兰莹亮纯魅唇膏圆管新色烂番茄色80复古红83口红正品',279,'img/product/a8.jpg');
INSERT INTO products_img VALUES(null,'七格格春季白色薄款外套女2019新款潮百搭秋韩版中长款针织开衫',299,'img/product/a9.jpg');
INSERT INTO products_img VALUES(null,'2019春装新款宽松连帽卫衣女长袖百搭上衣很仙的洋气上衣外套',519,'img/product/a10.jpg');
INSERT INTO products_img VALUES(null,'短款薄外套女春秋季2019新款春装宽松韩版百搭小个子流行西装夹克',158,'img/product/a11.jpg');
INSERT INTO products_img VALUES(null,'俏妹妹套装2019春季适合女人穿洋气胖外套大码女装显瘦两件套',179,'img/product/a12.jpg');
INSERT INTO products_img VALUES(null,'雅顿复合面霜75ml乳液补水保湿滋润紧致护肤懒人霜女官方正品',315,'img/product/a13.jpg');
INSERT INTO products_img VALUES(null,'预售 YSL圣罗兰细管纯口红 小金条复古正红21呛口辣椒1哑光蜜橘色',369,'img/product/a14.jpg');
INSERT INTO products_img VALUES(null,'YSL圣罗兰莹亮纯魅液体唇膏 口红唇釉唇彩爱心银管豆沙色 正品',320,'img/product/a15.jpg');
INSERT INTO products_img VALUES(null,'YSL圣罗兰纯色唇釉 水唇釉镜面唇釉唇彩番茄红口红斩男色 正品',350,'img/product/a16.jpg');



#创建新闻表
CREATE TABLE mq_news(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  title VARCHAR(255),
  ctime DATETIME,
  point INT,
  content VARCHAR(2000)
);

INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","01",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","02",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","03",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","04",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","05",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","06",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","07",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","08",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","09",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","10",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","11",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","12",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","13",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","14",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","15",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","16",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","17",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","18",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","19",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","20",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","21",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","22",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","23",now(),0,"111");
INSERT INTO mq_news VALUES(null,"http://127.0.0.1:3000/img/product/1.png","24",now(),0,"111");


#创建新闻评论表
CREATE TABLE mq_conmment(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nid INT,
  content VARCHAR(120),
  ctime DATETIME
);


#创建购物车表
CREATE TABLE mq_cart(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,
  pid INT,
  price  DECIMAL(10,2),
  pname VARCHAR(255)
);
INSERT INTO mq_cart VALUES(null,1,1,3599,"BCD-470WDPG 470升十字对开变频静音节能干湿分储电冰箱");
INSERT INTO mq_cart VALUES(null,1,2,5899,"BCD-258WDVLU1 258升三门双频智能风冷节能 干湿分储家用冰箱");
INSERT INTO mq_cart VALUES(null,1,3,3199,"EG8014HB39GU1 8公斤变频全自动洗烘一体滚筒洗衣机");
INSERT INTO mq_cart VALUES(null,1,4,5199,"FCD-215SEA 215升大容量冷柜/冷藏冷冻双温 小冰柜 家用商用冰箱");
INSERT INTO mq_cart VALUES(null,1,5,6899,"KFR-50GW/08AH-2套机 2匹智能空调/二级能效/急速冷暖");
INSERT INTO mq_cart VALUES(null,1,6,2599,"KFR-35GW/21TMAAL23AU1套机 1.5匹智能变频空调/自清洁/17分贝静音");
INSERT INTO mq_cart VALUES(null,1,7,7699,"E900C10/侧吸/灵动开合/爆炒/延时");
INSERT INTO mq_cart VALUES(null,1,8,6899,"EC6003-YT1 60升即热恒温储水式家用电热水器");
INSERT INTO mq_cart VALUES(null,1,1,5199,"BCD-642WDVMU1 642升变频对开门大容量冰箱");
INSERT INTO mq_cart VALUES(null,1,2,7399,"E900T6R(T)+QE5B1/欧式/顶吸/自清洗/4.1KW大火力/天然气");



