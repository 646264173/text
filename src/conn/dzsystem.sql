# Host: 127.0.0.1  (Version: 5.5.21)
# Date: 2021-03-30 09:37:07
# Generator: MySQL-Front 5.3  (Build 4.214)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "exam_room_t"
#

DROP TABLE IF EXISTS `exam_room_t`;
CREATE TABLE `exam_room_t` (
  `exam_room_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '考场编号',
  `exam_room_address` varchar(255) DEFAULT NULL COMMENT '考场地点,如（教学楼102室）',
  `contain_number` int(11) DEFAULT NULL COMMENT '容纳人数',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `input_name` varchar(255) DEFAULT NULL COMMENT '添加人',
  `input_date` datetime DEFAULT NULL COMMENT '添加时间',
  `update_name` varchar(255) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `delsign` int(11) DEFAULT '0' COMMENT '删除标记，0、未删除，1、已删除',
  PRIMARY KEY (`exam_room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1208 DEFAULT CHARSET=utf8 COMMENT='考场信息表';

#
# Data for table "exam_room_t"
#

INSERT INTO `exam_room_t` VALUES (1205,'教学楼1205教室',40,NULL,NULL,NULL,NULL,NULL,0),(1206,'教学楼1206教室',40,NULL,NULL,NULL,NULL,NULL,0),(1207,'教学楼1207教室',40,NULL,NULL,NULL,NULL,NULL,0);

#
# Structure for table "examinee_t"
#

DROP TABLE IF EXISTS `examinee_t`;
CREATE TABLE `examinee_t` (
  `examinee_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '准考证号',
  `regist_id` int(11) DEFAULT NULL COMMENT '报名ID,关联regist_t.regist_id',
  `exam_room_id` int(11) DEFAULT '0' COMMENT '考场id 关联exam_root_t.exam_room_id',
  `examinee_date` date DEFAULT NULL COMMENT '考试日期 年月日',
  `seat_location` int(11) DEFAULT NULL COMMENT '座位号',
  `chinese_score` double(6,2) DEFAULT NULL COMMENT '语文成绩',
  `math_score` double(6,2) DEFAULT NULL COMMENT '数学成绩',
  `english_score` double(6,2) DEFAULT NULL COMMENT '英语成绩',
  `total_score` double(6,2) DEFAULT NULL COMMENT '总分',
  `accept_status` int(11) DEFAULT NULL COMMENT '录取状态，1、未录取，2、已录取',
  `accept_major_id` int(11) DEFAULT NULL COMMENT '录取专业id,关联major_t.major_id',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `input_name` varchar(255) DEFAULT NULL COMMENT '添加人',
  `input_date` datetime DEFAULT NULL COMMENT '添加时间',
  `update_name` varchar(255) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `delsign` int(11) DEFAULT '0' COMMENT '删除标记，0、未删除，1、已删除',
  PRIMARY KEY (`examinee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20025151635661 DEFAULT CHARSET=utf8 COMMENT='考生表';

#
# Data for table "examinee_t"
#

INSERT INTO `examinee_t` VALUES (20025151635660,1,1205,'2021-03-25',12,0.00,0.00,0.00,0.00,1,0,NULL,'21038119981102591X','2021-03-25 15:16:35',NULL,NULL,0);

#
# Structure for table "major_t"
#

DROP TABLE IF EXISTS `major_t`;
CREATE TABLE `major_t` (
  `major_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '专业id',
  `major_name` varchar(255) DEFAULT NULL COMMENT '专业名称',
  `regist_number` int(11) DEFAULT NULL COMMENT '招生人数',
  `tuition` int(11) DEFAULT NULL COMMENT '学费',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `input_name` varchar(255) DEFAULT NULL COMMENT '添加人',
  `input_date` datetime DEFAULT NULL COMMENT '添加时间',
  `update_name` varchar(255) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `delsign` int(11) DEFAULT '0' COMMENT '删除标记，0、未删除，1、已删除',
  PRIMARY KEY (`major_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='报考专业表';

#
# Data for table "major_t"
#

INSERT INTO `major_t` VALUES (1,'软件技术',600,9800,NULL,NULL,NULL,NULL,NULL,0),(2,'计算机应用技术',500,9800,NULL,NULL,NULL,NULL,NULL,0),(3,'电子商务',400,9800,NULL,NULL,NULL,NULL,NULL,0),(4,'大数据应用技术',300,9800,NULL,NULL,NULL,NULL,NULL,0),(5,'数字媒体',200,9800,NULL,NULL,NULL,NULL,NULL,0);

#
# Structure for table "news_t"
#

DROP TABLE IF EXISTS `news_t`;
CREATE TABLE `news_t` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识主键',
  `title` varchar(255) DEFAULT NULL COMMENT '新闻标题',
  `content` longtext COMMENT '新闻内容',
  `news_type` int(11) DEFAULT NULL COMMENT '新闻类型，1、学院简介，2、最新通知，3、专业简介，4、单招新闻',
  `publish_date` datetime DEFAULT NULL COMMENT '新闻发布时间',
  `news_status` int(11) DEFAULT NULL COMMENT '新闻发布状态，1、未发布，2、已发布',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `input_name` varchar(255) DEFAULT NULL COMMENT '添加人',
  `input_date` datetime DEFAULT NULL COMMENT '添加时间',
  `update_name` varchar(255) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `delsign` int(11) DEFAULT '0' COMMENT '删除标记，0、未删除，1、已删除',
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='新闻管理表';

#
# Data for table "news_t"
#

INSERT INTO `news_t` VALUES (1,'学院简介','这是学院简介这是学院简介这是学院简介这是学院简介这是学院简介1111',1,'2021-03-17 15:15:00',2,'','root','2021-03-17 15:15:00','root','2021-03-17 15:15:00',0),(2,'最新通知','这是最新通知这是最新通知这是最新通知这是最新通知这是最新通知这是最新通知这是最新通知',2,'2021-03-17 15:15:00',2,'','root','2021-03-17 15:15:00','root','2021-03-17 15:15:00',0),(3,'软件专业简介','软件专业简介软件专业简介软件专业简介软件专业简介软件专业简介软件专业简介',3,'2021-03-17 15:15:00',2,'','root','2021-03-17 15:15:00','root','2021-03-17 15:15:00',0),(4,'计算机技术专业简介','计算机技术专业简介计算机技术专业简介计算机技术专业简介计算机技术专业简介',3,'2021-03-17 15:15:00',2,'','root','2021-03-17 15:15:00','root','2021-03-17 15:15:00',0),(5,'单招新闻第一期','单招新闻第一期',4,'2021-03-17 15:15:00',2,'','root','2021-03-17 15:15:00','root','2021-03-17 15:15:00',0),(6,'单招新闻第二期','单招新闻第二期单招新闻第二期单招新闻第二期',4,'2021-03-17 15:15:00',2,'','root','2021-03-17 15:15:00','root','2021-03-17 15:15:00',0),(7,'单招新闻第二期','单招新闻第二期单招新闻第二期单招新闻第二期',4,'2021-03-17 15:15:00',2,'','root','2021-03-17 15:15:00','root','2021-03-17 15:15:00',0),(8,'单招新闻第二期','单招新闻第二期单招新闻第二期单招新闻第二期',4,'2021-03-17 15:15:00',2,'','root','2021-03-17 15:15:00','root','2021-03-17 15:15:00',0),(9,'单招新闻第二期','单招新闻第二期单招新闻第二期单招新闻第二期',4,'2021-03-17 15:15:00',2,'','root','2021-03-17 15:15:00','root','2021-03-17 15:15:00',0),(10,'单招新闻第二期','单招新闻第二期单招新闻第二期单招新闻第二期',4,'2021-03-17 15:15:00',2,'','root','2021-03-17 15:15:00','root','2021-03-17 15:15:00',0),(11,'单招新闻第二期','单招新闻第二期单招新闻第二期单招新闻第二期',4,'2021-03-17 15:15:00',2,'','root','2021-03-17 15:15:00','root','2021-03-17 15:15:00',0),(12,'单招新闻第二期','单招新闻第二期单招新闻第二期单招新闻第二期',4,'2021-03-17 15:15:00',2,'','root','2021-03-17 15:15:00','root','2021-03-17 15:15:00',0),(13,'单招新闻第二期','单招新闻第二期单招新闻第二期单招新闻第二期',4,'2021-03-17 15:15:00',2,'','root','2021-03-17 15:15:00','root','2021-03-17 15:15:00',0),(14,'测试','12',2,'2021-03-25 11:39:14',2,NULL,'root','2021-03-25 11:38:57','root','2021-03-25 11:39:14',1);

#
# Structure for table "pay_t"
#

DROP TABLE IF EXISTS `pay_t`;
CREATE TABLE `pay_t` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `regist_id` int(11) DEFAULT NULL COMMENT '报名登记id,关联报名登记表dz_regist_t.id',
  `pay_type` int(11) DEFAULT NULL COMMENT '缴费方式,1、微信支付，2、支付宝支付，3、线下支付',
  `price` double(10,2) DEFAULT NULL COMMENT '金额',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `input_name` varchar(255) DEFAULT NULL COMMENT '添加人',
  `input_date` datetime DEFAULT NULL COMMENT '添加时间',
  `update_name` varchar(255) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `delsign` int(11) DEFAULT '0' COMMENT '删除标记，0、未删除，1、已删除',
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='缴费表';

#
# Data for table "pay_t"
#

INSERT INTO `pay_t` VALUES (1,1,1,120.00,NULL,'21038119981102591X','2021-03-25 15:16:35',NULL,NULL,0);

#
# Structure for table "regist_t"
#

DROP TABLE IF EXISTS `regist_t`;
CREATE TABLE `regist_t` (
  `regist_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '报名编号',
  `examinee_number` bigint(20) DEFAULT NULL COMMENT '考生号',
  `identity_number` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `password` varchar(20) DEFAULT NULL COMMENT '密码',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `sex` int(11) DEFAULT NULL COMMENT '性别 1.男 2.女',
  `political_outlook` int(11) DEFAULT NULL COMMENT '政治面貌 1.预备党员 2共青.团员 3.群众',
  `high_school` varchar(50) DEFAULT NULL COMMENT '毕业高中',
  `address` varchar(125) DEFAULT NULL COMMENT '录取通知书邮寄地址',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `parent_phone` varchar(20) DEFAULT NULL COMMENT '家长电话',
  `headmaster_phone` varchar(20) DEFAULT NULL COMMENT '班主任电话',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮件地址',
  `first_choice` int(11) DEFAULT NULL COMMENT '报考志愿1,关联dz_zy专业设置表id',
  `second_choice` int(11) DEFAULT NULL COMMENT '报考志愿2,关联dz_zy专业设置表id',
  `third_choice` int(11) DEFAULT NULL COMMENT '报考志愿3,关联dz_zy专业设置表id',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `input_name` varchar(255) DEFAULT NULL COMMENT '添加人',
  `input_date` datetime DEFAULT NULL COMMENT '添加时间',
  `update_name` varchar(255) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `delsign` int(11) DEFAULT '0' COMMENT '删除标记，0、未删除，1、已删除',
  PRIMARY KEY (`regist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='报名登记表';

#
# Data for table "regist_t"
#

INSERT INTO `regist_t` VALUES (1,210325151127111,'21038119981102591X','123456','张三',1,2,'哈皮高中','哈皮地址','15041991111','15041991111','15041991111','452121876@qq.com',1,3,4,NULL,'21038119981102591X','2021-03-25 15:11:27',NULL,NULL,0);

#
# Structure for table "sys_user_t"
#

DROP TABLE IF EXISTS `sys_user_t`;
CREATE TABLE `sys_user_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `login_name` varchar(255) DEFAULT NULL COMMENT '登录名称',
  `login_password` varchar(255) DEFAULT NULL COMMENT '密码',
  `user_name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `input_name` varchar(255) DEFAULT NULL COMMENT '添加人',
  `input_date` datetime DEFAULT NULL COMMENT '添加时间',
  `update_name` varchar(255) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `delsign` int(11) DEFAULT '0' COMMENT '删除标记，0、未删除，1、已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

#
# Data for table "sys_user_t"
#

INSERT INTO `sys_user_t` VALUES (1,'root','123456','管理员','123456',NULL,NULL,NULL,NULL,NULL,0);
