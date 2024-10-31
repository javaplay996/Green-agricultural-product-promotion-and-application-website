/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm44pgp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm44pgp` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm44pgp`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm44pgp/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm44pgp/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm44pgp/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussnongyejiqiao` */

DROP TABLE IF EXISTS `discussnongyejiqiao`;

CREATE TABLE `discussnongyejiqiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='农业技巧评论表';

/*Data for the table `discussnongyejiqiao` */

insert  into `discussnongyejiqiao`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (131,'2021-03-01 17:42:43',1,1,'评论内容1','回复内容1'),(132,'2021-03-01 17:42:43',2,2,'评论内容2','回复内容2'),(133,'2021-03-01 17:42:43',3,3,'评论内容3','回复内容3'),(134,'2021-03-01 17:42:43',4,4,'评论内容4','回复内容4'),(135,'2021-03-01 17:42:43',5,5,'评论内容5','回复内容5'),(136,'2021-03-01 17:42:43',6,6,'评论内容6','回复内容6');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (141,'2021-03-01 17:42:43',1,1,'评论内容1','回复内容1'),(142,'2021-03-01 17:42:43',2,2,'评论内容2','回复内容2'),(143,'2021-03-01 17:42:43',3,3,'评论内容3','回复内容3'),(144,'2021-03-01 17:42:43',4,4,'评论内容4','回复内容4'),(145,'2021-03-01 17:42:43',5,5,'评论内容5','回复内容5'),(146,'2021-03-01 17:42:43',6,6,'评论内容6','回复内容6');

/*Table structure for table `jiaoliuhuifu` */

DROP TABLE IF EXISTS `jiaoliuhuifu`;

CREATE TABLE `jiaoliuhuifu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `huifuneirong` longtext COMMENT '回复内容',
  `huifuriqi` date DEFAULT NULL COMMENT '回复日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='交流回复';

/*Data for the table `jiaoliuhuifu` */

insert  into `jiaoliuhuifu`(`id`,`addtime`,`biaoti`,`yonghuming`,`xingming`,`huifuneirong`,`huifuriqi`,`zhanghao`,`shangjiaxingming`) values (91,'2021-03-01 17:42:43','标题1','用户名1','姓名1','回复内容1','2021-03-01','账号1','商家姓名1'),(92,'2021-03-01 17:42:43','标题2','用户名2','姓名2','回复内容2','2021-03-01','账号2','商家姓名2'),(93,'2021-03-01 17:42:43','标题3','用户名3','姓名3','回复内容3','2021-03-01','账号3','商家姓名3'),(94,'2021-03-01 17:42:43','标题4','用户名4','姓名4','回复内容4','2021-03-01','账号4','商家姓名4'),(95,'2021-03-01 17:42:43','标题5','用户名5','姓名5','回复内容5','2021-03-01','账号5','商家姓名5'),(96,'2021-03-01 17:42:43','标题6','用户名6','姓名6','回复内容6','2021-03-01','账号6','商家姓名6');

/*Table structure for table `jiaoliuxinxi` */

DROP TABLE IF EXISTS `jiaoliuxinxi`;

CREATE TABLE `jiaoliuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  `zixunneirong` longtext COMMENT '咨询内容',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='交流信息';

/*Data for the table `jiaoliuxinxi` */

insert  into `jiaoliuxinxi`(`id`,`addtime`,`biaoti`,`zhanghao`,`shangjiaxingming`,`zixunneirong`,`riqi`,`yonghuming`,`xingming`) values (81,'2021-03-01 17:42:43','标题1','账号1','商家姓名1','咨询内容1','2021-03-01','用户名1','姓名1'),(82,'2021-03-01 17:42:43','标题2','账号2','商家姓名2','咨询内容2','2021-03-01','用户名2','姓名2'),(83,'2021-03-01 17:42:43','标题3','账号3','商家姓名3','咨询内容3','2021-03-01','用户名3','姓名3'),(84,'2021-03-01 17:42:43','标题4','账号4','商家姓名4','咨询内容4','2021-03-01','用户名4','姓名4'),(85,'2021-03-01 17:42:43','标题5','账号5','商家姓名5','咨询内容5','2021-03-01','用户名5','姓名5'),(86,'2021-03-01 17:42:43','标题6','账号6','商家姓名6','咨询内容6','2021-03-01','用户名6','姓名6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (121,'2021-03-01 17:42:43',1,'用户名1','留言内容1','回复内容1'),(122,'2021-03-01 17:42:43',2,'用户名2','留言内容2','回复内容2'),(123,'2021-03-01 17:42:43',3,'用户名3','留言内容3','回复内容3'),(124,'2021-03-01 17:42:43',4,'用户名4','留言内容4','回复内容4'),(125,'2021-03-01 17:42:43',5,'用户名5','留言内容5','回复内容5'),(126,'2021-03-01 17:42:43',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='农业资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-03-01 17:42:43','标题1','简介1','http://localhost:8080/ssm44pgp/upload/news_picture1.jpg','内容1'),(112,'2021-03-01 17:42:43','标题2','简介2','http://localhost:8080/ssm44pgp/upload/news_picture2.jpg','内容2'),(113,'2021-03-01 17:42:43','标题3','简介3','http://localhost:8080/ssm44pgp/upload/news_picture3.jpg','内容3'),(114,'2021-03-01 17:42:43','标题4','简介4','http://localhost:8080/ssm44pgp/upload/news_picture4.jpg','内容4'),(115,'2021-03-01 17:42:43','标题5','简介5','http://localhost:8080/ssm44pgp/upload/news_picture5.jpg','内容5'),(116,'2021-03-01 17:42:43','标题6','简介6','http://localhost:8080/ssm44pgp/upload/news_picture6.jpg','内容6');

/*Table structure for table `nongyejiqiao` */

DROP TABLE IF EXISTS `nongyejiqiao`;

CREATE TABLE `nongyejiqiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jianshu` varchar(200) DEFAULT NULL COMMENT '简述',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `jiqiaoneirong` longtext COMMENT '技巧内容',
  `fariqi` date DEFAULT NULL COMMENT '发日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='农业技巧';

/*Data for the table `nongyejiqiao` */

insert  into `nongyejiqiao`(`id`,`addtime`,`biaoti`,`tupian`,`jianshu`,`shipin`,`jiqiaoneirong`,`fariqi`) values (41,'2021-03-01 17:42:43','标题1','http://localhost:8080/ssm44pgp/upload/nongyejiqiao_tupian1.jpg','简述1','','技巧内容1','2021-03-01'),(42,'2021-03-01 17:42:43','标题2','http://localhost:8080/ssm44pgp/upload/nongyejiqiao_tupian2.jpg','简述2','','技巧内容2','2021-03-01'),(43,'2021-03-01 17:42:43','标题3','http://localhost:8080/ssm44pgp/upload/nongyejiqiao_tupian3.jpg','简述3','','技巧内容3','2021-03-01'),(44,'2021-03-01 17:42:43','标题4','http://localhost:8080/ssm44pgp/upload/nongyejiqiao_tupian4.jpg','简述4','','技巧内容4','2021-03-01'),(45,'2021-03-01 17:42:43','标题5','http://localhost:8080/ssm44pgp/upload/nongyejiqiao_tupian5.jpg','简述5','','技巧内容5','2021-03-01'),(46,'2021-03-01 17:42:43','标题6','http://localhost:8080/ssm44pgp/upload/nongyejiqiao_tupian6.jpg','简述6','','技巧内容6','2021-03-01');

/*Table structure for table `nongyexingqing` */

DROP TABLE IF EXISTS `nongyexingqing`;

CREATE TABLE `nongyexingqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `nongyexingqing` longtext COMMENT '农业行情',
  `faburiqi` datetime DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='农业行情';

/*Data for the table `nongyexingqing` */

insert  into `nongyexingqing`(`id`,`addtime`,`biaoti`,`tupian`,`nongyexingqing`,`faburiqi`) values (31,'2021-03-01 17:42:43','标题1','http://localhost:8080/ssm44pgp/upload/nongyexingqing_tupian1.jpg','农业行情1','2021-03-01 17:42:43'),(32,'2021-03-01 17:42:43','标题2','http://localhost:8080/ssm44pgp/upload/nongyexingqing_tupian2.jpg','农业行情2','2021-03-01 17:42:43'),(33,'2021-03-01 17:42:43','标题3','http://localhost:8080/ssm44pgp/upload/nongyexingqing_tupian3.jpg','农业行情3','2021-03-01 17:42:43'),(34,'2021-03-01 17:42:43','标题4','http://localhost:8080/ssm44pgp/upload/nongyexingqing_tupian4.jpg','农业行情4','2021-03-01 17:42:43'),(35,'2021-03-01 17:42:43','标题5','http://localhost:8080/ssm44pgp/upload/nongyexingqing_tupian5.jpg','农业行情5','2021-03-01 17:42:43'),(36,'2021-03-01 17:42:43','标题6','http://localhost:8080/ssm44pgp/upload/nongyexingqing_tupian6.jpg','农业行情6','2021-03-01 17:42:43');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`addtime`,`zhanghao`,`mima`,`shangjiaxingming`,`xingbie`,`touxiang`,`shenfenzheng`,`lianxidianhua`) values (21,'2021-03-01 17:42:43','商家1','123456','商家姓名1','男','http://localhost:8080/ssm44pgp/upload/shangjia_touxiang1.jpg','440300199101010001','13823888881'),(22,'2021-03-01 17:42:43','商家2','123456','商家姓名2','男','http://localhost:8080/ssm44pgp/upload/shangjia_touxiang2.jpg','440300199202020002','13823888882'),(23,'2021-03-01 17:42:43','商家3','123456','商家姓名3','男','http://localhost:8080/ssm44pgp/upload/shangjia_touxiang3.jpg','440300199303030003','13823888883'),(24,'2021-03-01 17:42:43','商家4','123456','商家姓名4','男','http://localhost:8080/ssm44pgp/upload/shangjia_touxiang4.jpg','440300199404040004','13823888884'),(25,'2021-03-01 17:42:43','商家5','123456','商家姓名5','男','http://localhost:8080/ssm44pgp/upload/shangjia_touxiang5.jpg','440300199505050005','13823888885'),(26,'2021-03-01 17:42:43','商家6','123456','商家姓名6','男','http://localhost:8080/ssm44pgp/upload/shangjia_touxiang6.jpg','440300199606060006','13823888886');

/*Table structure for table `shangpingoumai` */

DROP TABLE IF EXISTS `shangpingoumai`;

CREATE TABLE `shangpingoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `goumaiburiqi` date DEFAULT NULL COMMENT '购买部日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='商品购买';

/*Data for the table `shangpingoumai` */

insert  into `shangpingoumai`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinleixing`,`zhanghao`,`jiage`,`shuliang`,`zongjiage`,`goumaiburiqi`,`yonghuming`,`xingming`,`shouji`,`dizhi`,`ispay`) values (71,'2021-03-01 17:42:43','订单编号1','商品名称1','商品类型1','账号1',1,1,'总价格1','2021-03-01','用户名1','姓名1','手机1','地址1','未支付'),(72,'2021-03-01 17:42:43','订单编号2','商品名称2','商品类型2','账号2',2,2,'总价格2','2021-03-01','用户名2','姓名2','手机2','地址2','未支付'),(73,'2021-03-01 17:42:43','订单编号3','商品名称3','商品类型3','账号3',3,3,'总价格3','2021-03-01','用户名3','姓名3','手机3','地址3','未支付'),(74,'2021-03-01 17:42:43','订单编号4','商品名称4','商品类型4','账号4',4,4,'总价格4','2021-03-01','用户名4','姓名4','手机4','地址4','未支付'),(75,'2021-03-01 17:42:43','订单编号5','商品名称5','商品类型5','账号5',5,5,'总价格5','2021-03-01','用户名5','姓名5','手机5','地址5','未支付'),(76,'2021-03-01 17:42:43','订单编号6','商品名称6','商品类型6','账号6',6,6,'总价格6','2021-03-01','用户名6','姓名6','手机6','地址6','未支付');

/*Table structure for table `shangpinleixing` */

DROP TABLE IF EXISTS `shangpinleixing`;

CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='商品类型';

/*Data for the table `shangpinleixing` */

insert  into `shangpinleixing`(`id`,`addtime`,`shangpinleixing`) values (51,'2021-03-01 17:42:43','商品类型1'),(52,'2021-03-01 17:42:43','商品类型2'),(53,'2021-03-01 17:42:43','商品类型3'),(54,'2021-03-01 17:42:43','商品类型4'),(55,'2021-03-01 17:42:43','商品类型5'),(56,'2021-03-01 17:42:43','商品类型6');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`tupian`,`jiage`,`shuliang`,`faburiqi`,`shangpinxiangqing`,`zhanghao`,`shangjiaxingming`,`lianxidianhua`,`clicktime`,`clicknum`) values (61,'2021-03-01 17:42:43','商品名称1','商品类型1','http://localhost:8080/ssm44pgp/upload/shangpinxinxi_tupian1.jpg',1,1,'2021-03-01','商品详情1','账号1','商家姓名1','联系电话1','2021-03-01 17:42:43',1),(62,'2021-03-01 17:42:43','商品名称2','商品类型2','http://localhost:8080/ssm44pgp/upload/shangpinxinxi_tupian2.jpg',2,2,'2021-03-01','商品详情2','账号2','商家姓名2','联系电话2','2021-03-01 17:42:43',2),(63,'2021-03-01 17:42:43','商品名称3','商品类型3','http://localhost:8080/ssm44pgp/upload/shangpinxinxi_tupian3.jpg',3,3,'2021-03-01','商品详情3','账号3','商家姓名3','联系电话3','2021-03-01 17:42:43',3),(64,'2021-03-01 17:42:43','商品名称4','商品类型4','http://localhost:8080/ssm44pgp/upload/shangpinxinxi_tupian4.jpg',4,4,'2021-03-01','商品详情4','账号4','商家姓名4','联系电话4','2021-03-01 17:42:43',4),(65,'2021-03-01 17:42:43','商品名称5','商品类型5','http://localhost:8080/ssm44pgp/upload/shangpinxinxi_tupian5.jpg',5,5,'2021-03-01','商品详情5','账号5','商家姓名5','联系电话5','2021-03-01 17:42:43',5),(66,'2021-03-01 17:42:43','商品名称6','商品类型6','http://localhost:8080/ssm44pgp/upload/shangpinxinxi_tupian6.jpg',6,6,'2021-03-01','商品详情6','账号6','商家姓名6','联系电话6','2021-03-01 17:42:43',6);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-01 17:42:43');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (11,'2021-03-01 17:42:43','用户1','123456','姓名1','男','http://localhost:8080/ssm44pgp/upload/yonghu_touxiang1.jpg','440300199101010001','13823888881'),(12,'2021-03-01 17:42:43','用户2','123456','姓名2','男','http://localhost:8080/ssm44pgp/upload/yonghu_touxiang2.jpg','440300199202020002','13823888882'),(13,'2021-03-01 17:42:43','用户3','123456','姓名3','男','http://localhost:8080/ssm44pgp/upload/yonghu_touxiang3.jpg','440300199303030003','13823888883'),(14,'2021-03-01 17:42:43','用户4','123456','姓名4','男','http://localhost:8080/ssm44pgp/upload/yonghu_touxiang4.jpg','440300199404040004','13823888884'),(15,'2021-03-01 17:42:43','用户5','123456','姓名5','男','http://localhost:8080/ssm44pgp/upload/yonghu_touxiang5.jpg','440300199505050005','13823888885'),(16,'2021-03-01 17:42:43','用户6','123456','姓名6','男','http://localhost:8080/ssm44pgp/upload/yonghu_touxiang6.jpg','440300199606060006','13823888886');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
