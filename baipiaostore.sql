/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 5.5.40 : Database - baipiaostore
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`baipiaostore` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `baipiaostore`;

/*Table structure for table `notice` */

DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `n_time` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `notice` */

insert  into `notice`(`n_id`,`title`,`details`,`n_time`) values 
(1,'暂停当日达业务','尊敬的网上书城用户， 　　<br>\r\n　　为了让大家有更好的购物体验，3月25日起，当日达业务关小黑屋回炉升级！<br>具体开放时间请留意公告，感谢大家的支持与理解，祝大家购物愉快！<br>\r\n3月23日<br>\r\n传智播客 网上书城系统管理部<br>','20160111113420'),
(2,'年货礼包兑换时间通知','尊敬的网上书城用户：\r\n    非常抱歉，因为年后部分供应商工厂开工较晚，导致个别商品到货延迟。\r\n    基于此，15年年货礼包的兑换入口会延期到3月17日，请您在有效期内完成兑换。\r\n    以下礼包预计本周四，即3月12日到货。造成不便深表歉意，敬请谅解。','20160111113411');

/*Table structure for table `orderitem` */

DROP TABLE IF EXISTS `orderitem`;

CREATE TABLE `orderitem` (
  `order_id` varchar(100) NOT NULL DEFAULT '',
  `product_id` varchar(100) NOT NULL DEFAULT '',
  `buynum` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orderitem` */

insert  into `orderitem`(`order_id`,`product_id`,`buynum`) values 
('0c0796f2-0124-4a13-a891-5efbb63b04f9','79bbe618-d2f8-4081-b35a-62ebbe938b64',1),
('305a7870-3820-4079-b6f9-5d2b63cbcd2a','72c52302-cd1e-4a22-8ac8-dc300a915be5',1),
('611f80fa-4273-4674-be09-9530b6276e15','84c842da-16b6-4e87-953e-859a1ca62bab',1),
('677a7314-0e16-4e18-8aec-552f848e0d75','3a0196b2-71c1-4d4d-a4e8-d1f875096f00',1),
('677a7314-0e16-4e18-8aec-552f848e0d75','bf66a00c-4a78-458b-93c8-08896ee14976',1),
('6f591522-7a2a-4a31-899d-ef1181c72f5f','9a7af97e-deea-417e-ad66-23ea755d2a51',1),
('7ae96e6d-4600-41a5-bc5d-143b34ba61db','bdb32537-8f2c-4ba2-a752-94fdc0e9a250',1),
('a5bfb13d-9085-4374-94d9-4864b4d618ab','9a7af97e-deea-417e-ad66-23ea755d2a51',1),
('c4b2bfff-1694-4e28-bcf8-fa7169bfc978','3a0196b2-71c1-4d4d-a4e8-d1f875096f00',2),
('c4b2bfff-1694-4e28-bcf8-fa7169bfc978','79bbe618-d2f8-4081-b35a-62ebbe938b64',2),
('d88d75cd-15e3-4622-801d-4cad902aeaa1','3cdd01d2-95d4-4077-b512-ff4c3b340d6b',1);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` varchar(100) NOT NULL,
  `money` double DEFAULT NULL,
  `receiverAddress` varchar(255) DEFAULT NULL,
  `receiverName` varchar(20) DEFAULT NULL,
  `receiverPhone` varchar(20) DEFAULT NULL,
  `paystate` int(11) DEFAULT '0',
  `ordertime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`id`,`money`,`receiverAddress`,`receiverName`,`receiverPhone`,`paystate`,`ordertime`,`user_id`) values 
('0c0796f2-0124-4a13-a891-5efbb63b04f9',44.5,'北京市昌平区金燕龙办公楼','hanyongmeng','15207545526',1,'2016-05-18 10:36:36',4),
('305a7870-3820-4079-b6f9-5d2b63cbcd2a',59,'北京市昌平区建材城西路金燕龙办公楼','huangyun','13041019968',0,'2016-01-13 15:14:54',3),
('611f80fa-4273-4674-be09-9530b6276e15',89,'北京市海淀区清河永泰园5号楼501','huangyun','13041019968',1,'2016-01-10 18:00:36',3),
('677a7314-0e16-4e18-8aec-552f848e0d75',65,'北京市昌平区','hanyongmeng','15207545526',0,'2016-05-18 11:33:25',4),
('6f591522-7a2a-4a31-899d-ef1181c72f5f',25,'北京市昌平区金燕龙办公楼一层传智播客','madan','13269219270',0,'2016-01-10 18:00:36',2),
('7ae96e6d-4600-41a5-bc5d-143b34ba61db',35,'北京市昌平区建材城西路','madan','13269219270',0,'2016-02-25 10:44:56',2),
('a5bfb13d-9085-4374-94d9-4864b4d618ab',25,'海淀区圆明园西路','hanyongmeng','13455260812',1,'2016-02-25 10:43:40',4),
('c4b2bfff-1694-4e28-bcf8-fa7169bfc978',129,'北京市昌平区北七家镇','hanyongmeng','15207545526',1,'2016-05-18 10:36:22',4),
('d88d75cd-15e3-4622-801d-4cad902aeaa1',25,'北京市昌平区建材城西路金燕龙办公楼','hanyongmeng','13848399998',1,'2016-02-25 10:44:23',4);

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(40) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `category` varchar(40) DEFAULT NULL,
  `pnum` int(11) DEFAULT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`price`,`category`,`pnum`,`imgurl`,`description`) values 
('10001','G2000??',799,'',160,'/productImg/13/11/23f35717-e502-49a7-9e1b-3d8a3e129293.png','??????'),
('10002','新款纯色立体字母印花',129,'clothe',125,NULL,'素品 春装新款纯色立体字母印花侧边抽绳宽松大码百搭休闲显瘦T'),
('10003','圆领短袖T恤男',169,'clothe',269,NULL,'LeeXLINE 21春夏新品标准版型logo圆领短袖T恤男潮流'),
('10004','布克兄弟正装长袖衬衫',690,'clothe',100,NULL,'Brooks Brothers/布克兄弟纯棉通勤府绸棉格纹休闲正装长袖衬衫'),
('10005','小黄人变形玩具',118,'toy',150,NULL,'正版小黄人变形玩具神偷奶爸潜艇飞机摩托庄臣凯文公仔男孩机器人'),
('10006','艾莎安娜女王娃娃玩具',299,'toy',1800,NULL,'迪士尼商店 冰雪奇缘2加冕版艾莎安娜女王娃娃玩具手办礼盒2件套'),
('10007','正版舒克玩具',138,'toy',199,NULL,'正版舒克和贝塔历险记磁力拼装变形玩具飞机坦克模型机器人偶男孩'),
('10008','直升飞机模型军事',96,'toy',659,NULL,'男孩积木拼装玩具益智儿童樂高特警装甲车直升飞机模型军事'),
('10009','现代真皮皮沙组合',7180,'toy',155,NULL,'现代真皮皮沙组合简约沙发客厅转角头层牛皮厚家具北欧套装创意皮'),
('10010','北欧全实木床',4560,'furniture\n\n',50,NULL,'百方北欧全实木床现代简约1.8米主卧榉木单人双人床1.5软包真皮床'),
('10011','牛皮革低帮潮流运动鞋',399,'shoes',155,NULL,'ZARA新款 男鞋 白色拼接厚底牛皮革低帮潮流运动鞋 12215720001'),
('10012','飞船复古解构休闲鞋',1119,'shoes',888,NULL,'STARTER男女同款CHAOS混沌空间飞船复古解构休闲鞋'),
('10013','全自动智能电高压锅',999,'device',144,NULL,'苏泊尔电压力锅6L升全自动智能电高压锅饭煲饭锅官方旗舰店家用5l'),
('10014','智能反渗透净水器台式',3888,'device',66,NULL,'碧云泉G7弱碱性智能反渗透净水器台式家用过滤直饮加热一体机莱克'),
('10015','三倍浓缩深海鱼油',519,'medicine',999,NULL,'美国gnc原装进口三倍浓缩深海鱼油dha学生补脑健身'),
('10016','vivo iQOO Z3 5g',1749,'phone',1000,NULL,'vivo iQOO Z3 5g新品闪充学生游戏拍照手机官方旗舰店官网正品vivoiqooz3 iqooz3'),
('10017','ROMOSS罗马仕20000毫安',109,'digital',888,NULL,'ROMOSS罗马仕20000毫安时大容量充电宝PD快充闪充便携移动电源专用适用于苹果小米华为罗马 仕官方旗舰店正品'),
('10018','十八子作菜刀',45,'kitchenware',1555,NULL,'十八子作菜刀 家用厨师专用不锈钢切肉切片斩切免磨厨房刀具套装'),
('10019','百乐黑色中性笔套装',33,'stationery',458,NULL,'日本Pilot/百乐黑色中性笔套装P500/V5/juice up考试专用0.5水性笔果汁按动学生ins风日系文具官方旗舰店官网'),
('10020','复合反曲弓箭套装',236,'outdoor sport',233,NULL,'闪电狼专业入门复合反曲弓箭套装射击户外运动合金传统直拉弓神器'),
('10021','王霏霏同款眼线胶笔',99,'cosmetics',222,NULL,'王霏霏同款UNNY官方旗舰店眼线胶笔不易晕染防水棕色学生新手进口'),
('10022','复古可爱潮面具玫瑰金指环',39.8,'ornaments',555,NULL,'中国风京剧脸谱戒指女创意食指潮人饰品复古可爱潮面具玫瑰金指环'),
('10023','南极人床上用品三件套床品套件',539.9,'bedding article',833,NULL,'南极人纯棉四件套100全棉床单被套夏季床上用品三件套床品套件'),
('10024','新中式沙发 ',11990,'furniture\n\n',22,NULL,'新中式沙发 实木储物沙发123组合 别墅大气沙发 冬夏两用简约沙发'),
('10025','小户型ins风客厅三人乳胶布艺沙发',3320,'furniture\n\n',53,NULL,'北欧现代简约轻奢免洗科技小户型ins风客厅三人乳胶布艺沙发整装'),
('10026','欧法式大小户型客厅家具',55300,'furniture\n\n',66,NULL,'欧式沙发真皮实木转角简欧法式大小户型客厅家具组合轻奢沙发QF56'),
('10027','学生老爹女鞋',99.9,'shoes',155,NULL,'鞋子女夏季透气2021年新款百搭ins潮休闲运动鞋跑步学生老爹女鞋'),
('10028','平底圆头浅口真皮妈妈鞋',358,'shoes',123,NULL,'平底单鞋女2021春秋季新款平底圆头浅口真皮妈妈鞋软底舒适小皮鞋'),
('10029','真皮懒人小白鞋女',699,'shoes',246,NULL,'佰俪真皮懒人小白鞋女2021洋气春夏新款平底一脚蹬百搭浅口女单鞋'),
('10030','海尔抽油烟机',3599.8,'device',564,NULL,'海尔抽油烟机燃气灶套餐吸油烟机灶具套装厨房煤气灶组合C12L'),
('10031','德国博夫曼不锈钢抗菌碗',111,'device',532,NULL,'德国博夫曼304不锈钢抗菌碗家用儿童带盖成人单个饭碗双层汤碗'),
('10032','美的空调酷金大1.5匹',4299,'device',23,NULL,'美的空调酷金大1.5匹P一级能效变频冷暖智能壁挂机式卧室家用ZHA1'),
('10033','奥克斯空调新一级匹柜机',5488.8,'device',63,NULL,'AUX/奥克斯空调新一级能效大2P匹柜机立式变频智能阿波罗51TYK B1'),
('10034','男用人参鹿鞭片保健品',599,'medicine',777,NULL,'男用人参鹿鞭片男性滋补品丸黑松露牡蛎正品可搭鹿茸鹿鞭膏保健品'),
('10035','韩国钟根堂Lacto-Fit益生菌粉',268,'medicine',224,NULL,'韩国钟根堂Lacto-Fit益生菌粉婴儿版胃胀气调理肠胃 1-3岁婴儿'),
('10036','轻松压片糖果60粒补脑',255,'medicine',18,NULL,'无限极意轻松压片糖果60粒补脑DHA藻油易轻松儿童青少年保健产品'),
('10037','MoveFree益节 Ultra骨胶',458,'medicine',64,NULL,'MoveFree益节 Ultra骨胶原关节维骨力氨糖软骨素黄金搭配白瓶*2'),
('10038','白云山星群龙涎降压茶',156,'medicine',342,NULL,'白云山星群龙涎降压茶正品中老年三辅助高茶蒲公英调节血压'),
('10039','一加OnePlus 9手机骁龙888旗舰',2799,'phone',654,NULL,'一加OnePlus 9手机骁龙888旗舰120Hz屏幕游戏智能拍照一加丨哈苏手机影像系统'),
('10040','二手手机苹/果iPhone11Pro Max',4888,'phone',245,NULL,'二手手机苹/果iPhone11Pro Max国行正品x xs Max 全网通12pro双卡'),
('10041','小米11 5G手机',3222,'phone',21,NULL,'送55W充电套装Xiaomi/小米 小米11 5G手机新品11Ultra官网小米11pro官方旗舰店雷军签名版'),
('10042','OPPO K9',1299,'phone',24,NULL,'OPPO K9 oppok9新品oppo手机官方旗舰店官网oppo5g限量版手机新款上市oppo手机oppok9x 0ppo手机'),
('10043','迷你快充20000毫安充电宝超薄',320,'digital',13,NULL,'迷你快充20000毫安充电宝超薄小巧便携超大容量自带线适用蘋果小米手机专用移动电源新款高端无线磁吸12轻薄X'),
('10044','酷睿I5 10400F/10600KF/GTX1060游戏电竞独显台式机',2699,'digital',421,NULL,'酷睿I5 10400F/10600KF/GTX1060游戏电竞独显台式机LOL组装电脑主机吃鸡家用办公DIY高端高配网吧整机全套'),
('10045','Lenovo/联想拯救者R7000p',6999.9,'digital',21,NULL,'Lenovo/联想拯救者R7000p/R9000P X锐龙R7笔记本电脑高色域电竞游戏本设计师本RTX3070独显'),
('10046','台式办公家用教学一体化整机',1899,'digital',44,NULL,'超薄22/24寸一体机电脑i5i7台式办公家用教学一体化整机全套主机'),
('10047','创意多功能充电宝带支架蓝牙音响三合一',158,'digital',14,NULL,'创意多功能充电宝带支架蓝牙音响三合一手平板移动电源定制logo'),
('10048','苏泊尔铲勺套装',220,'kitchenware',13,NULL,'苏泊尔铲勺套装家用厨具不锈钢厨房用具全套锅铲家用炒菜铲子汤勺'),
('10049','厨具筷子刀架用品多层收纳架',118,'kitchenware',56,NULL,'厨房调料置物架台面多功能调味厨具筷子刀架用品多层收纳架不锈钢'),
('10050','家用大全带盖碗柜',158,'kitchenware',22,NULL,'放碗厨房置物架调味调料用品家用大全带盖碗柜厨具台面碗碟收纳盒'),
('10051','OOU刀具套装厨房菜刀组合',500,'kitchenware',63,NULL,'OOU刀具套装厨房菜刀组合厨具全套不锈钢水果刀厨师刀家用辅食刀'),
('10052','日本进口樱花橡皮擦',25,'stationery',88,NULL,'日本进口樱花橡皮擦无碎屑小学生文具2b象皮4B超干净像皮擦不留痕擦的干净高光美术素描绘画正版学生专用橡皮'),
('10053','小学生用涂改带',22,'stationery',19,NULL,'乐普升修正带小学生用涂改带改正修改乐普生乐普士30米文具改字液实惠装大容量普乐升ins日系女霸气官方旗舰'),
('10054','得力文具大容量中性笔学生考试用0.5',11,'stationery',42,NULL,'得力文具大容量中性笔学生考试用0.5黑子弹头办公商务签字笔考试刷题水笔'),
('10055','马拉松音乐运动手表',2000,'outdoor sport',56,NULL,'Garmin佳明 Forerunner 245M血氧跑步心率马拉松音乐运动手表旗舰'),
('10056','POLISI专业骑行眼镜偏光防风镜',222,'outdoor sport',43,NULL,'POLISI专业骑行眼镜偏光防风镜男女户外运动山地自行车骑行镜近视'),
('10057','户外多功能包 ',138,'outdoor sport',76,NULL,'包邮特惠pentagram五角星 户外多功能包 休闲运动旅行腰包 斜挎包'),
('10058','新手女学生一整套礼盒美妆',50.9,'cosmetics',121,NULL,'化妆品彩妆套装正品全套组合初学者新手女学生一整套礼盒美妆遮瑕'),
('10059','浮雕雕花哑光唇膏',218,'cosmetics',58,NULL,'【520锁爱礼】花西子同心锁口红/浮雕雕花哑光唇膏女持久保湿滋润'),
('10060','Joocyee酵色琥珀眼影盘',148,'cosmetics',423,NULL,'【新色】Joocyee酵色琥珀眼影盘贝壳八色盘丝绸款便携哑光大地色'),
('10061','RHODON月光石项链女',388,'ornaments',24,NULL,'RHODON月光石项链女纯银简约锁骨链小众设计轻奢吊坠520情侣礼物'),
('10062','S9999纯银手镯女',268,'ornaments',73,NULL,'S9999纯银手镯女实心网红三生三世银镯子年轻款ins潮饰品简约礼物'),
('10063','全棉长绒棉床上用品',3000,'bedding article',34,NULL,'120支真丝棉四件套高档轻奢丝滑纯色被套纯棉全棉长绒棉床上用品'),
('10064','丝滑裸睡绸缎床单',2220,'bedding article',354,NULL,'22姆米高档桑蚕丝真丝四件套被套被单床上用品丝滑裸睡绸缎床单');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `introduce` varchar(100) DEFAULT NULL,
  `activeCode` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `role` varchar(10) DEFAULT '普通用户',
  `registTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`PASSWORD`,`gender`,`email`,`telephone`,`introduce`,`activeCode`,`state`,`role`,`registTime`) values 
(1,'admin','123456','男','huan9yun@163.com','13041019968','我是超级管理员，我可以登录后台管理系统','49338fdc-d8c9-46fa-8391-0fac7bf09707',1,'超级用户','2015-03-19 16:16:40'),
(2,'madan','123456','女','huan9yun@163.com','13269219270','我是一个课程设计师','c1cc1229-f0ac-41b4-920c-dfef9f8a96a3',1,'普通用户','2015-03-19 18:12:36'),
(3,'huangyun','123456','男','huan9yun@163.com','13041019968','大家好，我是黄云','d0827d1d-dc0d-4cdc-8710-678ce917880e',1,'普通用户','2015-03-20 17:36:38'),
(4,'hanyongmeng','123456','男','itcast_hym@163.com','15207545526','课程设计师','da483412-1e34-43cf-aef2-4925748c811d',1,'普通用户','2016-01-21 15:19:32'),
(5,'tianjiao','123456','男','hanyongmeng@126.cn','','','f8173f4f-debe-4d32-8117-b228d555d822',0,'普通用户','2016-02-18 15:32:01');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
