/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-06-17 13:53:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add test', '7', 'add_test');
INSERT INTO `auth_permission` VALUES ('26', 'Can change test', '7', 'change_test');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete test', '7', 'delete_test');
INSERT INTO `auth_permission` VALUES ('28', 'Can view test', '7', 'view_test');
INSERT INTO `auth_permission` VALUES ('29', 'Can add db', '8', 'add_db');
INSERT INTO `auth_permission` VALUES ('30', 'Can change db', '8', 'change_db');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete db', '8', 'delete_db');
INSERT INTO `auth_permission` VALUES ('32', 'Can view db', '8', 'view_db');
INSERT INTO `auth_permission` VALUES ('33', 'Can add phonedb', '9', 'add_phonedb');
INSERT INTO `auth_permission` VALUES ('34', 'Can change phonedb', '9', 'change_phonedb');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete phonedb', '9', 'delete_phonedb');
INSERT INTO `auth_permission` VALUES ('36', 'Can view phonedb', '9', 'view_phonedb');
INSERT INTO `auth_permission` VALUES ('37', 'Can add weibodb', '10', 'add_weibodb');
INSERT INTO `auth_permission` VALUES ('38', 'Can change weibodb', '10', 'change_weibodb');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete weibodb', '10', 'delete_weibodb');
INSERT INTO `auth_permission` VALUES ('40', 'Can view weibodb', '10', 'view_weibodb');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('8', 'doubanapp', 'db');
INSERT INTO `django_content_type` VALUES ('9', 'doubanapp', 'phonedb');
INSERT INTO `django_content_type` VALUES ('10', 'doubanapp', 'weibodb');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'TestModel', 'test');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-03-19 14:18:03.410154');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2019-03-19 14:18:04.014535');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2019-03-19 14:18:04.130228');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2019-03-19 14:18:04.151221');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2019-03-19 14:18:04.165132');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2019-03-19 14:18:04.245916');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2019-03-19 14:18:04.279827');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2019-03-19 14:18:04.340665');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2019-03-19 14:18:04.354627');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2019-03-19 14:18:04.403495');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2019-03-19 14:18:04.410476');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2019-03-19 14:18:04.420450');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2019-03-19 14:18:04.463335');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2019-03-19 14:18:04.508219');
INSERT INTO `django_migrations` VALUES ('15', 'sessions', '0001_initial', '2019-03-19 14:18:04.545117');
INSERT INTO `django_migrations` VALUES ('16', 'TestModel', '0001_initial', '2019-03-19 14:18:36.088786');
INSERT INTO `django_migrations` VALUES ('17', 'doubanapp', '0001_initial', '2019-04-01 02:56:11.684714');
INSERT INTO `django_migrations` VALUES ('18', 'doubanapp', '0002_phonedb', '2019-04-09 07:49:46.800994');
INSERT INTO `django_migrations` VALUES ('19', 'doubanapp', '0003_auto_20190409_1629', '2019-04-09 08:30:02.933558');
INSERT INTO `django_migrations` VALUES ('20', 'doubanapp', '0004_db_director', '2019-04-22 07:41:25.790762');
INSERT INTO `django_migrations` VALUES ('21', 'doubanapp', '0005_auto_20190422_1554', '2019-04-22 07:54:51.076324');
INSERT INTO `django_migrations` VALUES ('22', 'doubanapp', '0006_auto_20190422_1607', '2019-04-22 09:56:54.238015');
INSERT INTO `django_migrations` VALUES ('23', 'doubanapp', '0007_auto_20190422_1757', '2019-04-22 09:57:10.189361');
INSERT INTO `django_migrations` VALUES ('24', 'doubanapp', '0008_phonedb_price', '2019-04-24 12:24:59.843078');
INSERT INTO `django_migrations` VALUES ('25', 'doubanapp', '0009_weibodb', '2019-06-16 10:42:28.630225');
INSERT INTO `django_migrations` VALUES ('26', 'doubanapp', '0010_remove_weibodb_ranktop', '2019-06-16 10:43:55.494262');
INSERT INTO `django_migrations` VALUES ('27', 'doubanapp', '0011_auto_20190616_1844', '2019-06-16 10:44:33.561020');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for doubanapp_db
-- ----------------------------
DROP TABLE IF EXISTS `doubanapp_db`;
CREATE TABLE `doubanapp_db` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `detail1` varchar(200) NOT NULL,
  `detail2` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doubanapp_db
-- ----------------------------
INSERT INTO `doubanapp_db` VALUES ('1', '肖申克的救赎', '\n                            导演: 弗兰克·德拉邦特 Frank Darabont   主演: 蒂姆·罗宾斯 Tim Robbins /...', '\n                            1994 / 美国 / 犯罪 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('2', '霸王别姬', '\n                            导演: 陈凯歌 Kaige Chen   主演: 张国荣 Leslie Cheung / 张丰毅 Fengyi Zha...', '\n                            1993 / 中国大陆 香港 / 剧情 爱情 同性\n                        ');
INSERT INTO `doubanapp_db` VALUES ('3', '这个杀手不太冷', '\n                            导演: 吕克·贝松 Luc Besson   主演: 让·雷诺 Jean Reno / 娜塔莉·波特曼 ...', '\n                            1994 / 法国 / 剧情 动作 犯罪\n                        ');
INSERT INTO `doubanapp_db` VALUES ('4', '阿甘正传', '\n                            导演: 罗伯特·泽米吉斯 Robert Zemeckis   主演: 汤姆·汉克斯 Tom Hanks / ...', '\n                            1994 / 美国 / 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('5', '美丽人生', '\n                            导演: 罗伯托·贝尼尼 Roberto Benigni   主演: 罗伯托·贝尼尼 Roberto Beni...', '\n                            1997 / 意大利 / 剧情 喜剧 爱情 战争\n                        ');
INSERT INTO `doubanapp_db` VALUES ('6', '泰坦尼克号', '\n                            导演: 詹姆斯·卡梅隆 James Cameron   主演: 莱昂纳多·迪卡普里奥 Leonardo...', '\n                            1997 / 美国 / 剧情 爱情 灾难\n                        ');
INSERT INTO `doubanapp_db` VALUES ('7', '千与千寻', '\n                            导演: 宫崎骏 Hayao Miyazaki   主演: 柊瑠美 Rumi Hîragi / 入野自由 Miy...', '\n                            2001 / 日本 / 剧情 动画 奇幻\n                        ');
INSERT INTO `doubanapp_db` VALUES ('8', '辛德勒的名单', '\n                            导演: 史蒂文·斯皮尔伯格 Steven Spielberg   主演: 连姆·尼森 Liam Neeson...', '\n                            1993 / 美国 / 剧情 历史 战争\n                        ');
INSERT INTO `doubanapp_db` VALUES ('9', '盗梦空间', '\n                            导演: 克里斯托弗·诺兰 Christopher Nolan   主演: 莱昂纳多·迪卡普里奥 Le...', '\n                            2010 / 美国 英国 / 剧情 科幻 悬疑 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('10', '忠犬八公的故事', '\n                            导演: 莱塞·霍尔斯道姆 Lasse Hallström   主演: 理查·基尔 Richard Ger...', '\n                            2009 / 美国 英国 / 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('11', '机器人总动员', '\n                            导演: 安德鲁·斯坦顿 Andrew Stanton   主演: 本·贝尔特 Ben Burtt / 艾丽...', '\n                            2008 / 美国 / 爱情 科幻 动画 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('12', '三傻大闹宝莱坞', '\n                            导演: 拉库马·希拉尼 Rajkumar Hirani   主演: 阿米尔·汗 Aamir Khan / 卡...', '\n                            2009 / 印度 / 剧情 喜剧 爱情 歌舞\n                        ');
INSERT INTO `doubanapp_db` VALUES ('13', '海上钢琴师', '\n                            导演: 朱塞佩·托纳多雷 Giuseppe Tornatore   主演: 蒂姆·罗斯 Tim Roth / ...', '\n                            1998 / 意大利 / 剧情 音乐\n                        ');
INSERT INTO `doubanapp_db` VALUES ('14', '放牛班的春天', '\n                            导演: 克里斯托夫·巴拉蒂 Christophe Barratier   主演: 热拉尔·朱尼奥 Gé...', '\n                            2004 / 法国 瑞士 德国 / 剧情 音乐\n                        ');
INSERT INTO `doubanapp_db` VALUES ('15', '楚门的世界', '\n                            导演: 彼得·威尔 Peter Weir   主演: 金·凯瑞 Jim Carrey / 劳拉·琳妮 Lau...', '\n                            1998 / 美国 / 剧情 科幻\n                        ');
INSERT INTO `doubanapp_db` VALUES ('16', '大话西游之大圣娶亲', '\n                            导演: 刘镇伟 Jeffrey Lau   主演: 周星驰 Stephen Chow / 吴孟达 Man Tat Ng...', '\n                            1995 / 香港 中国大陆 / 喜剧 爱情 奇幻 古装\n                        ');
INSERT INTO `doubanapp_db` VALUES ('17', '星际穿越', '\n                            导演: 克里斯托弗·诺兰 Christopher Nolan   主演: 马修·麦康纳 Matthew Mc...', '\n                            2014 / 美国 英国 加拿大 冰岛 / 剧情 科幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('18', '龙猫', '\n                            导演: 宫崎骏 Hayao Miyazaki   主演: 日高法子 Noriko Hidaka / 坂本千夏 Ch...', '\n                            1988 / 日本 / 动画 奇幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('19', '教父', '\n                            导演: 弗朗西斯·福特·科波拉 Francis Ford Coppola   主演: 马龙·白兰度 M...', '\n                            1972 / 美国 / 剧情 犯罪\n                        ');
INSERT INTO `doubanapp_db` VALUES ('20', '熔炉', '\n                            导演: 黄东赫 Dong-hyuk Hwang   主演: 孔侑 Yoo Gong / 郑有美 Yu-mi Jeong ...', '\n                            2011 / 韩国 / 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('21', '无间道', '\n                            导演: 刘伟强 / 麦兆辉   主演: 刘德华 / 梁朝伟 / 黄秋生', '\n                            2002 / 香港 / 剧情 犯罪 悬疑\n                        ');
INSERT INTO `doubanapp_db` VALUES ('22', '疯狂动物城', '\n                            导演: 拜伦·霍华德 Byron Howard / 瑞奇·摩尔 Rich Moore   主演: 金妮弗·...', '\n                            2016 / 美国 / 喜剧 动画 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('23', '当幸福来敲门', '\n                            导演: 加布里尔·穆奇诺 Gabriele Muccino   主演: 威尔·史密斯 Will Smith ...', '\n                            2006 / 美国 / 剧情 传记 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('24', '怦然心动', '\n                            导演: 罗伯·莱纳 Rob Reiner   主演: 玛德琳·卡罗尔 Madeline Carroll / 卡...', '\n                            2010 / 美国 / 剧情 喜剧 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('25', '触不可及', '\n                            导演: 奥利维·那卡什 Olivier Nakache / 艾力克·托兰达 Eric Toledano   主...', '\n                            2011 / 法国 / 剧情 喜剧\n                        ');
INSERT INTO `doubanapp_db` VALUES ('26', '蝙蝠侠：黑暗骑士', '\n                            导演: 克里斯托弗·诺兰 Christopher Nolan   主演: 克里斯蒂安·贝尔 Christ...', '\n                            2008 / 美国 英国 / 剧情 动作 科幻 犯罪 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('27', '乱世佳人', '\n                            导演: 维克多·弗莱明 Victor Fleming / 乔治·库克 George Cukor   主演: 费...', '\n                            1939 / 美国 / 剧情 历史 爱情 战争\n                        ');
INSERT INTO `doubanapp_db` VALUES ('28', '活着', '\n                            导演: 张艺谋 Yimou Zhang   主演: 葛优 You Ge / 巩俐 Li Gong / 姜武 Wu Jiang', '\n                            1994 / 中国大陆 香港 / 剧情 历史 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('29', '控方证人', '\n                            导演: 比利·怀尔德 Billy Wilder   主演: 泰隆·鲍华 Tyrone Power / 玛琳·...', '\n                            1957 / 美国 / 剧情 犯罪 悬疑\n                        ');
INSERT INTO `doubanapp_db` VALUES ('30', '少年派的奇幻漂流', '\n                            导演: 李安 Ang Lee   主演: 苏拉·沙玛 Suraj Sharma / 伊尔凡·可汗 Irrfan...', '\n                            2012 / 美国 台湾 英国 加拿大 / 剧情 奇幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('31', '指环王3：王者无敌', '\n                            导演: 彼得·杰克逊 Peter Jackson   主演: 维果·莫腾森 Viggo Mortensen / ...', '\n                            2003 / 美国 新西兰 / 剧情 动作 奇幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('32', '天堂电影院', '\n                            导演: 朱塞佩·托纳多雷 Giuseppe Tornatore   主演: 安东内拉·阿蒂利 Anton...', '\n                            1988 / 意大利 法国 / 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('33', '鬼子来了', '\n                            导演: 姜文 Wen Jiang   主演: 姜文 Wen Jiang / 香川照之 Teruyuki Kagawa /...', '\n                            2000 / 中国大陆 / 剧情 历史 战争\n                        ');
INSERT INTO `doubanapp_db` VALUES ('34', '天空之城', '\n                            导演: 宫崎骏 Hayao Miyazaki   主演: 田中真弓 Mayumi Tanaka / 横泽启子 Ke...', '\n                            1986 / 日本 / 动画 奇幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('35', '十二怒汉', '\n                            导演: Sidney Lumet   主演: 亨利·方达 Henry Fonda / 马丁·鲍尔萨姆 Marti...', '\n                            1957 / 美国 / 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('36', '摔跤吧！爸爸', '\n                            导演: 涅提·蒂瓦里 Nitesh Tiwari   主演: 阿米尔·汗 Aamir Khan / 法缇玛...', '\n                            2016 / 印度 / 剧情 传记 运动 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('37', '飞屋环游记', '\n                            导演: 彼特·道格特 Pete Docter / 鲍勃·彼德森 Bob Peterson   主演: 爱德...', '\n                            2009 / 美国 / 剧情 喜剧 动画 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('38', '大话西游之月光宝盒', '\n                            导演: 刘镇伟 Jeffrey Lau   主演: 周星驰 Stephen Chow / 吴孟达 Man Tat Ng...', '\n                            1995 / 香港 中国大陆 / 喜剧 爱情 奇幻 古装\n                        ');
INSERT INTO `doubanapp_db` VALUES ('39', '搏击俱乐部', '\n                            导演: 大卫·芬奇 David Fincher   主演: 爱德华·诺顿 Edward Norton / 布拉...', '\n                            1999 / 美国 德国 / 剧情 动作 悬疑 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('40', '哈尔的移动城堡', '\n                            导演: 宫崎骏 Hayao Miyazaki   主演: 倍赏千惠子 Chieko Baishô / 木村拓...', '\n                            2004 / 日本 / 动画 奇幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('41', '罗马假日', '\n                            导演: 威廉·惠勒 William Wyler   主演: 奥黛丽·赫本 Audrey Hepburn / 格...', '\n                            1953 / 美国 / 喜剧 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('42', '闻香识女人', '\n                            导演: 马丁·布莱斯 Martin Brest   主演: 阿尔·帕西诺 Al Pacino / 克里斯...', '\n                            1992 / 美国 / 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('43', '末代皇帝', '\n                            导演: 贝纳尔多·贝托鲁奇 Bernardo Bertolucci   主演: 尊龙 John Lone / 陈...', '\n                            1987 / 英国 意大利 中国大陆 法国 / 剧情 传记 历史\n                        ');
INSERT INTO `doubanapp_db` VALUES ('44', '辩护人', '\n                            导演: 杨宇硕 Woo-seok Yang   主演: 宋康昊 Kang-ho Song / 吴达洙 Dal-su O...', '\n                            2013 / 韩国 / 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('45', '窃听风暴', '\n                            导演: 弗洛里安·亨克尔·冯·多纳斯马尔克 Florian Henckel von Donnersmarck  &n...', '\n                            2006 / 德国 / 剧情 悬疑\n                        ');
INSERT INTO `doubanapp_db` VALUES ('46', '寻梦环游记', '\n                            导演: 李·昂克里奇 Lee Unkrich / 阿德里安·莫利纳 Adrian Molina   主演: ...', '\n                            2017 / 美国 / 喜剧 动画 奇幻 音乐\n                        ');
INSERT INTO `doubanapp_db` VALUES ('47', '素媛', '\n                            导演: 李濬益 Jun-ik Lee   主演: 薛景求 Kyung-gu Sol / 严志媛 Ji-won Uhm ...', '\n                            2013 / 韩国 / 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('48', '两杆大烟枪', '\n                            导演: Guy Ritchie   主演: Jason Flemyng / Dexter Fletcher / Nick Moran', '\n                            1998 / 英国 / 剧情 喜剧 犯罪\n                        ');
INSERT INTO `doubanapp_db` VALUES ('49', '死亡诗社', '\n                            导演: 彼得·威尔 Peter Weir   主演: 罗宾·威廉姆斯 Robin Williams / 罗伯...', '\n                            1989 / 美国 / 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('50', '飞越疯人院', '\n                            导演: 米洛斯·福尔曼 Miloš Forman   主演: 杰克·尼科尔森 Jack Nichols...', '\n                            1975 / 美国 / 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('51', '指环王2：双塔奇兵', '\n                            导演: 彼得·杰克逊 Peter Jackson   主演: 伊利亚·伍德 Elijah Wood / 西恩...', '\n                            2002 / 美国 新西兰 / 剧情 动作 奇幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('52', '教父2', '\n                            导演: 弗朗西斯·福特·科波拉 Francis Ford Coppola   主演: 阿尔·帕西诺 A...', '\n                            1974 / 美国 / 剧情 犯罪\n                        ');
INSERT INTO `doubanapp_db` VALUES ('53', 'V字仇杀队', '\n                            导演: 詹姆斯·麦克特格 James McTeigue   主演: 娜塔莉·波特曼 Natalie Por...', '\n                            2005 / 美国 英国 德国 / 剧情 动作 科幻 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('54', '指环王1：魔戒再现', '\n                            导演: 彼得·杰克逊 Peter Jackson   主演: 伊利亚·伍德 Elijah Wood / 西恩...', '\n                            2001 / 新西兰 美国 / 剧情 动作 奇幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('55', '狮子王', '\n                            导演: Roger Allers / 罗伯·明可夫 Rob Minkoff   主演: 乔纳森·泰勒·托马...', '\n                            1994 / 美国 / 剧情 动画 冒险 歌舞 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('56', '美丽心灵', '\n                            导演: 朗·霍华德 Ron Howard   主演: 罗素·克劳 Russell Crowe / 艾德·哈...', '\n                            2001 / 美国 / 传记 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('57', '饮食男女', '\n                            导演: 李安 Ang Lee   主演: 郎雄 Sihung Lung / 杨贵媚 Kuei-Mei Yang / 吴...', '\n                            1994 / 台湾 美国 / 剧情 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('58', '海豚湾', '\n                            导演: 路易·西霍尤斯 Louie Psihoyos   主演: Richard O\'Barry / 路易·西霍...', '\n                            2009 / 美国 / 纪录片\n                        ');
INSERT INTO `doubanapp_db` VALUES ('59', '情书', '\n                            导演: 岩井俊二 Shunji Iwai   主演: 中山美穗 Miho Nakayama / 丰川悦司 Ets...', '\n                            1995 / 日本 / 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('60', '钢琴家', '\n                            导演: 罗曼·波兰斯基 Roman Polanski   主演: 艾德里安·布洛迪 Adrien Brod...', '\n                            2002 / 法国 德国 英国 波兰 / 剧情 传记 历史 战争 音乐\n                        ');
INSERT INTO `doubanapp_db` VALUES ('61', '本杰明·巴顿奇事', '\n                            导演: 大卫·芬奇 David Fincher   主演: 凯特·布兰切特 Cate Blanchett / ...', '\n                            2008 / 美国 / 剧情 爱情 奇幻\n                        ');
INSERT INTO `doubanapp_db` VALUES ('62', '看不见的客人', '\n                            导演: 奥里奥尔·保罗 Oriol Paulo   主演: 马里奥·卡萨斯 Mario Casas / 阿...', '\n                            2016 / 西班牙 / 剧情 犯罪 悬疑 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('63', '美国往事', '\n                            导演: 赛尔乔·莱翁内 Sergio Leone   主演: 罗伯特·德尼罗 Robert De Niro ...', '\n                            1984 / 意大利 美国 / 犯罪 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('64', '黑客帝国', '\n                            导演: 安迪·沃卓斯基 Andy Wachowski / 拉娜·沃卓斯基 Lana Wachowski   主...', '\n                            1999 / 美国 澳大利亚 / 动作 科幻\n                        ');
INSERT INTO `doubanapp_db` VALUES ('65', '哈利·波特与魔法石', '\n                            导演: Chris Columbus   主演: Daniel Radcliffe / Emma Watson / Rupert Grint', '\n                            2001 / 美国 英国 / 奇幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('66', '西西里的美丽传说', '\n                            导演: 朱塞佩·托纳多雷 Giuseppe Tornatore   主演: 莫妮卡·贝鲁奇 Monica ...', '\n                            2000 / 意大利 美国 / 剧情 战争 情色\n                        ');
INSERT INTO `doubanapp_db` VALUES ('67', '大闹天宫', '\n                            导演: 万籁鸣 Laiming Wan / 唐澄 Cheng  Tang   主演: 邱岳峰 Yuefeng Qiu /...', '\n                            1961(中国大陆) / 1964(中国大陆) / 1978(中国大陆) / 2004(中国大陆) / 中国大陆 / 动画 奇幻\n                        ');
INSERT INTO `doubanapp_db` VALUES ('68', '小鞋子', '\n                            导演: 马基德·马基迪 Majid Majidi   主演: 法拉赫阿米尔·哈什米安 Amir Fa...', '\n                            1997 / 伊朗 / 剧情 儿童 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('69', '拯救大兵瑞恩', '\n                            导演: 史蒂文·斯皮尔伯格 Steven Spielberg   主演: 汤姆·汉克斯 Tom Hanks...', '\n                            1998 / 美国 / 剧情 历史 战争\n                        ');
INSERT INTO `doubanapp_db` VALUES ('70', '让子弹飞', '\n                            导演: 姜文 Wen Jiang   主演: 姜文 Wen Jiang / 葛优 You Ge / 周润发 Yun-F...', '\n                            2010 / 中国大陆 香港 / 剧情 喜剧 动作 西部\n                        ');
INSERT INTO `doubanapp_db` VALUES ('71', '致命魔术', '\n                            导演: 克里斯托弗·诺兰 Christopher Nolan   主演: 休·杰克曼 Hugh Jackman...', '\n                            2006 / 美国 英国 / 剧情 悬疑 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('72', '七宗罪', '\n                            导演: 大卫·芬奇 David Fincher   主演: 摩根·弗里曼 Morgan Freeman / 布...', '\n                            1995 / 美国 / 剧情 犯罪 悬疑 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('73', '音乐之声', '\n                            导演: 罗伯特·怀斯 Robert Wise   主演: 朱莉·安德鲁斯 Julie Andrews / 克...', '\n                            1965 / 美国 / 剧情 传记 爱情 歌舞\n                        ');
INSERT INTO `doubanapp_db` VALUES ('74', '被嫌弃的松子的一生', '\n                            导演: 中岛哲也 Tetsuya Nakashima   主演: 中谷美纪 Miki Nakatani / 瑛太 E...', '\n                            2006 / 日本 / 剧情 歌舞\n                        ');
INSERT INTO `doubanapp_db` VALUES ('75', '低俗小说', '\n                            导演: 昆汀·塔伦蒂诺 Quentin Tarantino   主演: 约翰·特拉沃尔塔 John Tra...', '\n                            1994 / 美国 / 剧情 喜剧 犯罪\n                        ');
INSERT INTO `doubanapp_db` VALUES ('76', '猫鼠游戏', '\n                            导演: 史蒂文·斯皮尔伯格 Steven Spielberg   主演: 莱昂纳多·迪卡普里奥 L...', '\n                            2002 / 美国 加拿大 / 传记 犯罪 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('77', '沉默的羔羊', '\n                            导演: 乔纳森·戴米 Jonathan Demme   主演: 朱迪·福斯特 Jodie Foster / 安...', '\n                            1991 / 美国 / 剧情 犯罪 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('78', '天使爱美丽', '\n                            导演: 让-皮埃尔·热内 Jean-Pierre Jeunet   主演: 奥黛丽·塔图 Audrey Tau...', '\n                            2001 / 法国 德国 / 喜剧 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('79', '勇敢的心', '\n                            导演: 梅尔·吉布森 Mel Gibson   主演: 梅尔·吉布森 Mel Gibson / 苏菲·玛...', '\n                            1995 / 美国 / 动作 传记 剧情 历史 战争\n                        ');
INSERT INTO `doubanapp_db` VALUES ('80', '蝴蝶效应', '\n                            导演: 埃里克·布雷斯 Eric Bress / J·麦基·格鲁伯 J. Mackye Gruber   主...', '\n                            2004 / 美国 加拿大 / 剧情 悬疑 科幻 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('81', '春光乍泄', '\n                            导演: 王家卫 Kar Wai Wong   主演: 张国荣 Leslie Cheung / 梁朝伟 Tony Leu...', '\n                            1997 / 香港 日本 韩国 / 剧情 爱情 同性\n                        ');
INSERT INTO `doubanapp_db` VALUES ('82', '剪刀手爱德华', '\n                            导演: 蒂姆·波顿 Tim Burton   主演: 约翰尼·德普 Johnny Depp / 薇诺娜·...', '\n                            1990 / 美国 / 剧情 奇幻 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('83', '心灵捕手', '\n                            导演: 格斯·范·桑特 Gus Van Sant   主演: 马特·达蒙 Matt Damon / 罗宾·...', '\n                            1997 / 美国 / 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('84', '穿条纹睡衣的男孩', '\n                            导演: 马克·赫尔曼 Mark Herman   主演: 阿萨·巴特菲尔德 Asa Butterfield ...', '\n                            2008 / 英国 美国 / 剧情 战争\n                        ');
INSERT INTO `doubanapp_db` VALUES ('85', '禁闭岛', '\n                            导演: Martin Scorsese   主演: 莱昂纳多·迪卡普里奥 Leonardo DiCaprio / ...', '\n                            2010 / 美国 / 剧情 悬疑 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('86', '布达佩斯大饭店', '\n                            导演: 韦斯·安德森 Wes Anderson   主演: 拉尔夫·费因斯 Ralph Fiennes / ...', '\n                            2014 / 美国 德国 英国 / 剧情 喜剧 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('87', '入殓师', '\n                            导演: 泷田洋二郎 Yôjirô Takita   主演: 本木雅弘 Masahiro Motoki / ...', '\n                            2008 / 日本 / 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('88', '阿凡达', '\n                            导演: 詹姆斯·卡梅隆 James Cameron   主演: 萨姆·沃辛顿 Sam Worthington ...', '\n                            2009 / 美国 英国 / 动作 战争 科幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('89', '幽灵公主', '\n                            导演: 宫崎骏 Hayao Miyazaki   主演: 松田洋治 Yôji Matsuda / 石田百合...', '\n                            1997 / 日本 / 动画 奇幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('90', '阳光灿烂的日子', '\n                            导演: 姜文 Wen Jiang   主演: 夏雨 Yu Xia / 宁静 Jing Ning / 陶虹 Hong Tao', '\n                            1994 / 中国大陆 香港 / 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('91', '致命ID', '\n                            导演: James Mangold   主演: John Cusack / Ray Liotta / Amanda Peet', '\n                            2003 / 美国 / 剧情 悬疑 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('92', '加勒比海盗', '\n                            导演: 戈尔·维宾斯基 Gore Verbinski   主演: 约翰尼·德普 Johnny Depp / ...', '\n                            2003 / 美国 / 动作 冒险 奇幻\n                        ');
INSERT INTO `doubanapp_db` VALUES ('93', '第六感', '\n                            导演: M·奈特·沙马兰 M. Night Shyamalan   主演: 布鲁斯·威利斯 Bruce Wi...', '\n                            1999 / 美国 / 剧情 悬疑 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('94', '摩登时代', '\n                            导演: 查理·卓别林 Charles Chaplin   主演: 查理·卓别林 Charles Chaplin ...', '\n                            1936 / 美国 / 剧情 喜剧 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('95', '断背山', '\n                            导演: 李安 Ang Lee   主演: 希斯·莱杰 Heath Ledger / 杰克·吉伦哈尔 Jake...', '\n                            2005 / 美国 加拿大 / 剧情 爱情 同性 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('96', '重庆森林', '\n                            导演: 王家卫 Kar Wai Wong   主演: 林青霞 Brigitte Lin / 金城武 Takeshi K...', '\n                            1994 / 香港 / 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('97', '狩猎', '\n                            导演: 托马斯·温特伯格 Thomas Vinterberg   主演: 麦斯·米科尔森 Mads Mik...', '\n                            2012 / 丹麦 瑞典 / 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('98', '玛丽和马克思', '\n                            导演: 亚当·艾略特 Adam Elliot   主演: 托妮·科莱特 Toni Collette / 菲利...', '\n                            2009 / 澳大利亚 / 剧情 喜剧 动画\n                        ');
INSERT INTO `doubanapp_db` VALUES ('99', '喜剧之王', '\n                            导演: 周星驰 Stephen Chow / 李力持 Lik-Chi Lee   主演: 周星驰 Stephen Ch...', '\n                            1999 / 香港 / 喜剧 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('100', '告白', '\n                            导演: 中岛哲也 Tetsuya Nakashima   主演: 松隆子 Takako Matsu / 冈田将生 ...', '\n                            2010 / 日本 / 剧情 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('101', '消失的爱人', '\n                            导演: 大卫·芬奇 David Fincher   主演: 本·阿弗莱克 Ben Affleck / 罗莎蒙...', '\n                            2014 / 美国 / 剧情 犯罪 悬疑 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('102', '大鱼', '\n                            导演: 蒂姆·波顿 Tim Burton   主演: 伊万·麦克格雷格 Ewan McGregor / 阿...', '\n                            2003 / 美国 / 剧情 家庭 奇幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('103', '一一', '\n                            导演: 杨德昌 Edward Yang   主演: 吴念真 / 李凯莉 Kelly Lee / 金燕玲 Elai...', '\n                            2000 / 台湾 日本 / 剧情 爱情 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('104', '阳光姐妹淘', '\n                            导演: 姜炯哲 Hyeong-Cheol Kang   主演: 沈恩京 Eun-kyung Shim / 闵孝琳 Hy...', '\n                            2011 / 韩国 / 剧情 喜剧\n                        ');
INSERT INTO `doubanapp_db` VALUES ('105', '射雕英雄传之东成西就', '\n                            导演: 刘镇伟 Jeffrey Lau   主演: 梁朝伟 Tony Leung Chiu Wai / 林青霞 Bri...', '\n                            1993 / 香港 / 喜剧 奇幻 武侠 古装\n                        ');
INSERT INTO `doubanapp_db` VALUES ('106', '爱在黎明破晓前', '\n                            导演: 理查德·林克莱特 Richard Linklater   主演: 伊桑·霍克 Ethan Hawke ...', '\n                            1995 / 美国 奥地利 瑞士 / 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('107', '小森林 夏秋篇', '\n                            导演: 森淳一 Junichi Mori   主演: 桥本爱 Ai Hashimoto / 三浦贵大 Takahir...', '\n                            2014 / 日本 / 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('108', '甜蜜蜜', '\n                            导演: 陈可辛 Peter Chan   主演: 黎明 Leon Lai / 张曼玉 Maggie Cheung / ...', '\n                            1996 / 香港 / 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('109', '请以你的名字呼唤我', '\n                            导演: 卢卡·瓜达尼诺 Luca Guadagnino   主演: 艾米·汉莫 Armie Hammer / ...', '\n                            2017 / 意大利 法国 巴西 美国 荷兰 德国 / 剧情 爱情 同性\n                        ');
INSERT INTO `doubanapp_db` VALUES ('110', '侧耳倾听', '\n                            导演: 近藤喜文 Yoshifumi Kondo   主演: 本名阳子 Youko Honna / 小林桂树 K...', '\n                            1995 / 日本 / 剧情 爱情 动画\n                        ');
INSERT INTO `doubanapp_db` VALUES ('111', '驯龙高手', '\n                            导演: 迪恩·德布洛斯 Dean DeBlois / 克里斯·桑德斯 Chris Sanders   主演:...', '\n                            2010 / 美国 / 动画 奇幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('112', '红辣椒', '\n                            导演: 今敏 Satoshi Kon   主演: 林原惠美 Megumi Hayashibara / 江守彻 Toru...', '\n                            2006 / 日本 / 动画 悬疑 科幻 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('113', '倩女幽魂', '\n                            导演: 程小东 Siu-Tung Ching   主演: 张国荣 Leslie Cheung / 王祖贤 Joey W...', '\n                            1987 / 香港 / 爱情 奇幻 武侠 古装\n                        ');
INSERT INTO `doubanapp_db` VALUES ('114', '恐怖直播', '\n                            导演: 金秉祐 Byeong-woo Kim   主演: 河正宇 Jung-woo Ha / 李璟荣 Kyeong-y...', '\n                            2013 / 韩国 / 剧情 犯罪 悬疑\n                        ');
INSERT INTO `doubanapp_db` VALUES ('115', '风之谷', '\n                            导演: 宫崎骏 Hayao Miyazaki   主演: 岛本须美 Sumi Shimamoto / 松田洋治 Y...', '\n                            1984 / 日本 / 动画 奇幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('116', '超脱', '\n                            导演: 托尼·凯耶 Tony Kaye   主演: 艾德里安·布洛迪 Adrien Brody / 马西...', '\n                            2011 / 美国 / 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('117', '爱在日落黄昏时', '\n                            导演: 理查德·林克莱特 Richard Linklater   主演: 伊桑·霍克 Ethan Hawke ...', '\n                            2004 / 美国 / 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('118', '菊次郎的夏天', '\n                            导演: 北野武 Takeshi Kitano   主演: 北野武 Takeshi Kitano / 关口雄介 Yus...', '\n                            1999 / 日本 / 剧情 喜剧\n                        ');
INSERT INTO `doubanapp_db` VALUES ('119', '上帝之城', '\n                            导演: Kátia Lund / Fernando Meirelles   主演: Alexandre Rodrigues / Lea...', '\n                            2002 / 巴西 法国 / 犯罪 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('120', '小森林 冬春篇', '\n                            导演: 森淳一 Junichi Mori   主演: 桥本爱 Ai Hashimoto / 三浦贵大 Takahir...', '\n                            2015 / 日本 / 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('121', '哈利·波特与死亡圣器(下)', '\n                            导演: 大卫·叶茨 David Yates   主演: 丹尼尔·雷德克里夫 Daniel Radcliffe...', '\n                            2011 / 美国 英国 / 剧情 悬疑 奇幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('122', '幸福终点站', '\n                            导演: 史蒂文·斯皮尔伯格 Steven Spielberg   主演: 汤姆·汉克斯 Tom Hanks...', '\n                            2004 / 美国 / 喜剧 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('123', '杀人回忆', '\n                            导演: 奉俊昊 Joon-ho Bong   主演: 宋康昊 Kang-ho Song / 金相庆 Sang-kyun...', '\n                            2003 / 韩国 / 犯罪 剧情 悬疑 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('124', '7号房的礼物', '\n                            导演: 李焕庆 Hwan-kyeong Lee   主演: 柳承龙 Seung-yong Ryoo / 朴信惠 Shi...', '\n                            2013 / 韩国 / 剧情 喜剧 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('125', '借东西的小人阿莉埃蒂', '\n                            导演: 米林宏昌 Hiromasa Yonebayashi   主演: 志田未来 Mirai Shida / 神木...', '\n                            2010 / 日本 / 动画 奇幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('126', '蝙蝠侠：黑暗骑士崛起', '\n                            导演: 克里斯托弗·诺兰 Christopher Nolan   主演: 克里斯蒂安·贝尔 Christ...', '\n                            2012 / 美国 英国 / 剧情 动作 科幻 犯罪 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('127', '神偷奶爸', '\n                            导演: 皮艾尔·柯芬 Pierre Coffin / 克里斯·雷纳德 Chris Renaud   主演: ...', '\n                            2010 / 美国 法国 / 喜剧 动画 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('128', '萤火之森', '\n                            导演: 大森贵弘 Takahiro Omori   主演: 佐仓绫音 Ayane Sakura / 内山昂辉 K...', '\n                            2011 / 日本 / 剧情 爱情 动画 奇幻\n                        ');
INSERT INTO `doubanapp_db` VALUES ('129', '唐伯虎点秋香', '\n                            导演: 李力持 Lik-Chi Lee   主演: 周星驰 Stephen Chow / 巩俐 Li Gong / 陈...', '\n                            1993 / 香港 / 喜剧 爱情 古装\n                        ');
INSERT INTO `doubanapp_db` VALUES ('130', '超能陆战队', '\n                            导演: 唐·霍尔 Don Hall / 克里斯·威廉姆斯 Chris Williams   主演: 斯科特...', '\n                            2014 / 美国 / 喜剧 动作 科幻 动画 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('131', '何以为家', '\n                            导演: 娜丁·拉巴基 Nadine Labaki   主演: 扎因·拉费阿 Zain al-Rafeea / ...', '\n                            2018 / 黎巴嫩 法国 美国 / 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('132', '怪兽电力公司', '\n                            导演: 彼特·道格特 Pete Docter / 大卫·斯沃曼 David Silverman   主演: 约...', '\n                            2001 / 美国 / 儿童 喜剧 动画 奇幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('133', '无人知晓', '\n                            导演: 是枝裕和 Hirokazu Koreeda   主演: 柳乐优弥 Yûya Yagira / 北浦爱...', '\n                            2004 / 日本 / 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('134', '岁月神偷', '\n                            导演: 罗启锐 Alex Law   主演: 吴君如 Sandra Ng / 任达华 Simon Yam / 钟绍...', '\n                            2010 / 香港 中国大陆 / 剧情 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('135', '电锯惊魂', '\n                            导演: 詹姆斯·温 James Wan   主演: 雷·沃纳尔 Leigh Whannell / 加利·艾...', '\n                            2004 / 美国 / 悬疑 惊悚 恐怖\n                        ');
INSERT INTO `doubanapp_db` VALUES ('136', '七武士', '\n                            导演: 黑泽明 Akira Kurosawa   主演: 三船敏郎 Toshirô Mifune / 志村乔 ...', '\n                            1954 / 日本 / 动作 冒险 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('137', '谍影重重3', '\n                            导演: 保罗·格林格拉斯 Paul Greengrass   主演: 马特·达蒙 Matt Damon / ...', '\n                            2007 / 美国 德国 / 动作 悬疑 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('138', '真爱至上', '\n                            导演: 理查德·柯蒂斯 Richard Curtis   主演: 休·格兰特 Hugh Grant / 柯林...', '\n                            2003 / 英国 美国 法国 / 喜剧 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('139', '疯狂原始人', '\n                            导演: 科克·德·米科 Kirk De Micco / 克里斯·桑德斯 Chris Sanders   主演...', '\n                            2013 / 美国 / 喜剧 动画 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('140', '喜宴', '\n                            导演: 李安 Ang Lee   主演: 赵文瑄 Winston Chao / 郎雄 Sihung Lung / 归亚...', '\n                            1993 / 台湾 美国 / 剧情 喜剧 爱情 同性 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('141', '英雄本色', '\n                            导演: 吴宇森 John Woo   主演: 周润发 Yun-Fat Chow / 狄龙 Lung Ti / 张国...', '\n                            1986 / 香港 / 剧情 动作 犯罪\n                        ');
INSERT INTO `doubanapp_db` VALUES ('142', '东邪西毒', '\n                            导演: 王家卫 Kar Wai Wong   主演: 张国荣 Leslie Cheung / 林青霞 Brigitte...', '\n                            1994 / 香港 台湾 / 剧情 动作 爱情 武侠 古装\n                        ');
INSERT INTO `doubanapp_db` VALUES ('143', '血战钢锯岭', '\n                            导演: 梅尔·吉布森 Mel Gibson   主演: 安德鲁·加菲尔德 Andrew Garfield /...', '\n                            2016 / 美国 澳大利亚 / 剧情 传记 历史 战争\n                        ');
INSERT INTO `doubanapp_db` VALUES ('144', '萤火虫之墓', '\n                            导演: 高畑勋 Isao Takahata   主演: 辰己努 / 白石绫乃 / 志乃原良子', '\n                            1988 / 日本 / 动画 剧情 战争\n                        ');
INSERT INTO `doubanapp_db` VALUES ('145', '贫民窟的百万富翁', '\n                            导演: 丹尼·鲍尔 Danny Boyle / 洛芙琳·坦丹 Loveleen Tandan   主演: 戴夫...', '\n                            2008 / 英国 美国 / 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('146', '黑天鹅', '\n                            导演: 达伦·阿罗诺夫斯基 Darren Aronofsky   主演: 娜塔莉·波特曼 Natalie...', '\n                            2010 / 美国 / 剧情 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('147', '记忆碎片', '\n                            导演: 克里斯托弗·诺兰 Christopher Nolan   主演: 盖·皮尔斯 Guy Pearce /...', '\n                            2000 / 美国 / 犯罪 剧情 悬疑 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('148', '傲慢与偏见', '\n                            导演: 乔·怀特 Joe Wright   主演: 凯拉·奈特莉 Keira Knightley / 马修·...', '\n                            2005 / 法国 英国 美国 / 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('149', '时空恋旅人', '\n                            导演: 理查德·柯蒂斯 Richard Curtis   主演: 多姆纳尔·格里森 Domhnall Gl...', '\n                            2013 / 英国 / 喜剧 爱情 奇幻\n                        ');
INSERT INTO `doubanapp_db` VALUES ('150', '心迷宫', '\n                            导演: 忻钰坤 Yukun Xin   主演: 霍卫民 Weimin Huo / 王笑天 Xiaotian Wang ...', '\n                            2014 / 中国大陆 / 剧情 犯罪 悬疑\n                        ');
INSERT INTO `doubanapp_db` VALUES ('151', '海蒂和爷爷', '\n                            导演: 阿兰·葛斯彭纳 Alain Gsponer   主演: 阿努克·斯特芬 Anuk Steffen /...', '\n                            2015 / 德国 瑞士 南非 / 剧情 冒险 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('152', '纵横四海', '\n                            导演: 吴宇森 John Woo   主演: 周润发 Yun-Fat Chow / 张国荣 Leslie Cheung...', '\n                            1991 / 香港 / 剧情 喜剧 动作 犯罪\n                        ');
INSERT INTO `doubanapp_db` VALUES ('153', '荒蛮故事', '\n                            导演: 达米安·斯兹弗隆 Damián Szifron   主演: 达里奥·葛兰帝内提 Darío...', '\n                            2014 / 阿根廷 西班牙 / 剧情 喜剧 犯罪\n                        ');
INSERT INTO `doubanapp_db` VALUES ('154', '教父3', '\n                            导演: 弗朗西斯·福特·科波拉 Francis Ford Coppola   主演: 阿尔·帕西诺 A...', '\n                            1990 / 美国 / 剧情 犯罪\n                        ');
INSERT INTO `doubanapp_db` VALUES ('155', '雨人', '\n                            导演: 巴瑞·莱文森 Barry Levinson   主演: 达斯汀·霍夫曼 Dustin Hoffman ...', '\n                            1988 / 美国 / 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('156', '达拉斯买家俱乐部', '\n                            导演: 让-马克·瓦雷 Jean-Marc Vallée   主演: 马修·麦康纳 Matthew McCon...', '\n                            2013 / 美国 / 剧情 传记 同性\n                        ');
INSERT INTO `doubanapp_db` VALUES ('157', '完美的世界', '\n                            导演: 克林特·伊斯特伍德 Clint Eastwood   主演: 凯文·科斯特纳 Kevin Cos...', '\n                            1993 / 美国 / 剧情 犯罪\n                        ');
INSERT INTO `doubanapp_db` VALUES ('158', '玩具总动员3', '\n                            导演: 李·昂克里奇 Lee Unkrich   主演: 汤姆·汉克斯 Tom Hanks / 蒂姆·艾...', '\n                            2010 / 美国 / 喜剧 动画 奇幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('159', '花样年华', '\n                            导演: 王家卫 Kar Wai Wong   主演: 梁朝伟 Tony Leung Chiu Wai / 张曼玉 Ma...', '\n                            2000 / 香港 / 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('160', '卢旺达饭店', '\n                            导演: 特瑞·乔治 Terry George   主演: 唐·钱德尔 Don Cheadle / 苏菲·奥...', '\n                            2004 / 英国 南非 意大利 美国 / 剧情 历史 战争\n                        ');
INSERT INTO `doubanapp_db` VALUES ('161', '海边的曼彻斯特', '\n                            导演: 肯尼斯·罗纳根 Kenneth Lonergan   主演: 卡西·阿弗莱克 Casey Affle...', '\n                            2016 / 美国 / 剧情 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('162', '被解救的姜戈', '\n                            导演: 昆汀·塔伦蒂诺 Quentin Tarantino   主演: 杰米·福克斯 Jamie Foxx /...', '\n                            2012 / 美国 / 剧情 动作 西部 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('163', '三块广告牌', '\n                            导演: 马丁·麦克唐纳 Martin McDonagh   主演: 弗兰西斯·麦克多蒙德 France...', '\n                            2017 / 美国 英国 / 剧情 犯罪\n                        ');
INSERT INTO `doubanapp_db` VALUES ('164', '恋恋笔记本', '\n                            导演: 尼克·卡索维茨 Nick Cassavetes   主演: 瑞恩·高斯林 Ryan Gosling /...', '\n                            2004 / 美国 / 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('165', '你看起来好像很好吃', '\n                            导演: 藤森雅也 Masaya Fujimori   主演: 山口胜平 Kappei Yamaguchi / 爱河...', '\n                            2010 / 日本 / 剧情 动画 儿童\n                        ');
INSERT INTO `doubanapp_db` VALUES ('166', '海洋', '\n                            导演: 雅克·贝汉 Jacques Perrin / 雅克·克鲁奥德 Jacques Cluzaud   主演:...', '\n                            2009 / 法国 瑞士 西班牙 美国 阿联酋 / 纪录片\n                        ');
INSERT INTO `doubanapp_db` VALUES ('167', '虎口脱险', '\n                            导演: 杰拉尔·乌里 Gérard Oury   主演: 路易·德·菲耐斯 Louis de Funès...', '\n                            1966 / 法国 英国 / 喜剧 战争\n                        ');
INSERT INTO `doubanapp_db` VALUES ('168', '你的名字。', '\n                            导演: 新海诚 Makoto Shinkai   主演: 神木隆之介 Ryûnosuke Kamiki / 上...', '\n                            2016 / 日本 / 剧情 爱情 动画\n                        ');
INSERT INTO `doubanapp_db` VALUES ('169', '头脑特工队', '\n                            导演: 彼特·道格特 Pete Docter / 罗纳尔多·德尔·卡门 Ronaldo Del Carmen  &nb...', '\n                            2015 / 美国 / 喜剧 动画 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('170', '二十二', '\n                            导演: 郭柯 Ke Guo   主演: ', '\n                            2015 / 中国大陆 / 纪录片\n                        ');
INSERT INTO `doubanapp_db` VALUES ('171', '无敌破坏王', '\n                            导演: 瑞奇·莫尔 Rich Moore   主演: 约翰·C·赖利 John C. Reilly / 萨拉...', '\n                            2012 / 美国 / 喜剧 动画 奇幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('172', '我是山姆', '\n                            导演: 杰茜·尼尔森 Jessie Nelson   主演: Sean Penn / Dakota Fanning / Mi...', '\n                            2001 / 美国 / 剧情 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('173', '冰川时代', '\n                            导演: 卡洛斯·沙尔丹哈 Carlos Saldanha / 克里斯·韦奇 Chris Wedge   主演...', '\n                            2002 / 美国 / 喜剧 动画 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('174', '雨中曲', '\n                            导演: 斯坦利·多南 Stanley Donen / 吉恩·凯利 Gene Kelly   主演: 吉恩·...', '\n                            1952 / 美国 / 喜剧 歌舞 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('175', '燃情岁月', '\n                            导演: 爱德华·兹威克 Edward Zwick   主演: 布拉德·皮特 Brad Pitt / 安东...', '\n                            1994 / 美国 / 剧情 爱情 战争 西部\n                        ');
INSERT INTO `doubanapp_db` VALUES ('176', '爆裂鼓手', '\n                            导演: 达米恩·查泽雷 Damien Chazelle   主演: 迈尔斯·特勒 Miles Teller /...', '\n                            2014 / 美国 / 剧情 音乐\n                        ');
INSERT INTO `doubanapp_db` VALUES ('177', '未麻的部屋', '\n                            导演: 今敏 Satoshi Kon   主演: 岩男润子 Junko Iwao / 松本梨香 Rica Matsu...', '\n                            1997 / 日本 / 动画 奇幻 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('178', '人工智能', '\n                            导演: 史蒂文·斯皮尔伯格 Steven Spielberg   主演: 海利·乔·奥斯蒙 Haley...', '\n                            2001 / 美国 / 冒险 剧情 科幻\n                        ');
INSERT INTO `doubanapp_db` VALUES ('179', '模仿游戏', '\n                            导演: 莫滕·泰杜姆 Morten Tyldum   主演: 本尼迪克特·康伯巴奇 Benedict C...', '\n                            2014 / 英国 美国 / 剧情 传记 战争 同性\n                        ');
INSERT INTO `doubanapp_db` VALUES ('180', '一个叫欧维的男人决定去死', '\n                            导演: 汉内斯·赫尔姆 Hannes Holm   主演: 罗夫·拉斯加德 Rolf Lassgård...', '\n                            2015 / 瑞典 / 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('181', '穿越时空的少女', '\n                            导演: 细田守 Mamoru Hosoda   主演: 仲里依纱 Riisa Naka / 石田卓也 Takuya...', '\n                            2006 / 日本 / 剧情 爱情 科幻 动画\n                        ');
INSERT INTO `doubanapp_db` VALUES ('182', '忠犬八公物语', '\n                            导演: Seijirô Kôyama   主演: 山本圭 Kei Yamamoto / 井川比佐志 Hisa...', '\n                            1987 / 日本 / 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('183', '魂断蓝桥', '\n                            导演: 茂文·勒鲁瓦 Mervyn LeRoy   主演: 费雯·丽 Vivien Leigh / 罗伯特·...', '\n                            1940 / 美国 / 剧情 爱情 战争\n                        ');
INSERT INTO `doubanapp_db` VALUES ('184', '房间', '\n                            导演: 伦尼·阿伯拉罕森 Lenny Abrahamson   主演: 布丽·拉尔森 Brie Larson...', '\n                            2015 / 爱尔兰 加拿大 英国 美国 / 剧情 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('185', '猜火车', '\n                            导演: 丹尼·博伊尔 Danny Boyle   主演: 伊万·麦克格雷格 Ewan McGregor / ...', '\n                            1996 / 英国 / 剧情 犯罪\n                        ');
INSERT INTO `doubanapp_db` VALUES ('186', '魔女宅急便', '\n                            导演: 宫崎骏 Hayao Miyazaki   主演: 高山南 Minami Takayama / 佐久间玲 Re...', '\n                            1989 / 日本 / 动画 奇幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('187', '恐怖游轮', '\n                            导演: 克里斯托弗·史密斯 Christopher Smith   主演: 梅利莎·乔治 Melissa ...', '\n                            2009 / 英国 澳大利亚 / 剧情 悬疑 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('188', '完美陌生人', '\n                            导演: 保罗·格诺维瑟 Paolo Genovese   主演: 马可·贾利尼 Marco Giallini ...', '\n                            2016 / 意大利 / 剧情 喜剧\n                        ');
INSERT INTO `doubanapp_db` VALUES ('189', '罗生门', '\n                            导演: 黑泽明 Akira Kurosawa   主演: 三船敏郎 Toshirô Mifune / 千秋实 ...', '\n                            1950 / 日本 / 犯罪 剧情 悬疑\n                        ');
INSERT INTO `doubanapp_db` VALUES ('190', '哪吒闹海', '\n                            导演: 严定宪 Dingxian Yan / 王树忱 Shuchen Wang   主演: 梁正晖 Zhenghui ...', '\n                            1979 / 中国大陆 / 冒险 动画 奇幻\n                        ');
INSERT INTO `doubanapp_db` VALUES ('191', '海街日记', '\n                            导演: 是枝裕和 Hirokazu Koreeda   主演: 绫濑遥 Haruka Ayase / 长泽雅美 M...', '\n                            2015 / 日本 / 剧情 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('192', '阿飞正传', '\n                            导演: 王家卫 Kar Wai Wong   主演: 张国荣 Leslie Cheung / 张曼玉 Maggie C...', '\n                            1990 / 香港 / 犯罪 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('193', '黑客帝国3：矩阵革命', '\n                            导演: Andy Wachowski / Larry Wachowski   主演: 基努·里维斯 Keanu Reeves...', '\n                            2003 / 美国 澳大利亚 / 动作 科幻\n                        ');
INSERT INTO `doubanapp_db` VALUES ('194', '香水', '\n                            导演: 汤姆·提克威 Tom Tykwer   主演: 本·卫肖 Ben Whishaw / 艾伦·瑞克...', '\n                            2006 / 德国 法国 西班牙 美国 / 剧情 犯罪 奇幻\n                        ');
INSERT INTO `doubanapp_db` VALUES ('195', '朗读者', '\n                            导演: 史蒂芬·戴德利 Stephen Daldry   主演: 凯特·温丝莱特 Kate Winslet ...', '\n                            2008 / 美国 德国 / 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('196', '浪潮', '\n                            导演: 丹尼斯·甘塞尔 Dennis Gansel   主演: 尤尔根·沃格尔 Jürgen Vogel ...', '\n                            2008 / 德国 / 剧情 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('197', '天书奇谭', '\n                            导演: 王树忱 Shuchen Wang / 钱运达 Yunda Qian   主演: 丁建华 Jianhua Din...', '\n                            1983(中国大陆) / 2019(中国大陆重映) / 中国大陆 / 动画 奇幻\n                        ');
INSERT INTO `doubanapp_db` VALUES ('198', '可可西里', '\n                            导演: 陆川 Chuan Lu   主演: 多布杰 Duobujie / 张磊 Lei Zhang / 亓亮 Qi L...', '\n                            2004 / 中国大陆 香港 / 剧情 犯罪\n                        ');
INSERT INTO `doubanapp_db` VALUES ('199', '谍影重重2', '\n                            导演: 保罗·格林格拉斯 Paul Greengrass   主演: 马特·达蒙 Matt Damon / ...', '\n                            2004 / 美国 德国 / 动作 悬疑 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('200', '牯岭街少年杀人事件', '\n                            导演: 杨德昌 Edward Yang   主演: 张震 Chen Chang / 杨静怡 Lisa Yang / 张...', '\n                            1991 / 台湾 / 剧情 犯罪\n                        ');
INSERT INTO `doubanapp_db` VALUES ('201', '谍影重重', '\n                            导演: 道格·里曼 Doug Liman   主演: 马特·达蒙 Matt Damon / 弗兰卡·波坦...', '\n                            2002 / 美国 德国 捷克 / 动作 悬疑 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('202', '战争之王', '\n                            导演: 安德鲁·尼科尔 Andrew Niccol   主演: 尼古拉斯·凯奇 Nicolas Cage /...', '\n                            2005 / 美国 法国 / 剧情 犯罪\n                        ');
INSERT INTO `doubanapp_db` VALUES ('203', '地球上的星星', '\n                            导演: 阿米尔·汗 Aamir Khan   主演: 达席尔·萨法瑞 Darsheel Safary / 阿...', '\n                            2007 / 印度 / 剧情 儿童 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('204', '惊魂记', '\n                            导演: Alfred Hitchcock   主演: Janet Leigh / Anthony Perkins / Vera Miles', '\n                            1960 / 美国 / 悬疑 惊悚 恐怖\n                        ');
INSERT INTO `doubanapp_db` VALUES ('205', '疯狂的石头', '\n                            导演: 宁浩 Hao Ning   主演: 郭涛 Tao Guo / 刘桦 Hua Liu / 连晋 Teddy Lin', '\n                            2006 / 中国大陆 香港 / 喜剧 犯罪\n                        ');
INSERT INTO `doubanapp_db` VALUES ('206', '青蛇', '\n                            导演: 徐克 Hark Tsui   主演: 张曼玉 Maggie Cheung / 王祖贤 Joey Wang / ...', '\n                            1993 / 香港 / 剧情 爱情 奇幻 古装\n                        ');
INSERT INTO `doubanapp_db` VALUES ('207', '初恋这件小事', '\n                            导演: 普特鹏·普罗萨卡·那·萨克那卡林 Puttipong Promsaka Na Sakolnakorn / 华森·波克彭...', '\n                            2010 / 泰国 / 剧情 喜剧 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('208', '终结者2：审判日', '\n                            导演: 詹姆斯·卡梅隆 James Cameron   主演: 阿诺·施瓦辛格 Arnold Schwarz...', '\n                            1991 / 美国 法国 / 动作 科幻\n                        ');
INSERT INTO `doubanapp_db` VALUES ('209', '步履不停', '\n                            导演: 是枝裕和 Hirokazu Koreeda   主演: 阿部宽 Hiroshi Abe / 夏川结衣 Yu...', '\n                            2008 / 日本 / 剧情 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('210', '源代码', '\n                            导演: 邓肯·琼斯 Duncan Jones   主演: 杰克·吉伦哈尔 Jake Gyllenhaal / ...', '\n                            2011 / 美国 加拿大 / 科幻 悬疑 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('211', '一次别离', '\n                            导演: 阿斯哈·法哈蒂  Asghar Farhadi   主演: 佩曼·莫阿迪 Peyman Moadi /...', '\n                            2011 / 伊朗 法国 / 剧情 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('212', '追随', '\n                            导演: 克里斯托弗·诺兰 Christopher Nolan   主演: 杰里米·西奥伯德 Jeremy...', '\n                            1998 / 英国 / 犯罪 悬疑 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('213', '新龙门客栈', '\n                            导演: 李惠民 Raymond Lee   主演: 张曼玉 Maggie Cheung / 林青霞 Brigitte ...', '\n                            1992 / 香港 中国大陆 / 动作 爱情 武侠 古装\n                        ');
INSERT INTO `doubanapp_db` VALUES ('214', '小萝莉的猴神大叔', '\n                            导演: 卡比尔·汗 Kabir Khan   主演: 萨尔曼·汗 Salman Khan / 哈莎莉·马...', '\n                            2015 / 印度 / 剧情 喜剧 动作\n                        ');
INSERT INTO `doubanapp_db` VALUES ('215', '爱在午夜降临前', '\n                            导演: 理查德·林克莱特 Richard Linklater   主演: 伊桑·霍克 Ethan Hawke ...', '\n                            2013 / 美国 希腊 / 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('216', '再次出发之纽约遇见你', '\n                            导演: 约翰·卡尼 John Carney   主演: 凯拉·奈特莉 Keira Knightley / 马克...', '\n                            2013 / 美国 / 喜剧 爱情 音乐\n                        ');
INSERT INTO `doubanapp_db` VALUES ('217', '撞车', '\n                            导演: 保罗·哈吉斯 Paul Haggis   主演: 桑德拉·布洛克 Sandra Bullock / ...', '\n                            2004 / 美国 德国 / 犯罪 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('218', '无耻混蛋', '\n                            导演: Quentin Tarantino   主演: 布拉德·皮特 Brad Pitt / 梅拉尼·罗兰 M...', '\n                            2009 / 美国 德国 / 剧情 犯罪\n                        ');
INSERT INTO `doubanapp_db` VALUES ('219', '功夫', '\n                            导演: 周星驰 Stephen Chow   主演: 周星驰 Stephen Chow / 元秋 Qiu Yuen / ...', '\n                            2004 / 中国大陆 香港 / 动作 喜剧 犯罪 奇幻\n                        ');
INSERT INTO `doubanapp_db` VALUES ('220', '梦之安魂曲', '\n                            导演: 达伦·阿伦诺夫斯基 Darren Aronofsky   主演: 艾伦·伯斯汀 Ellen Bur...', '\n                            2000 / 美国 / 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('221', '城市之光', '\n                            导演: Charles Chaplin   主演: 查理·卓别林 Charles Chaplin / 弗吉尼亚·...', '\n                            1931 / 美国 / 喜剧 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('222', '东京物语', '\n                            导演: 小津安二郎 Yasujirô Ozu   主演: 笠智众 Chishû Ryû / 原节...', '\n                            1953 / 日本 / 剧情 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('223', '彗星来的那一夜', '\n                            导演: 詹姆斯·沃德·布柯特 James Ward Byrkit   主演: 艾米丽·芭尔多尼 Em...', '\n                            2013 / 美国 英国 / 科幻 悬疑 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('224', '绿里奇迹', '\n                            导演: Frank Darabont   主演: 汤姆·汉克斯 Tom Hanks / 大卫·摩斯 David M...', '\n                            1999 / 美国 / 犯罪 剧情 奇幻 悬疑\n                        ');
INSERT INTO `doubanapp_db` VALUES ('225', '血钻', '\n                            导演: 爱德华·兹威克 Edward Zwick   主演: 莱昂纳多·迪卡普里奥 Leonardo ...', '\n                            2006 / 美国 德国 / 剧情 惊悚 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('226', '2001太空漫游', '\n                            导演: 斯坦利·库布里克 Stanley Kubrick   主演: 凯尔·杜拉 Keir Dullea / ...', '\n                            1968 / 英国 美国 / 科幻 惊悚 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('227', '奇迹男孩', '\n                            导演: 斯蒂芬·卓博斯基 Stephen Chbosky   主演: 雅各布·特伦布莱 Jacob Tr...', '\n                            2017 / 美国 香港 / 剧情 儿童 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('228', '聚焦', '\n                            导演: 托马斯·麦卡锡 Thomas McCarthy   主演: 马克·鲁弗洛 Mark Ruffalo /...', '\n                            2015 / 美国 / 剧情 传记\n                        ');
INSERT INTO `doubanapp_db` VALUES ('229', '这个男人来自地球', '\n                            导演: 理查德·沙因克曼 Richard Schenkman   主演: 大卫·李·史密斯 David ...', '\n                            2007 / 美国 / 剧情 科幻\n                        ');
INSERT INTO `doubanapp_db` VALUES ('230', 'E.T. 外星人', '\n                            导演: Steven Spielberg   主演: Henry Thomas / Dee Wallace / Robert MacNa...', '\n                            1982 / 美国 / 剧情 科幻\n                        ');
INSERT INTO `doubanapp_db` VALUES ('231', '末路狂花', '\n                            导演: 雷德利·斯科特 Ridley Scott   主演: 吉娜·戴维斯 Geena Davis / 苏...', '\n                            1991 / 美国 法国 / 犯罪 剧情 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('232', '发条橙', '\n                            导演: Stanley Kubrick   主演: Malcolm McDowell / Patrick Magee / Michael...', '\n                            1971 / 英国 美国 / 犯罪 剧情 科幻\n                        ');
INSERT INTO `doubanapp_db` VALUES ('233', '变脸', '\n                            导演: 吴宇森 John Woo   主演: 约翰·特拉沃尔塔 John Travolta / 尼古拉斯...', '\n                            1997 / 美国 / 动作 科幻 犯罪 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('234', '黑鹰坠落', '\n                            导演: 雷德利·斯科特 Ridley Scott   主演: 乔什·哈奈特 Josh Hartnett / ...', '\n                            2001 / 美国 / 动作 历史 战争\n                        ');
INSERT INTO `doubanapp_db` VALUES ('235', '勇闯夺命岛', '\n                            导演: 迈克尔·贝 Michael Bay   主演: 肖恩·康纳利 Sean Connery / 尼古拉...', '\n                            1996 / 美国 / 动作 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('236', '疯狂的麦克斯4：狂暴之路', '\n                            导演: 乔治·米勒 George Miller   主演: 汤姆·哈迪 Tom Hardy / 查理兹·塞...', '\n                            2015 / 澳大利亚 美国 / 动作 科幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('237', '黄金三镖客', '\n                            导演: Sergio Leone   主演: Clint Eastwood / Eli Wallach / Lee Van Cleef', '\n                            1966 / 意大利 西班牙 西德 / 冒险 西部\n                        ');
INSERT INTO `doubanapp_db` VALUES ('238', '我爱你', '\n                            导演: 秋昌民 Chang-min Choo   主演: 宋在河 Jae-ho Song / 李顺载 Soon-jae...', '\n                            2011 / 韩国 / 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('239', '秒速5厘米', '\n                            导演: 新海诚 Makoto Shinkai   主演: 水桥研二 Kenji Mizuhashi / 近藤好美 ...', '\n                            2007 / 日本 / 动画 剧情 爱情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('240', '国王的演讲', '\n                            导演: 汤姆·霍珀 Tom Hooper   主演: 柯林·菲尔斯 Colin Firth / 杰弗里·...', '\n                            2010 / 英国 澳大利亚 美国 / 剧情 传记 历史\n                        ');
INSERT INTO `doubanapp_db` VALUES ('241', '非常嫌疑犯', '\n                            导演: 布莱恩·辛格 Bryan Singer   主演: 史蒂芬·鲍德温 Stephen Baldwin /...', '\n                            1995 / 德国 美国 / 剧情 犯罪 悬疑 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('242', '千钧一发', '\n                            导演: 安德鲁·尼科尔 Andrew Niccol   主演: 伊桑·霍克 Ethan Hawke / 乌玛...', '\n                            1997 / 美国 / 剧情 科幻 惊悚\n                        ');
INSERT INTO `doubanapp_db` VALUES ('243', '遗愿清单', '\n                            导演: 罗伯·莱纳 Rob Reiner   主演: 杰克·尼科尔森 Jack Nicholson / 摩根...', '\n                            2007 / 美国 / 冒险 喜剧 剧情\n                        ');
INSERT INTO `doubanapp_db` VALUES ('244', '卡萨布兰卡', '\n                            导演: 迈克尔·柯蒂兹 Michael Curtiz   主演: 亨弗莱·鲍嘉 Humphrey Bogart...', '\n                            1942 / 美国 / 剧情 爱情 战争\n                        ');
INSERT INTO `doubanapp_db` VALUES ('245', '头号玩家', '\n                            导演: 史蒂文·斯皮尔伯格 Steven Spielberg   主演: 泰伊·谢里丹 Tye Sheri...', '\n                            2018 / 美国 / 动作 科幻 冒险\n                        ');
INSERT INTO `doubanapp_db` VALUES ('246', '新世界', '\n                            导演: 朴勋政 Hoon-jung Park   主演: 李政宰 Jung-Jae Lee / 崔岷植 Min-sik...', '\n                            2013 / 韩国 / 剧情 犯罪\n                        ');
INSERT INTO `doubanapp_db` VALUES ('247', '釜山行', '\n                            导演: 延尚昊 Sang-ho Yeon   主演: 孔侑 Yoo Gong / 郑有美 Yu-mi Jung / 马...', '\n                            2016 / 韩国 / 动作 惊悚 灾难\n                        ');
INSERT INTO `doubanapp_db` VALUES ('248', '驴得水', '\n                            导演: 周申 Shen Zhou / 刘露 Lu Liu   主演: 任素汐 Suxi Ren / 大力 Da Li ...', '\n                            2016 / 中国大陆 / 剧情 喜剧\n                        ');
INSERT INTO `doubanapp_db` VALUES ('249', '美国丽人', '\n                            导演: 萨姆·门德斯 Sam Mendes   主演: 凯文·史派西 Kevin Spacey / 安妮特...', '\n                            1999 / 美国 / 剧情 爱情 家庭\n                        ');
INSERT INTO `doubanapp_db` VALUES ('250', '四个春天', '\n                            导演: 陆庆屹 Lu Qing Yi   主演: 陆运坤 Yunkun Lu / 李桂贤 Guixian Li / ...', '\n                            2017 / 中国大陆 / 纪录片 家庭\n                        ');

-- ----------------------------
-- Table structure for doubanapp_phonedb
-- ----------------------------
DROP TABLE IF EXISTS `doubanapp_phonedb`;
CREATE TABLE `doubanapp_phonedb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=335 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doubanapp_phonedb
-- ----------------------------
INSERT INTO `doubanapp_phonedb` VALUES ('1', 'Apple iPhone XR (A2108) 128GB 黑色 移动联通电信4G手机 双卡双待', '5698.00');
INSERT INTO `doubanapp_phonedb` VALUES ('2', '【KPL官方比赛用机】vivo iQOO 44W超快闪充 8GB+128GB电光蓝 全面屏拍照手机 骁龙855电竞游戏 全网通4G', '3298.00');
INSERT INTO `doubanapp_phonedb` VALUES ('3', '华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片全面屏屏内指纹版手机8GB+128GB亮黑色全网通双4G', '4288.00');
INSERT INTO `doubanapp_phonedb` VALUES ('4', '荣耀8X 千元屏霸 91%屏占比 2000万AI双摄 4GB+64GB 幻夜黑 移动联通电信4G全面屏 双卡双待', '1299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('5', '小米 红米Redmi Note7 幻彩渐变AI双摄 4GB+64GB 梦幻蓝 全网通4G 双卡双待 水滴全面屏拍照游戏智能', '1199.00');
INSERT INTO `doubanapp_phonedb` VALUES ('6', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏 双卡双待', '1299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('7', 'vivo U1 水滴全面屏 AI智慧拍照手机 3GB+32GB 极光色 移动联通电信全网通4G', '799.00');
INSERT INTO `doubanapp_phonedb` VALUES ('8', '小米 红米6 4GB+64GB 铂银灰 全网通4G手机 双卡双待', '799.00');
INSERT INTO `doubanapp_phonedb` VALUES ('9', '荣耀V20 胡歌同款 麒麟980芯片 魅眼全视屏 4800万深感相机 6GB+128GB 幻夜黑 移动联通电信4G全面屏', '2799.00');
INSERT INTO `doubanapp_phonedb` VALUES ('10', '荣耀畅玩8C两天一充 莱茵护眼 刘海屏 全网通版4GB+32GB 幻夜黑 移动联通电信4G全面屏 双卡双待', '899.00');
INSERT INTO `doubanapp_phonedb` VALUES ('11', '小米8SE 全面屏智能游戏拍照手机 6GB+64GB 灰色 骁龙710处理器 全网通4G 双卡双待', '1399.00');
INSERT INTO `doubanapp_phonedb` VALUES ('12', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '5949.00');
INSERT INTO `doubanapp_phonedb` VALUES ('13', '小米8青春版 镜面渐变AI双摄 6GB+64GB 梦幻蓝 骁龙 全网通4G 双卡双待 全面屏拍照游戏智能', '1499.00');
INSERT INTO `doubanapp_phonedb` VALUES ('14', '小米9 4800万超广角三摄 8GB+128GB全息幻彩蓝 骁龙855 全网通4G 双卡双待 水滴全面屏拍照游戏智能', '3299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('15', 'vivo Z3 6GB+64GB 极光蓝 性能实力派 全面屏游戏手机 移动联通电信全网通4G手机', '1598.00');
INSERT INTO `doubanapp_phonedb` VALUES ('16', '小米 红米Redmi 7 AI双摄 3GB+32GB 亮黑色 全网通4G 双卡双待 水滴全面屏拍照游戏智能', '799.00');
INSERT INTO `doubanapp_phonedb` VALUES ('17', 'vivo X27 8GB+256GB大内存 雀羽蓝 4800万AI三摄全面屏拍照手机 移动联通电信全网通4G', '3598.00');
INSERT INTO `doubanapp_phonedb` VALUES ('18', '小米 红米6A AI美颜 3GB+32GB 流沙金 全网通4G手机 双卡双待', '649.00');
INSERT INTO `doubanapp_phonedb` VALUES ('19', 'vivo S1 6GB+128GB 冰湖蓝 2480万AI高清自拍 超广角后置三摄拍照手机 移动联通电信全网通4G', '2298.00');
INSERT INTO `doubanapp_phonedb` VALUES ('20', '黑鲨游戏手机2 8GB+128GB 暗影黑 骁龙855 Magic Press立体操控 塔式全域液冷 全面屏 全网通4G 双卡双待', '3499.00');
INSERT INTO `doubanapp_phonedb` VALUES ('21', 'Apple iPhone 8 Plus (A1864) 64GB 深空灰色 移动联通电信4G手机', '4469.00');
INSERT INTO `doubanapp_phonedb` VALUES ('22', 'Apple iPhone 8 (A1863) 64GB 深空灰色 移动联通电信4G手机', '3799.00');
INSERT INTO `doubanapp_phonedb` VALUES ('23', 'Apple iPhone XS Max (A2104) 64GB 金色 移动联通电信4G手机 双卡双待', '7899.00');
INSERT INTO `doubanapp_phonedb` VALUES ('24', '荣耀10 GT游戏加速 AIS手持夜景 6GB+64GB 幻夜黑 全网通 移动联通电信4G 双卡双待 游戏', '2199.00');
INSERT INTO `doubanapp_phonedb` VALUES ('25', '小米 红米Redmi Note7Pro AI双摄 6GB+128GB 梦幻蓝 全网通4G 双卡双待 水滴屏拍照游戏', '1599.00');
INSERT INTO `doubanapp_phonedb` VALUES ('26', '诺基亚 NOKIA X6 6GB+64GB 星空黑 全网通 双卡双待 移动联通电信4G手机', '1069.00');
INSERT INTO `doubanapp_phonedb` VALUES ('27', '荣耀20i 3200万AI自拍 超广角三摄 全网通版6GB+64GB 幻夜黑 移动联通电信4G全面屏 双卡双待', '1599.00');
INSERT INTO `doubanapp_phonedb` VALUES ('28', '华为 HUAWEI nova 4e 3200万立体美颜AI超广角三摄珍珠屏6GB+128GB幻夜黑全网通版双4G', '2299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('29', 'OPPO Reno 全面屏拍照手机 8G+256G 雾海绿 全网通 移动联通电信 双卡双待手机', '3599.00');
INSERT INTO `doubanapp_phonedb` VALUES ('30', '华为 HUAWEI Mate 20 麒麟980AI智能芯片全面屏超微距影像超大广角徕卡三摄6GB+128GB亮黑色全网通版双4G', '3999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('31', 'Apple iPhone XR (A2108) 128GB 黑色 移动联通电信4G手机 双卡双待', '5698.00');
INSERT INTO `doubanapp_phonedb` VALUES ('32', '【KPL官方比赛用机】vivo iQOO 44W超快闪充 8GB+128GB电光蓝 全面屏拍照手机 骁龙855电竞游戏 全网通4G', '3298.00');
INSERT INTO `doubanapp_phonedb` VALUES ('33', '华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片全面屏屏内指纹版手机8GB+128GB亮黑色全网通双4G', '4288.00');
INSERT INTO `doubanapp_phonedb` VALUES ('34', '荣耀8X 千元屏霸 91%屏占比 2000万AI双摄 4GB+64GB 幻夜黑 移动联通电信4G全面屏 双卡双待', '1299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('35', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏 双卡双待', '1299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('36', 'vivo U1 水滴全面屏 AI智慧拍照手机 3GB+32GB 极光色 移动联通电信全网通4G', '799.00');
INSERT INTO `doubanapp_phonedb` VALUES ('37', '小米 红米6 4GB+64GB 铂银灰 全网通4G手机 双卡双待', '799.00');
INSERT INTO `doubanapp_phonedb` VALUES ('38', '荣耀V20 胡歌同款 麒麟980芯片 魅眼全视屏 4800万深感相机 6GB+128GB 幻夜黑 移动联通电信4G全面屏', '2799.00');
INSERT INTO `doubanapp_phonedb` VALUES ('39', '荣耀畅玩8C两天一充 莱茵护眼 刘海屏 全网通版4GB+32GB 幻夜黑 移动联通电信4G全面屏 双卡双待', '899.00');
INSERT INTO `doubanapp_phonedb` VALUES ('40', '小米8SE 全面屏智能游戏拍照手机 6GB+64GB 灰色 骁龙710处理器 全网通4G 双卡双待', '1399.00');
INSERT INTO `doubanapp_phonedb` VALUES ('41', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '5949.00');
INSERT INTO `doubanapp_phonedb` VALUES ('42', '小米8青春版 镜面渐变AI双摄 6GB+64GB 梦幻蓝 骁龙 全网通4G 双卡双待 全面屏拍照游戏智能', '1499.00');
INSERT INTO `doubanapp_phonedb` VALUES ('43', '小米9 4800万超广角三摄 8GB+128GB全息幻彩蓝 骁龙855 全网通4G 双卡双待 水滴全面屏拍照游戏智能', '3299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('44', 'vivo Z3 6GB+64GB 极光蓝 性能实力派 全面屏游戏手机 移动联通电信全网通4G手机', '1598.00');
INSERT INTO `doubanapp_phonedb` VALUES ('45', '小米 红米Redmi 7 AI双摄 3GB+32GB 亮黑色 全网通4G 双卡双待 水滴全面屏拍照游戏智能', '799.00');
INSERT INTO `doubanapp_phonedb` VALUES ('46', 'vivo X27 8GB+256GB大内存 雀羽蓝 4800万AI三摄全面屏拍照手机 移动联通电信全网通4G', '3598.00');
INSERT INTO `doubanapp_phonedb` VALUES ('47', '小米 红米6A AI美颜 3GB+32GB 流沙金 全网通4G手机 双卡双待', '649.00');
INSERT INTO `doubanapp_phonedb` VALUES ('48', 'vivo S1 6GB+128GB 冰湖蓝 2480万AI高清自拍 超广角后置三摄拍照手机 移动联通电信全网通4G', '2298.00');
INSERT INTO `doubanapp_phonedb` VALUES ('49', '黑鲨游戏手机2 8GB+128GB 暗影黑 骁龙855 Magic Press立体操控 塔式全域液冷 全面屏 全网通4G 双卡双待', '3499.00');
INSERT INTO `doubanapp_phonedb` VALUES ('50', 'Apple iPhone 8 Plus (A1864) 64GB 深空灰色 移动联通电信4G手机', '4469.00');
INSERT INTO `doubanapp_phonedb` VALUES ('51', 'Apple iPhone 8 (A1863) 64GB 深空灰色 移动联通电信4G手机', '3799.00');
INSERT INTO `doubanapp_phonedb` VALUES ('52', 'Apple iPhone XS Max (A2104) 64GB 金色 移动联通电信4G手机 双卡双待', '7899.00');
INSERT INTO `doubanapp_phonedb` VALUES ('53', '荣耀10 GT游戏加速 AIS手持夜景 6GB+64GB 幻夜黑 全网通 移动联通电信4G 双卡双待 游戏', '2199.00');
INSERT INTO `doubanapp_phonedb` VALUES ('54', '小米 红米Redmi Note7Pro AI双摄 6GB+128GB 梦幻蓝 全网通4G 双卡双待 水滴屏拍照游戏', '1599.00');
INSERT INTO `doubanapp_phonedb` VALUES ('55', '诺基亚 NOKIA X6 6GB+64GB 星空黑 全网通 双卡双待 移动联通电信4G手机', '1069.00');
INSERT INTO `doubanapp_phonedb` VALUES ('56', '荣耀20i 3200万AI自拍 超广角三摄 全网通版6GB+64GB 幻夜黑 移动联通电信4G全面屏 双卡双待', '1599.00');
INSERT INTO `doubanapp_phonedb` VALUES ('57', '华为 HUAWEI nova 4e 3200万立体美颜AI超广角三摄珍珠屏6GB+128GB幻夜黑全网通版双4G', '2299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('58', 'OPPO Reno 全面屏拍照手机 8G+256G 雾海绿 全网通 移动联通电信 双卡双待手机', '3599.00');
INSERT INTO `doubanapp_phonedb` VALUES ('59', '华为 HUAWEI Mate 20 麒麟980AI智能芯片全面屏超微距影像超大广角徕卡三摄6GB+128GB亮黑色全网通版双4G', '3999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('60', '华为 HUAWEI 畅享 9S 4GB+64GB 极光蓝 全网通 2400万超广角三摄珍珠屏大存储 移动联通电信4G 双卡双待', '1499.00');
INSERT INTO `doubanapp_phonedb` VALUES ('61', 'Apple iPhone 7 (A1660) 128G 玫瑰金色 移动联通电信4G手机', '2998.00');
INSERT INTO `doubanapp_phonedb` VALUES ('62', '荣耀畅玩8A 6.09英寸珍珠全面屏 震撼大音量 3GB+32GB 幻夜黑 移动联通电信4G全面屏 双卡双待', '799.00');
INSERT INTO `doubanapp_phonedb` VALUES ('63', '华为 HUAWEI 畅享9 Plus 4GB+64GB 极光紫 全网通 四摄超清全面屏大电池 移动联通电信4G 双卡双待', '1399.00');
INSERT INTO `doubanapp_phonedb` VALUES ('64', '小米9 SE 4800万超广角三摄 骁龙712 水滴全面屏 游戏智能拍照手机 6GB+128GB 全息幻彩蓝 全网通4G双卡双待', '2299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('65', '荣耀Play 全网通版 6GB+64GB 幻夜黑 移动联通电信4G全面屏游戏手机 双卡双待', '1899.00');
INSERT INTO `doubanapp_phonedb` VALUES ('66', '华为 HUAWEI 畅享 9e 实力大音量高像素珍珠屏3GB+64GB幻夜黑全网通版双4G手机', '999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('67', '三星 Galaxy S10 8GB+128GB皓玉白（SM-G9730）超感官全视屏骁龙855双卡双待全网通4G游戏', '5999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('68', '一加手机6T 8GB+128GB 墨岩黑 超强城市夜景 光感屏幕指纹 全面屏双摄游戏手机 全网通4G 双卡双待', '3199.00');
INSERT INTO `doubanapp_phonedb` VALUES ('69', '【千玺代言】华为新品 HUAWEI nova 4 极点全面屏手机 2000万超广角三摄 6GB+128GB 亮黑色 全网通双卡双待', '2699.00');
INSERT INTO `doubanapp_phonedb` VALUES ('70', 'Apple iPhone XS (A2100) 64GB 金色 移动联通电信4G手机', '7599.00');
INSERT INTO `doubanapp_phonedb` VALUES ('71', 'Apple iPhone 7 Plus (A1661) 128G 黑色 移动联通电信4G手机', '4199.00');
INSERT INTO `doubanapp_phonedb` VALUES ('72', '三星 Galaxy S10+ 8GB+128GB皓玉白（SM-G9750）3D超声波屏下指纹超感官全视屏双卡双待全网通4G游戏', '6999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('73', '华为 HUAWEI Mate 20 Pro (UD)屏内指纹版麒麟980芯片全面屏超大广角徕卡三摄8GB+128GB亮黑色全网通双4G', '5499.00');
INSERT INTO `doubanapp_phonedb` VALUES ('74', '荣耀Note10 全网通6G+64G 幻夜黑 移动联通电信4G全面屏手机 双卡双待 游戏手机', '2599.00');
INSERT INTO `doubanapp_phonedb` VALUES ('75', '华为 HUAWEI P20 AI智慧徕卡双摄全面屏游戏手机 6GB+64GB 极光色 全网通移动联通电信4G 双卡双待', '3088.00');
INSERT INTO `doubanapp_phonedb` VALUES ('76', '荣耀 畅玩7 2GB+16GB 金色 全网通4G手机 双卡双待', '599.00');
INSERT INTO `doubanapp_phonedb` VALUES ('77', '华为 HUAWEI P20 Pro 全面屏徕卡三摄游戏手机 6GB+128GB 亮黑色 全网通移动联通电信4G 双卡双待', '3688.00');
INSERT INTO `doubanapp_phonedb` VALUES ('78', '魅族 Note9 全面屏游戏拍照手机 4GB+64GB 幻黑 全网通移动联通电信4G 双卡双待', '1398.00');
INSERT INTO `doubanapp_phonedb` VALUES ('79', 'HUAWEI 华为畅享9 3GB+32GB 幻夜黑 高清珍珠屏 AI长续航 全网通标配版 移动联通电信4G', '899.00');
INSERT INTO `doubanapp_phonedb` VALUES ('80', 'OPPO R17 2500万美颜拍照 6.4英寸水滴屏 光感屏幕指纹 6G+128G 流光蓝 全网通 移动联通电信4G 双卡双待', '2399.00');
INSERT INTO `doubanapp_phonedb` VALUES ('81', 'Apple iPhone 6s Plus (A1699) 128G 玫瑰金色 移动联通电信4G手机', '2999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('82', 'OPPO K1 光感屏幕指纹 水滴屏拍照手机 4G+64G 摩卡红 全网通 移动联通电信4G 双卡双待', '1399.00');
INSERT INTO `doubanapp_phonedb` VALUES ('83', '华为 HUAWEI Mate20X 麒麟980芯片全面屏超微距影像超大广角徕卡三摄6GB+128GB宝石蓝全网通版双4G游戏', '4499.00');
INSERT INTO `doubanapp_phonedb` VALUES ('84', '锤子（smartisan ) 坚果 Pro 2S 6G+64GB 炫光蓝 全面屏双摄 全网通4G手机 双卡双待 游戏', '1398.00');
INSERT INTO `doubanapp_phonedb` VALUES ('85', '小米8屏幕指纹版 6GB+128GB 黑色 全网通4G 双卡双待 全面屏拍照游戏智能手机', '2499.00');
INSERT INTO `doubanapp_phonedb` VALUES ('86', '魅族 Note8 全面屏手机 4GB+64GB 曜黑 全网通移动联通电信4G手机 双卡双待', '949.00');
INSERT INTO `doubanapp_phonedb` VALUES ('87', '华为P30 Pro 手机 超感光徕卡四摄10倍混合变焦50倍数码变焦【现货当天发免息送华为无线充】 天空之境 全网通（8G+128G）无线充电 屏内指纹', '6288.00');
INSERT INTO `doubanapp_phonedb` VALUES ('88', '小米6X 全网通 6GB+64GB 赤焰红 移动联通电信4G手机 双卡双待 智能手机 拍照手机', '1299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('89', 'vivo Z1青春版 新一代全面屏AI双摄手机 4GB+64GB 极光色 移动联通电信全网通4G', '1049.00');
INSERT INTO `doubanapp_phonedb` VALUES ('90', 'OPPO A5 全面屏拍照手机 3GB+64GB 幻镜蓝 全网通 移动联通电信4G 双卡双待手机', '999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('91', '魅族 V8 全面屏手机 4GB+64GB 曜黑 全网通移动联通电信4G手机 双卡双待', '749.00');
INSERT INTO `doubanapp_phonedb` VALUES ('92', 'vivo iQOO 水滴全面屏 超广角AI三摄拍照 高通骁龙855 4G全网通 电竞游戏 智能手机 熔岩橙 8GB 128GB', '3298.00');
INSERT INTO `doubanapp_phonedb` VALUES ('93', '华为 HUAWEI 畅享MAX 4GB+64GB 幻夜黑 全网通版 珍珠屏杜比全景声大电池 移动联通电信4G 双卡双待', '1499.00');
INSERT INTO `doubanapp_phonedb` VALUES ('94', '荣耀8X Max 7.12英寸90%屏占比珍珠屏 4GB+64GB 魅海蓝 移动联通电信4G全面屏 双卡双待', '1499.00');
INSERT INTO `doubanapp_phonedb` VALUES ('95', '飞利浦（PHILIPS）E171L 曜石黑 直板按键 移动联通 老人手机 老年功能机', '198.00');
INSERT INTO `doubanapp_phonedb` VALUES ('96', '诺基亚（NOKIA）新105 黑色 直板按键 移动联通2G手机 老人手机 学生备用功能机', '149.00');
INSERT INTO `doubanapp_phonedb` VALUES ('97', '飞利浦 PHILIPS E258S 宝石蓝 直板按键 移动/联通2G 老人手机 老年功能', '178.00');
INSERT INTO `doubanapp_phonedb` VALUES ('98', '联想K5 Pro 6GB+128GB 格调黑 千元影霸 1600万AI四摄 4050mAh大电池 全网通4G 双卡双待', '1198.00');
INSERT INTO `doubanapp_phonedb` VALUES ('99', '锤子（smartisan） 坚果 R1 6G+128GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待 游戏', '2499.00');
INSERT INTO `doubanapp_phonedb` VALUES ('100', '魅族 15 全面屏手机 全网通公开版 4GB+64GB 黛蓝 移动联通电信4G手机 双卡双待', '1098.00');
INSERT INTO `doubanapp_phonedb` VALUES ('101', '魅族 16th 全面屏游戏手机 6GB+64GB 静夜黑 全网通移动联通电信4G手机 双卡双待', '2298.00');
INSERT INTO `doubanapp_phonedb` VALUES ('102', '荣耀Magic2魔法手机 麒麟980AI智能芯片 超广角AI三摄 6GB+128GB 渐变黑 移动联通电信4G 双卡双待', '3499.00');
INSERT INTO `doubanapp_phonedb` VALUES ('103', '诺基亚（NOKIA）230 深蓝色 直板按键 移动联通2G手机 双卡双待 老人手机 学生备用功能机', '399.00');
INSERT INTO `doubanapp_phonedb` VALUES ('104', '酷派（Coolpad）酷玩8 Lite 6\"高清全面屏 1300万双摄 私密双系统 梦幻紫 3GB+32GB 双卡双待全网通', '569.00');
INSERT INTO `doubanapp_phonedb` VALUES ('105', '魅族 16 X 全面屏游戏手机 6GB+64GB 砚墨黑 全网通移动联通电信4G手机 双卡双待', '1698.00');
INSERT INTO `doubanapp_phonedb` VALUES ('106', '小米9透明尊享版 手机 黑色 全网通8G+128G', '3388.00');
INSERT INTO `doubanapp_phonedb` VALUES ('107', '联想Z5 6GB+128GB 极光蓝 6.2英寸全面屏双摄 全网通4G手机 双卡双待', '1248.00');
INSERT INTO `doubanapp_phonedb` VALUES ('108', '华为P30手机 【3期免息赠7重好礼】 亮黑色 全网通 8G+128G', '4288.00');
INSERT INTO `doubanapp_phonedb` VALUES ('109', 'OPPO OPPO A7x 全面屏拍照手机 4GB+128GB 星空紫 全网通 移动联通电信4G 双卡双待', '1599.00');
INSERT INTO `doubanapp_phonedb` VALUES ('110', '华为 畅享9s 手机 幻夜黑 全网通（4GB+64GB）', '1499.10');
INSERT INTO `doubanapp_phonedb` VALUES ('111', '努比亚 nubia 红魔 全面屏 游戏手机 8GB+128GB 烈焰红 移动联通电信4G手机 双卡双待', '2499.00');
INSERT INTO `doubanapp_phonedb` VALUES ('112', '华为荣耀20i 手机【荣耀直供】 幻夜黑 全网通版6GB+64GB+碎屏险+3期免息', '1599.80');
INSERT INTO `doubanapp_phonedb` VALUES ('113', '华为畅享9e手机 全网通智能手机 宝石蓝 3G+64G 送荣耀原装耳机+碎屏险', '999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('114', '小米Mix3 6GB+128GB黑色 骁龙845 全网通4G 双卡双待 全面屏拍照游戏智能手机', '3299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('115', '飞利浦（PHILIPS）E108 陨石黑 直板按键 移动联通2G 双卡双待 老人手机 老年功能机 学生机备机', '99.00');
INSERT INTO `doubanapp_phonedb` VALUES ('116', '华为（HUAWEI） nova4e 3200万立体美颜AI超广角三摄珍珠屏4G 智能手机 雀翎蓝 全网通（6G+128G）', '2299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('117', '联想S5 4GB+64GB 星夜黑 全金属一体化机身 FHD+ 全面屏双摄 全网通4G手机 双卡双待', '798.00');
INSERT INTO `doubanapp_phonedb` VALUES ('118', '联想A5 3GB+32GB 螺黛黑 5.45英寸全面屏 全网通手机 双卡双待', '558.00');
INSERT INTO `doubanapp_phonedb` VALUES ('119', '小辣椒 红辣椒Q11 白色 2GB+16GB 全网通4G 双卡双待手机', '379.00');
INSERT INTO `doubanapp_phonedb` VALUES ('120', '守护宝（上海中兴）F888 直板 按键 超长待机 三防老人手机 双卡双待 黑色 2G移动/联通版', '178.00');
INSERT INTO `doubanapp_phonedb` VALUES ('121', '魅族 X8 准旗舰游戏拍照手机 4GB+64GB 亮黑 全网通移动联通电信4G手机 双卡双待', '1248.00');
INSERT INTO `doubanapp_phonedb` VALUES ('122', 'Apple 苹果 iPhone XR 手机 全网通 白色 128GB', '5438.00');
INSERT INTO `doubanapp_phonedb` VALUES ('123', '华为nova4e 手机 【免息送6件豪礼】 全网通双卡双待 幻夜黑 6GB+128GB 0首付3期免息', '2299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('124', '飞利浦（PHILIPS） E316 深宝蓝 大屏超长待机 直板按键 移动联通2G 双卡双待 老人 学生备用功能机', '238.00');
INSERT INTO `doubanapp_phonedb` VALUES ('125', '【独角精灵版】三星 Galaxy A8s 6GB+128GB莓什么（SM-G8870）黑瞳全视屏 骁龙710芯片全网通4G 双卡双待', '2499.00');
INSERT INTO `doubanapp_phonedb` VALUES ('126', '华为nova4e 手机 幻夜黑 全网通(6G+128G)（分期免息0首付）', '2299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('127', '小米Play 流光渐变AI双摄 4GB+64GB 黑色 全网通4G 双卡双待 小水滴全面屏拍照游戏智能', '999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('128', '三星 Galaxy Note8（SM-N9500）6GB+256GB 谜夜黑 移动联通电信4G 游戏 双卡双待', '4299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('129', 'OPPO【直降200+6期免息】R17 屏下指纹手机 6+128G 6.4英寸 流光蓝 全网通(6G RAM+128G ROM)', '2399.00');
INSERT INTO `doubanapp_phonedb` VALUES ('130', 'OPPO 【6期免息】R17 雾光金 幻色渐变机身屏下指纹解锁手机 6.4英寸手机 雾光金（8+128GB）', '2999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('131', '纽曼（Newman）L9 星空黑 超长待机 直板按键 三防老人手机 双卡双待 学生备用 移动/联通版 老年人', '168.00');
INSERT INTO `doubanapp_phonedb` VALUES ('132', '诺基亚 NOKIA 8110 移动联通4G手机 黄色 直板按键 双卡双待 经典复刻 炫酷滑盖 4G热点备用功能机', '499.00');
INSERT INTO `doubanapp_phonedb` VALUES ('133', '飞利浦（PHILIPS）E107 移动联通 老人手机 老年功能机 星空黑', '99.00');
INSERT INTO `doubanapp_phonedb` VALUES ('134', '小米 红米Note7 Pro 手机 亮黑色 全网通 6G+128G', '1649.80');
INSERT INTO `doubanapp_phonedb` VALUES ('135', 'vivo S1 2480万AI高清自拍 超广角后置三摄拍照手机 移动联通电信全网通4G手机 冰湖蓝 6GB 128GB', '2298.00');
INSERT INTO `doubanapp_phonedb` VALUES ('136', '飞利浦（PHILIPS）E171L 相思红 直板按键 移动联通 老人手机 老年功能机', '198.00');
INSERT INTO `doubanapp_phonedb` VALUES ('137', '【京东仓速发6期免息】OPPO Reno手机4800万像素隐藏摄像头全景屏拍照全网通新品双卡双待 星云紫(6GB+128GB) 官方标配', '2999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('138', 'OPPO A7 全面屏拍照手机 4GB+64GB 清新粉 全网通 移动联通电信4G 双卡双待手机', '1499.00');
INSERT INTO `doubanapp_phonedb` VALUES ('139', '华为（HUAWEI） 荣耀畅玩7 全面屏 智能老人手机 蓝色 全网通（2G+16G）', '535.00');
INSERT INTO `doubanapp_phonedb` VALUES ('140', 'OPPO Find X曲面全景屏 波尔多红 8GB+128GB 全网通 移动联通电信全网通4G 双卡双待', '4998.00');
INSERT INTO `doubanapp_phonedb` VALUES ('141', '小辣椒 红辣椒7R 6.0英寸 全面屏手机 3GB+32GB 渐变黑 全网通 移动联通电信4G 双卡双待', '589.00');
INSERT INTO `doubanapp_phonedb` VALUES ('142', '努比亚 nubia Z18 全面屏3.0 极夜黑 8GB+128GB 全网通 移动联通电信4G手机 双卡双待', '2699.00');
INSERT INTO `doubanapp_phonedb` VALUES ('143', '努比亚 nubia Z18mini 全面屏手机 6GB+128GB 青瓷蓝 移动联通电信4G手机 双卡双待', '1599.00');
INSERT INTO `doubanapp_phonedb` VALUES ('144', 'vivo Z1极光特别版 新一代全面屏AI双摄手机 6GB+64GB 移动联通电信全网通4G', '1598.00');
INSERT INTO `doubanapp_phonedb` VALUES ('145', '华为（HUAWEI） 荣耀 畅玩7手机 蓝色 全网通(2GB+16GB)', '497.00');
INSERT INTO `doubanapp_phonedb` VALUES ('146', '华为（HUAWEI） 荣耀畅玩7 移动联通电信4G 双卡双待 全面屏智能老人手机 金色 全网通2GB RAM+16GB ROM', '496.00');
INSERT INTO `doubanapp_phonedb` VALUES ('147', 'Meitu 美图V6 鹿特丹橙 6GB+128GB 全身美型 美颜 拍照 正品 手机 夜间美颜 双卡双4G 全网通', '1699.00');
INSERT INTO `doubanapp_phonedb` VALUES ('148', '爱心东东\nOPPO A5手机 【已降300元！低至999元+赠碎屏险】千元全面屏 大电量 千元旗舰 珊瑚红（3G+32G） 全网通', '999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('149', 'vivo【新品上市】X27 8+128GB升降式摄像头 零界全面屏拍照 4G全网通手机 雀羽蓝 8GB 128GB', '3198.00');
INSERT INTO `doubanapp_phonedb` VALUES ('150', '爱心东东\n尼凯恩（neken） EN3 电霸 移动/联通 双卡双待 老人手机 三防手机 深空黑', '99.00');
INSERT INTO `doubanapp_phonedb` VALUES ('151', '小米 Redmi 红米Note7 Pro 手机 亮黑色 全网通 6G+128G', '1649.00');
INSERT INTO `doubanapp_phonedb` VALUES ('152', '华为nova4e手机【高配6期免息】 幻夜黑 6G+128G 全网通（6期免息）', '2299.99');
INSERT INTO `doubanapp_phonedb` VALUES ('153', '华为P30【6期免息+赠4重好礼】手机 移动全网通 亮黑色 8G+128G', '4288.00');
INSERT INTO `doubanapp_phonedb` VALUES ('154', '天语（K-TOUCH）Q21 移动/联通2G 直板按键 双卡双待 老人手机 学生备用功能机 金色', '69.00');
INSERT INTO `doubanapp_phonedb` VALUES ('155', '爱心东东\n魅族（MEIZU） 魅族V8 4G手机【京东三仓现货24小时内发货211限时达】 曜黑 全网通（4+64G）高配', '728.00');
INSERT INTO `doubanapp_phonedb` VALUES ('156', '华为P30 手机 极光色 全网通（8GB+128GB）', '4588.10');
INSERT INTO `doubanapp_phonedb` VALUES ('157', '华为（HUAWEI） 荣耀 畅玩7 全网通4G全面屏智能老人手机 金色 全网通(2+16G)', '505.00');
INSERT INTO `doubanapp_phonedb` VALUES ('158', '三星 Galaxy S8+ 6GB+128GB 谜夜黑（SM-G9550）全视曲面屏 虹膜识别 全网通4G 双卡双待', '3499.00');
INSERT INTO `doubanapp_phonedb` VALUES ('159', '【白条免息 原封现货当天发】华为P30 Pro手机【华为厂家直供 送超值豪礼】全网通智能 天空之境 8G+128G 送原装耳机+数据线+音箱+3期免息', '6288.00');
INSERT INTO `doubanapp_phonedb` VALUES ('160', '华为p30 手机【现货速发免息送6件豪礼】 屏内指纹超感光徕卡三摄 极光色 8GB+128GB 全网通', '4388.00');
INSERT INTO `doubanapp_phonedb` VALUES ('161', '爱心东东\n天语（K-TOUCH）I9 迷你智能手机全面屏 全网通4G 移动联通电信 双卡双待 学生备用小 亮黑色 3GB+32GB', '599.00');
INSERT INTO `doubanapp_phonedb` VALUES ('162', 'OPPO R15x手机【下单立减100元+6期免息+赠碎屏险+蓝牙耳机】4G全网通 屏幕指纹 冰萃银(6G+128G) 全网通 双卡双待', '2299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('163', '三星 Galaxy S8 4GB+64GB 谜夜黑（SM-G9500）全视曲面屏 虹膜识别 全网通4G 双卡双待', '2898.00');
INSERT INTO `doubanapp_phonedb` VALUES ('164', '小米 Redmi 红米Note7Pro 手机 亮黑色 6G+ 128GB 全网通', '1649.00');
INSERT INTO `doubanapp_phonedb` VALUES ('165', '华为（HUAWEI） 荣耀Play手机 幻夜黑 全网通6G+128G尊享版', '1988.00');
INSERT INTO `doubanapp_phonedb` VALUES ('166', 'OPPO A5 超视野全面屏拍照手机 3G+32G版 珊瑚红', '1000.00');
INSERT INTO `doubanapp_phonedb` VALUES ('167', '诺基亚（NOKIA）3310 深蓝色 直板按键 移动联通2G手机 双卡双待 时尚手机 经典复刻 学生备用功能机', '349.00');
INSERT INTO `doubanapp_phonedb` VALUES ('168', '朵唯V33 18:9全面屏移动联通电信全网通双卡双待超薄4G老人女性学生智能手机 渐变蓝 2GB+16GB', '379.00');
INSERT INTO `doubanapp_phonedb` VALUES ('169', '努比亚（nubia） V18 全面屏 长续航手机 4GB+64GB 曜石黑 移动联通电信全网通4G 双卡双待', '999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('170', '爱心东东\nOPPO R17手机【低至2399元！6期免息+赠碎屏险+蓝牙耳机+私人定制】屏幕指纹 全网通 流光蓝（6G+128G） 官方标配', '2399.00');
INSERT INTO `doubanapp_phonedb` VALUES ('171', '【移动版特惠】三星 Galaxy Note8（SM-N9508）6G+64G 谜夜黑 移动4G+智 游戏 双卡双待', '3799.00');
INSERT INTO `doubanapp_phonedb` VALUES ('172', 'OPPO 【6G版直降200+6期免息】R17 幻色渐变机身屏下指纹解锁手机 6.4英寸水滴屏 流光蓝 全网通(6G RAM+128G ROM)', '2399.00');
INSERT INTO `doubanapp_phonedb` VALUES ('173', '华为荣耀20i手机（荣耀直供 限时抢购） 幻夜黑 6G+64G全网通', '1599.00');
INSERT INTO `doubanapp_phonedb` VALUES ('174', '中兴ZTE Blade V10 4GB+64GB 静湖绿 准旗舰CPU 3200万AI自拍 高清水滴屏 超强续航 双卡双待全网通4G', '1199.00');
INSERT INTO `doubanapp_phonedb` VALUES ('175', '飞利浦（PHILIPS） E212A 双屏翻盖老人手机 移动联通老年机 双卡双待 咖啡金', '288.00');
INSERT INTO `doubanapp_phonedb` VALUES ('176', '华为（HUAWEI） 华为畅享7 4G智能手机 香槟金 全网通(3G+32G)', '738.00');
INSERT INTO `doubanapp_phonedb` VALUES ('177', '【 原封现货当天发】华为P30 手机 （华为直供货源送超值豪礼）超感光徕卡三摄 屏内指纹全网通 天空之境 8G+64G', '3988.00');
INSERT INTO `doubanapp_phonedb` VALUES ('178', '飞利浦（PHILIPS）E218L 炫舞红 移动联通 翻盖老人手机 双卡双待老年机 学生备用功能机', '298.00');
INSERT INTO `doubanapp_phonedb` VALUES ('179', '红米Redmi Note7Pro 手机 梦幻蓝 6GB 128GB', '1649.99');
INSERT INTO `doubanapp_phonedb` VALUES ('180', '华为荣耀20i手机 幻夜黑 全网通6G+64G（官方正品 送9重礼）', '1599.80');
INSERT INTO `doubanapp_phonedb` VALUES ('181', '天语 X21 刘海全面屏智能手机 全网通4G 移动联通电信 双卡双待一体机 蓝色 尊享版（3GB+64GB）', '661.00');
INSERT INTO `doubanapp_phonedb` VALUES ('182', '联想Z5 Pro GT游戏手机 855旗舰版 8GB+128GB 碳纤黑 光电屏下指纹 2400万AI四摄 全网通4G 双卡双待', '2788.00');
INSERT INTO `doubanapp_phonedb` VALUES ('183', '华为畅享9e 手机 宝石蓝 全网通（3GB+64GB）', '999.10');
INSERT INTO `doubanapp_phonedb` VALUES ('184', '海尔 Haier M360 富贵红 直板按键 移动/联通 老人手机 双卡双待 老年', '198.00');
INSERT INTO `doubanapp_phonedb` VALUES ('185', '华为p30pro 手机 亮黑色 全网通(8G+128G)', '5988.00');
INSERT INTO `doubanapp_phonedb` VALUES ('186', 'vivo Y93s 4G+128G 极光蓝 水滴屏全面屏 移动联通电信全网通4G手机 双卡双待', '1498.00');
INSERT INTO `doubanapp_phonedb` VALUES ('187', '已降300！OPPO A5手机【3G版到手999元起4G版仅1199+碎屏险】美颜拍照大屏双摄全网通 A5 幻镜粉(4G+64G)', '1199.00');
INSERT INTO `doubanapp_phonedb` VALUES ('188', '黑莓（BlackBerry）KEYone 4G全网通 4GB+64GB 黑色 移动联通电信手机', '1999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('189', '三星 Galaxy Folder2 （SM-G1650）2GB+16GB 帕托金 移动联通电信4G翻盖 双卡双待', '1299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('190', '360 N7 Lite 手机 全网通 幻影黑 4GB+32GB', '861.00');
INSERT INTO `doubanapp_phonedb` VALUES ('191', 'OPPO R17 手机【已降200元+6期免息+碎屏险+耳机音箱等】128G版屏幕指纹游戏拍照水滴屏 R17 流光蓝(8G+128G)', '2999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('192', '华为（HUAWEI） 荣耀9i手机 魅海蓝 4GB+64GB全网通', '1175.00');
INSERT INTO `doubanapp_phonedb` VALUES ('193', '华为（HUAWEI） 荣耀 畅玩7 全网通4G手机 金色 全网通(2+16G)', '505.00');
INSERT INTO `doubanapp_phonedb` VALUES ('194', '华为nova4e 手机【6期免息+赠4重好礼】移动全网通 雀翎蓝 4G+128G', '1989.00');
INSERT INTO `doubanapp_phonedb` VALUES ('195', '海尔（Haier） M360 老人手机 移动联通 双卡双待 老年机 红色 老年版', '198.00');
INSERT INTO `doubanapp_phonedb` VALUES ('196', '飞利浦（PHILIPS） E188A 星空黑 真三防老人手机 防水 超长待机 直板按键 老年 移动联通2G 学生功能机', '399.00');
INSERT INTO `doubanapp_phonedb` VALUES ('197', '爱心东东\n小米（MI） 红米6 手机 铂银灰 全网通 4GB+64GB', '799.00');
INSERT INTO `doubanapp_phonedb` VALUES ('198', 'vivo U1 水滴全面屏 AI智慧拍照 3GB+32GB 移动联通电信全网通4G手机 极光色', '799.00');
INSERT INTO `doubanapp_phonedb` VALUES ('199', '爱心东东\nOPPO R15x手机【立减300低至2199元+6期免息+智能手环】骁龙660光感屏幕水滴屏全网通 （6G+128G）冰萃银套装', '2299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('200', 'vivo 【套装】iQOO 水滴全面屏 AI三摄拍照 高通骁龙855 4G全网通 电竞游戏 智能 光电蓝【蓝牙耳机套装】 8GB 128GB', '3498.00');
INSERT INTO `doubanapp_phonedb` VALUES ('201', '小米 红米Redmi 红米Note7Pro 游戏手机 暮光金 全网通（6G+128G）', '1649.00');
INSERT INTO `doubanapp_phonedb` VALUES ('202', '华为（HUAWEI） 荣耀 9i 手机【下单即赠4重好礼】 幻夜黑 全网通 4GB+64GB', '1199.00');
INSERT INTO `doubanapp_phonedb` VALUES ('203', '飞利浦（PHILIPS） E212A 双屏翻盖老人手机 移动联通老年机 双卡双待 咖啡金', '288.00');
INSERT INTO `doubanapp_phonedb` VALUES ('204', '华为（HUAWEI） 华为畅享7 4G智能手机 香槟金 全网通(3G+32G)', '738.00');
INSERT INTO `doubanapp_phonedb` VALUES ('205', '【 原封现货当天发】华为P30 手机 （华为直供货源送超值豪礼）超感光徕卡三摄 屏内指纹全网通 天空之境 8G+64G', '3988.00');
INSERT INTO `doubanapp_phonedb` VALUES ('206', '飞利浦（PHILIPS）E135X 陨石黑 超长待机 移动联通 翻盖老人手机 老年机', '298.00');
INSERT INTO `doubanapp_phonedb` VALUES ('207', '飞利浦（PHILIPS）E218L 炫舞红 移动联通 翻盖老人手机 双卡双待老年机 学生备用功能机', '298.00');
INSERT INTO `doubanapp_phonedb` VALUES ('208', '红米Redmi Note7Pro 手机 梦幻蓝 6GB 128GB', '1649.99');
INSERT INTO `doubanapp_phonedb` VALUES ('209', '华为荣耀20i手机 幻夜黑 全网通6G+64G（官方正品 送9重礼）', '1599.80');
INSERT INTO `doubanapp_phonedb` VALUES ('210', '天语 X21 刘海全面屏智能手机 全网通4G 移动联通电信 双卡双待一体机 蓝色 尊享版（3GB+64GB）', '661.00');
INSERT INTO `doubanapp_phonedb` VALUES ('211', '联想Z5 Pro GT游戏手机 855旗舰版 8GB+128GB 碳纤黑 光电屏下指纹 2400万AI四摄 全网通4G 双卡双待', '2788.00');
INSERT INTO `doubanapp_phonedb` VALUES ('212', '华为畅享9e 手机 宝石蓝 全网通（3GB+64GB）', '999.10');
INSERT INTO `doubanapp_phonedb` VALUES ('213', '海尔 Haier M360 富贵红 直板按键 移动/联通 老人手机 双卡双待 老年', '198.00');
INSERT INTO `doubanapp_phonedb` VALUES ('214', '华为p30pro 手机 亮黑色 全网通(8G+128G)', '5988.00');
INSERT INTO `doubanapp_phonedb` VALUES ('215', 'vivo Y93s 4G+128G 极光蓝 水滴屏全面屏 移动联通电信全网通4G手机 双卡双待', '1498.00');
INSERT INTO `doubanapp_phonedb` VALUES ('216', '已降300！OPPO A5手机【3G版到手999元起4G版仅1199+碎屏险】美颜拍照大屏双摄全网通 A5 幻镜粉(4G+64G)', '1199.00');
INSERT INTO `doubanapp_phonedb` VALUES ('217', '黑莓（BlackBerry）KEYone 4G全网通 4GB+64GB 黑色 移动联通电信手机', '1999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('218', '三星 Galaxy Folder2 （SM-G1650）2GB+16GB 帕托金 移动联通电信4G翻盖 双卡双待', '1299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('219', '360 N7 Lite 手机 全网通 幻影黑 4GB+32GB', '861.00');
INSERT INTO `doubanapp_phonedb` VALUES ('220', 'OPPO R17 手机【已降200元+6期免息+碎屏险+耳机音箱等】128G版屏幕指纹游戏拍照水滴屏 R17 流光蓝(8G+128G)', '2999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('221', '华为（HUAWEI） 荣耀9i手机 魅海蓝 4GB+64GB全网通', '1175.00');
INSERT INTO `doubanapp_phonedb` VALUES ('222', '华为（HUAWEI） 荣耀 畅玩7 全网通4G手机 金色 全网通(2+16G)', '505.00');
INSERT INTO `doubanapp_phonedb` VALUES ('223', '华为nova4e 手机【6期免息+赠4重好礼】移动全网通 雀翎蓝 4G+128G', '1989.00');
INSERT INTO `doubanapp_phonedb` VALUES ('224', '海尔（Haier） M360 老人手机 移动联通 双卡双待 老年机 红色 老年版', '198.00');
INSERT INTO `doubanapp_phonedb` VALUES ('225', '飞利浦（PHILIPS） E188A 星空黑 真三防老人手机 防水 超长待机 直板按键 老年 移动联通2G 学生功能机', '399.00');
INSERT INTO `doubanapp_phonedb` VALUES ('226', '爱心东东\n小米（MI） 红米6 手机 铂银灰 全网通 4GB+64GB', '799.00');
INSERT INTO `doubanapp_phonedb` VALUES ('227', 'vivo U1 水滴全面屏 AI智慧拍照 3GB+32GB 移动联通电信全网通4G手机 极光色', '799.00');
INSERT INTO `doubanapp_phonedb` VALUES ('228', '爱心东东\nOPPO R15x手机【立减300低至2199元+6期免息+智能手环】骁龙660光感屏幕水滴屏全网通 （6G+128G）冰萃银套装', '2299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('229', 'vivo 【套装】iQOO 水滴全面屏 AI三摄拍照 高通骁龙855 4G全网通 电竞游戏 智能 光电蓝【蓝牙耳机套装】 8GB 128GB', '3498.00');
INSERT INTO `doubanapp_phonedb` VALUES ('230', '小米 红米Redmi 红米Note7Pro 游戏手机 暮光金 全网通（6G+128G）', '1649.00');
INSERT INTO `doubanapp_phonedb` VALUES ('231', '华为（HUAWEI） 荣耀 9i 手机【下单即赠4重好礼】 幻夜黑 全网通 4GB+64GB', '1199.00');
INSERT INTO `doubanapp_phonedb` VALUES ('232', '联想S5 Pro GT 6GB+64GB 晶耀黑 骁龙660 2000万AI四摄 偶像级自拍 光学变焦 全网通4G 双卡双待', '1298.00');
INSERT INTO `doubanapp_phonedb` VALUES ('233', '飞利浦（PHILIPS）E255 曜石黑 国际品牌 时尚设计 移动联通2G 双卡双待 翻盖老人 学生备用功能机', '218.00');
INSERT INTO `doubanapp_phonedb` VALUES ('234', '华为荣耀20i 手机 幻夜黑 全网通6GB+64GB', '1599.10');
INSERT INTO `doubanapp_phonedb` VALUES ('235', '飞利浦 PHILIPS E259S 宝石蓝 双屏翻盖 大屏大字 长待机 移动联通2G 双卡双待 老人 学生备用功能机', '319.00');
INSERT INTO `doubanapp_phonedb` VALUES ('236', '天语（K-TOUCH）N1 老人手机 移动/联通 双卡双待 按键直板 老年学生备用功能机 黑色', '99.00');
INSERT INTO `doubanapp_phonedb` VALUES ('237', '小米（MI） 红米6A 智能老人手机 全网通 2G+16G 流沙金', '518.00');
INSERT INTO `doubanapp_phonedb` VALUES ('238', '小米 红米note7Pro 手机 亮黑色 全网通 6G+128G', '1649.00');
INSERT INTO `doubanapp_phonedb` VALUES ('239', '酷派（Coolpad） 智能老人手机 5267 移动联通电信4G 学生机 白色 全网通单卡版 (1G RAM+8G ROM）', '269.00');
INSERT INTO `doubanapp_phonedb` VALUES ('240', '索爱 Z6 移动/联通老人手机 翻盖老年手机双屏双卡双待 金色', '239.00');
INSERT INTO `doubanapp_phonedb` VALUES ('241', '诺亚信（NOAIN） 3310 老人手机 直板按键备用手机 移动联通 双卡双待 大字大声老人机按键机 深蓝色', '99.00');
INSERT INTO `doubanapp_phonedb` VALUES ('242', '小米 红米Redmi 红米Note7Pro 手机 梦幻蓝 全网通(6G+128G)', '1649.00');
INSERT INTO `doubanapp_phonedb` VALUES ('243', '华为（HUAWEI）畅享9 移动4G版全网通 双卡双待 全面屏智能老人老年手机 极光蓝 (4G RAM+64G ROM)', '1059.00');
INSERT INTO `doubanapp_phonedb` VALUES ('244', '美图（meitu） 美图V6 自拍美颜手机 鹿特丹橙 全网通(6GB+128GB)', '1398.00');
INSERT INTO `doubanapp_phonedb` VALUES ('245', 'OPPO【6期免息】R17 幻色渐变机身屏下指纹解锁手机 6.4英寸水滴屏 雾光渐变色 全网通(8G RAM+128G ROM)', '2999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('246', '酷派（Coolpad） 酷派 5267 移动联通电信4G 单卡 智能手机老人机 白色 全网通4G(1GB RAM+8G ROM)', '279.00');
INSERT INTO `doubanapp_phonedb` VALUES ('247', 'Apple 苹果 iPhone X 全面屏手机 深空灰色 全网通 64GB', '5928.00');
INSERT INTO `doubanapp_phonedb` VALUES ('248', '黑莓（BlackBerry）KEY2标准版 6GB+64GB双卡双待 4G全网通手机 黑色 移动联通电信', '3699.00');
INSERT INTO `doubanapp_phonedb` VALUES ('249', 'Meitu 美图M8 月光白 4GB+64GB 自拍美颜 全网通 移动联通电信4G手机', '999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('250', '多亲（QIN） Qin 1s AI功能电话智能电信volte老人手机双卡双待 移动联通4G手机 小爱 铁灰色', '369.00');
INSERT INTO `doubanapp_phonedb` VALUES ('251', '爱心东东\n华为（HUAWEI） 畅享9plus 手机全网通 幻夜黑 4G+128G 高配版', '1439.00');
INSERT INTO `doubanapp_phonedb` VALUES ('252', '中兴（ZTE） BA603 全网通4G 智能老人机手机 双卡双待 黑色 （2+16G）', '365.00');
INSERT INTO `doubanapp_phonedb` VALUES ('253', '华为畅享9s手机 幻夜黑 全网通 4G+128G', '1699.10');
INSERT INTO `doubanapp_phonedb` VALUES ('254', '天语（K-TOUCH）E2 电信2G 直板按键老人手机 超长待机学生备用 老年机 幻夜黑', '149.00');
INSERT INTO `doubanapp_phonedb` VALUES ('255', '欧奇（OUKI） G13 智能手机 1+8GB 移动/联通4G 双卡双待 金色', '259.00');
INSERT INTO `doubanapp_phonedb` VALUES ('256', '诺亚信（NOAIN） C3310 电信手机大字体大声音中老年人手机学生机直板按键经典老人经典时尚 深蓝色', '149.00');
INSERT INTO `doubanapp_phonedb` VALUES ('257', 'OPPO A5【降至999+90天碎屏险】 大容量电池 双卡双待 新品手机 千元机 珊瑚红（3G+32G） 全网通 双卡双待', '999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('258', '飞利浦（PHILIPS）E107 移动联通 老人手机 老年功能机 宝石蓝', '99.00');
INSERT INTO `doubanapp_phonedb` VALUES ('259', '华为（HUAWEI） 荣耀 畅玩6 全网通 移动联通电信4G 智能老人手机 双卡双待 金色 (2GB RAM+16GB ROM)', '578.00');
INSERT INTO `doubanapp_phonedb` VALUES ('260', '索爱 T3 移动/联通 三防老人手机 直板老年手机 超长待机 双卡双待 幻海蓝', '149.00');
INSERT INTO `doubanapp_phonedb` VALUES ('261', '飞利浦（PHILIPS） E163K 宝石蓝 移动联通2G直板按键老人手机 双卡双待 超长待机 老年 学生备用功能机', '139.00');
INSERT INTO `doubanapp_phonedb` VALUES ('262', '飞利浦（PHILIPS） E212A 双屏翻盖老人手机 移动联通老年机 双卡双待 咖啡金', '288.00');
INSERT INTO `doubanapp_phonedb` VALUES ('263', '华为（HUAWEI） 华为畅享7 4G智能手机 香槟金 全网通(3G+32G)', '738.00');
INSERT INTO `doubanapp_phonedb` VALUES ('264', '【 原封现货当天发】华为P30 手机 （华为直供货源送超值豪礼）超感光徕卡三摄 屏内指纹全网通 天空之境 8G+64G', '3988.00');
INSERT INTO `doubanapp_phonedb` VALUES ('265', '飞利浦（PHILIPS）E135X 陨石黑 超长待机 移动联通 翻盖老人手机 老年机', '298.00');
INSERT INTO `doubanapp_phonedb` VALUES ('266', '飞利浦（PHILIPS）E218L 炫舞红 移动联通 翻盖老人手机 双卡双待老年机 学生备用功能机', '298.00');
INSERT INTO `doubanapp_phonedb` VALUES ('267', '红米Redmi Note7Pro 手机 梦幻蓝 6GB 128GB', '1649.99');
INSERT INTO `doubanapp_phonedb` VALUES ('268', '华为荣耀20i手机 幻夜黑 全网通6G+64G（官方正品 送9重礼）', '1599.80');
INSERT INTO `doubanapp_phonedb` VALUES ('269', '天语 X21 刘海全面屏智能手机 全网通4G 移动联通电信 双卡双待一体机 蓝色 尊享版（3GB+64GB）', '661.00');
INSERT INTO `doubanapp_phonedb` VALUES ('270', '联想Z5 Pro GT游戏手机 855旗舰版 8GB+128GB 碳纤黑 光电屏下指纹 2400万AI四摄 全网通4G 双卡双待', '2788.00');
INSERT INTO `doubanapp_phonedb` VALUES ('271', '华为畅享9e 手机 宝石蓝 全网通（3GB+64GB）', '999.10');
INSERT INTO `doubanapp_phonedb` VALUES ('272', '海尔 Haier M360 富贵红 直板按键 移动/联通 老人手机 双卡双待 老年', '198.00');
INSERT INTO `doubanapp_phonedb` VALUES ('273', '华为p30pro 手机 亮黑色 全网通(8G+128G)', '5988.00');
INSERT INTO `doubanapp_phonedb` VALUES ('274', 'vivo Y93s 4G+128G 极光蓝 水滴屏全面屏 移动联通电信全网通4G手机 双卡双待', '1498.00');
INSERT INTO `doubanapp_phonedb` VALUES ('275', '飞利浦（PHILIPS） E163K 宝石蓝 移动联通2G直板按键老人手机 双卡双待 超长待机 老年 学生备用功能机', '139.00');
INSERT INTO `doubanapp_phonedb` VALUES ('276', '爱心东东\n华为（HUAWEI） 华为麦芒7 手机 亮黑色 全网通6GB+64GB', '1668.00');
INSERT INTO `doubanapp_phonedb` VALUES ('277', '华为（HUAWEI） 荣耀8X 手机 幻夜黑 全网通（6G+128G）', '1899.00');
INSERT INTO `doubanapp_phonedb` VALUES ('278', '【京东仓发货6期免息】OPPO Reno手机 4800万像素隐藏摄像头 全景屏拍照全网通 极夜黑 6G+128G 官网标配', '2999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('279', '荣耀 畅玩7X 4GB+32GB 全网通4G全面屏手机 标配版 铂光金', '1099.00');
INSERT INTO `doubanapp_phonedb` VALUES ('280', '华为（HUAWEI） nova 2S 全面屏手机 全网通 浅艾蓝（4G+64G）', '1388.00');
INSERT INTO `doubanapp_phonedb` VALUES ('281', '诺基亚（NOKIA）X71 手机 太空黑 全网通6G+128G（6期免息0首付）', '2699.00');
INSERT INTO `doubanapp_phonedb` VALUES ('282', '爱心东东\nOPPO R15x 全面屏手机 【限时领劵减100】 6G+128G 屏下指纹 骁龙660 游戏 冰萃银 全网通', '2299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('283', '魅族 魅蓝 6T 全面屏手机 全网通公开版 4GB+64GB 香槟金 移动联通电信4G手机 双卡双待', '849.00');
INSERT INTO `doubanapp_phonedb` VALUES ('284', '华为畅享8e 全面屏后置双摄 3G+32G 金色 全网通版 移动联通电信4G手机 双卡双待', '899.00');
INSERT INTO `doubanapp_phonedb` VALUES ('285', '360 N7 Lite 手机 幻影黑 全网通4GB+32GB', '868.00');
INSERT INTO `doubanapp_phonedb` VALUES ('286', '华为（HUAWEI） 华为nova4 手机 苏音蓝 4800万超广角三摄 (8G+128G)', '3099.00');
INSERT INTO `doubanapp_phonedb` VALUES ('287', '飞利浦（PHILIPS） E152Y 皇家蓝 移动联通2G直板按键老人手机 双卡双待 老年 学生备用功能机', '179.00');
INSERT INTO `doubanapp_phonedb` VALUES ('288', '华为畅享9S 手机 全网通4G 极光蓝 4+128G送3期免息+3个月碎屏险+荣耀原装耳机', '1699.00');
INSERT INTO `doubanapp_phonedb` VALUES ('289', '天语（K-TOUCH）I9 迷你智能全面屏小手机 袖珍全网通4G 双卡双待 学生备用卡片 亮黑色（3+32GB）', '589.00');
INSERT INTO `doubanapp_phonedb` VALUES ('290', 'Meitu 美图T9 魔卡少女樱限量版 4GB+128GB 骁龙 全身美型 全面屏 手机 双卡双待 全网通', '3099.00');
INSERT INTO `doubanapp_phonedb` VALUES ('291', '诺基亚（NOKIA） X5 移动联通电信全网通4G 双卡双待 全面屏智能手机 波罗的海蓝 (4G RAM+64G ROM)', '898.00');
INSERT INTO `doubanapp_phonedb` VALUES ('292', '天语（K-TOUCH）V6 翻盖老人手机 移动/联通双卡双待 超长待机 备用老年功能机 红色', '199.00');
INSERT INTO `doubanapp_phonedb` VALUES ('293', '纽曼（Newman） L660S 移动/联通2G 翻盖手机 老人手机 黑红', '148.00');
INSERT INTO `doubanapp_phonedb` VALUES ('294', '华为（HUAWEI）nova4 手机 贝母白 4800万全网通(8+128GB)3期白条免息', '3099.00');
INSERT INTO `doubanapp_phonedb` VALUES ('295', 'OPPO R17 手机【已降200+6期免息+送屏碎保+蓝牙耳机】指纹解锁大屏游戏拍照全网通双卡双待 R17 霓光紫(6GB+128GB)', '2399.00');
INSERT INTO `doubanapp_phonedb` VALUES ('296', '华为（HUAWEI）华为P20 Pro 手机 极光色 全网通6GB+128G【华为官方直供】', '3628.00');
INSERT INTO `doubanapp_phonedb` VALUES ('297', 'OPPO R15x手机【立减100低至2199+6期免息+蓝牙耳机】星云版6+128G指纹解锁全网通 R15x 冰萃银(6GB+128GB)', '2299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('298', '华为（HUAWEI） 荣耀10青春版 全网通 华为手机 幻夜黑 全网通 6GB+128GB分期免息版', '1899.10');
INSERT INTO `doubanapp_phonedb` VALUES ('299', '华为nova4新品【6期免息当天发货送智能手环+移动电源】手机易烊千玺手机极点全面屏 贝母白 4800万高配超广角三摄 8GB+128GB全网通', '3099.00');
INSERT INTO `doubanapp_phonedb` VALUES ('300', '守护宝（上海中兴）U288+ 黑色 环保材质 直板按键 超长待机 移动联通2G 老人 学生备用功能机', '99.00');
INSERT INTO `doubanapp_phonedb` VALUES ('301', 'AGM M2 三防老人手机 全网通 防水防摔 电信移动联通 双卡双待 直板按键老人机 备用机 功能机 黑金', '359.00');
INSERT INTO `doubanapp_phonedb` VALUES ('302', '华为荣耀20i 手机 {三期免息+送碎屏险} 前置3200万AI相机 后置超广角三摄 全网通 幻夜黑 4+128G 全网通', '1599.00');
INSERT INTO `doubanapp_phonedb` VALUES ('303', '三星 Galaxy S9 4GB+128GB 谜夜黑（SM-G9600/DS）智能可变光圈凝时拍摄 全视曲面屏 全网通4G 双卡双待', '4468.00');
INSERT INTO `doubanapp_phonedb` VALUES ('304', 'UNNO 午诺P8 全网通4GB+64GB 移动联通电信 裸眼3D智能4g手机 双卡双待 黑色', '599.00');
INSERT INTO `doubanapp_phonedb` VALUES ('305', '华为（HUAWEI） 华为 畅享6S 移动联通电信 智能老人手机 双卡双待 金色 全网通4G(3G RAM+32G ROM)', '858.00');
INSERT INTO `doubanapp_phonedb` VALUES ('306', '守护宝（上海中兴）N1 直板按键 超长待机 典雅红 2G移动联通 老人手机 学生备用机', '99.00');
INSERT INTO `doubanapp_phonedb` VALUES ('307', 'vivo U1【24日直降100元】水滴全面屏 AI智慧拍照 4GB+64GB 全网通4G手机 极光红', '1099.00');
INSERT INTO `doubanapp_phonedb` VALUES ('308', '华为（HUAWEI）华为P20 手机 极光色 全网通 6GB+64G【华为官方直供】', '2888.00');
INSERT INTO `doubanapp_phonedb` VALUES ('309', 'Apple 苹果 iPhone 6s Plus 4G手机 玫瑰金 全网通 128GB', '2788.00');
INSERT INTO `doubanapp_phonedb` VALUES ('310', '华为 nova4e 手机 雀翎蓝 6G+128G 全网通', '2299.00');
INSERT INTO `doubanapp_phonedb` VALUES ('311', '华为（HUAWEI） 华为荣耀Note10 手机 幻夜黑 全网通6GB+128GB', '2398.00');
INSERT INTO `doubanapp_phonedb` VALUES ('312', '华为（HUAWEI） 荣耀 畅玩8C 手机 铂光金 全网通4GB+32GB', '999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('313', '天语（K-TOUCH）Q21C 电信2G 直板按键老人手机 超长待机学生备用 老年机 幻夜黑', '139.00');
INSERT INTO `doubanapp_phonedb` VALUES ('314', '魅族（MEIZU） 魅族Note8 手机 魅蓝升级 曜黑 全网通 4GB+64GB', '888.00');
INSERT INTO `doubanapp_phonedb` VALUES ('315', 'vivo 【领券减100】Z3 6GB+64GB高通骁龙710 水滴全面屏游戏手机 极光蓝', '1598.00');
INSERT INTO `doubanapp_phonedb` VALUES ('316', '爱心东东\n魅族（MEIZU） 魅族15 全面屏游戏手机 黑色 全网通（4+64G）', '1158.00');
INSERT INTO `doubanapp_phonedb` VALUES ('317', '飞利浦（PHILIPS）E108 炫丽红 直板按键 移动联通2G 双卡双待 老人 老年功能机 学生机备机', '99.00');
INSERT INTO `doubanapp_phonedb` VALUES ('318', 'HAIYU H6（6800毫安）电信三防老人机天翼2G电霸老人手机 黑金', '129.90');
INSERT INTO `doubanapp_phonedb` VALUES ('319', '爱心东东\n小米（MI） 小米9透明尊享版 手机 黑色 全网通8GB+256GB', '3439.00');
INSERT INTO `doubanapp_phonedb` VALUES ('320', 'OPPO A5拍照手机【限时优惠300元低至999元+原装耳机+碎屏险】全面屏大电量双卡双待全网通 （3G+32G）珊瑚红', '999.00');
INSERT INTO `doubanapp_phonedb` VALUES ('321', '华为 （HUAWEI） 华为 畅享9 移动全网通4G智能手机 极光蓝 4GB+64GB', '1042.00');
INSERT INTO `doubanapp_phonedb` VALUES ('322', '诺基亚（NOKIA） 105 移动联通2G 老人手机 新款-黑色', '149.00');
INSERT INTO `doubanapp_phonedb` VALUES ('323', '华为（HUAWEI） 荣耀 畅玩7 手机 黑色 全网通 2GB+16GB', '599.00');
INSERT INTO `doubanapp_phonedb` VALUES ('324', '诺基亚（NOKIA）新105 直板按键 移动联通2G手机 老人手机 学生备用功能机 黑色 移动版', '149.00');
INSERT INTO `doubanapp_phonedb` VALUES ('325', '天语（K-TOUCH）T91 翻盖老人手机 移动/联通双卡双待 超长待机 备用老年功能机 红色', '169.00');
INSERT INTO `doubanapp_phonedb` VALUES ('326', '爱心东东\n华为mate20 手机 【免息赠7件豪礼】 全网通双卡双待 极光色 （6GB+64GB）送豪礼+0首付分期免息', '3499.00');
INSERT INTO `doubanapp_phonedb` VALUES ('327', '华为（HUAWEI）荣耀 畅玩7全网通手机 黑色 2G+16G', '508.00');
INSERT INTO `doubanapp_phonedb` VALUES ('328', '华为（HUAWEI） 荣耀畅玩7 全面屏 智能老人手机 黑色 全网通(2G+16G)', '528.00');
INSERT INTO `doubanapp_phonedb` VALUES ('329', '诺基亚（NOKIA）新款105 移动2G老人机 学生手机 备用功能机 蓝色 单卡', '149.00');
INSERT INTO `doubanapp_phonedb` VALUES ('330', '索爱Z8电信翻盖老人手机老年手机大屏幕功能机超长待机 玫瑰金', '289.00');
INSERT INTO `doubanapp_phonedb` VALUES ('331', '爱心东东\n华为荣耀8x手机 【分期3期免息 下单送八重豪礼】 幻影蓝 全网通6GB+128GB（尊享版）', '1899.00');
INSERT INTO `doubanapp_phonedb` VALUES ('332', '华为（HUAWEI） 华为mate20 pro 手机全面屏 【直降500赠6期白条免息】 极光色 全网通6GB+128GB【下单享7重豪礼】', '4699.00');
INSERT INTO `doubanapp_phonedb` VALUES ('333', '爱心东东\n华为（HUAWEI） 华为畅享9 手机 幻夜黑 4+64G全网通（分期免息0首付）', '1081.00');
INSERT INTO `doubanapp_phonedb` VALUES ('334', '华为荣耀20i 手机 幻夜黑 全网通（6G+64G）', '1599.00');

-- ----------------------------
-- Table structure for doubanapp_weibodb
-- ----------------------------
DROP TABLE IF EXISTS `doubanapp_weibodb`;
CREATE TABLE `doubanapp_weibodb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `hot` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doubanapp_weibodb
-- ----------------------------
INSERT INTO `doubanapp_weibodb` VALUES ('1', '岳云鹏模仿女明星叉腰', '1247550');
INSERT INTO `doubanapp_weibodb` VALUES ('2', '孙红雷将回归极限挑战', '1186269');
INSERT INTO `doubanapp_weibodb` VALUES ('3', '声临花镜', '1167375');
INSERT INTO `doubanapp_weibodb` VALUES ('4', '深圳被砸男童舅舅', '1136550');
INSERT INTO `doubanapp_weibodb` VALUES ('5', '火锅酸奶', '1110782');
INSERT INTO `doubanapp_weibodb` VALUES ('6', '硕士毕业论文研究屁', '839721');
INSERT INTO `doubanapp_weibodb` VALUES ('7', '张镐濂晒全家福', '835500');
INSERT INTO `doubanapp_weibodb` VALUES ('8', '章莹颖学校2名社工被诉', '653456');
INSERT INTO `doubanapp_weibodb` VALUES ('9', '章莹颖案证物照片', '639973');
INSERT INTO `doubanapp_weibodb` VALUES ('10', '凌潇肃比OK手势', '632849');
INSERT INTO `doubanapp_weibodb` VALUES ('11', '和爸爸说了父亲节快乐后', '625274');
INSERT INTO `doubanapp_weibodb` VALUES ('12', '彭昱畅王大陆魏大勋急着去干啥', '426151');
INSERT INTO `doubanapp_weibodb` VALUES ('13', '爸爸的炸毛牙刷', '408865');
INSERT INTO `doubanapp_weibodb` VALUES ('14', '王俊凯帮杨紫拎包', '408011');
INSERT INTO `doubanapp_weibodb` VALUES ('15', '郑爽爸爸给郑爽的备注', '347606');
INSERT INTO `doubanapp_weibodb` VALUES ('16', '吴谢宇声明不需要委托辩护人', '286782');
INSERT INTO `doubanapp_weibodb` VALUES ('17', '检测照片被p了多少的软件', '286097');
INSERT INTO `doubanapp_weibodb` VALUES ('18', '汕头大学未来4届本科生学费全免', '272957');
INSERT INTO `doubanapp_weibodb` VALUES ('19', '哲赢复婚', '271879');
INSERT INTO `doubanapp_weibodb` VALUES ('20', '威尔史密斯 公主造型', '263639');
INSERT INTO `doubanapp_weibodb` VALUES ('21', 'Wendy上衣是海草包改造的', '256351');
INSERT INTO `doubanapp_weibodb` VALUES ('22', '杨丽萍', '250873');
INSERT INTO `doubanapp_weibodb` VALUES ('23', '李子柒', '246576');
INSERT INTO `doubanapp_weibodb` VALUES ('24', '周杰伦宁波', '228185');
INSERT INTO `doubanapp_weibodb` VALUES ('25', '林妙妙一家', '209066');
INSERT INTO `doubanapp_weibodb` VALUES ('26', '中餐厅', '196102');
INSERT INTO `doubanapp_weibodb` VALUES ('27', '人家拍的泸沽湖水性杨花', '180239');
INSERT INTO `doubanapp_weibodb` VALUES ('28', '你眼中十七岁夏天的模样', '169178');
INSERT INTO `doubanapp_weibodb` VALUES ('29', '用拖鞋和姐妹自拍', '167390');
INSERT INTO `doubanapp_weibodb` VALUES ('30', '警方录像还原快递员下跪过程', '159754');
INSERT INTO `doubanapp_weibodb` VALUES ('31', '国乒包揽日本公开赛全部五冠', '155042');
INSERT INTO `doubanapp_weibodb` VALUES ('32', '尤克里里速成方法', '154662');
INSERT INTO `doubanapp_weibodb` VALUES ('33', '专家辟谣高温把玉米晒成爆米花', '153511');
INSERT INTO `doubanapp_weibodb` VALUES ('34', '卧龙6驴友收5000元罚单', '150255');
INSERT INTO `doubanapp_weibodb` VALUES ('35', '老师单身被学生写作文吐槽', '146531');
INSERT INTO `doubanapp_weibodb` VALUES ('36', '易烊千玺踩到周冬雨裙子', '140043');
INSERT INTO `doubanapp_weibodb` VALUES ('37', '何超盈怀孕六个月当伴娘', '134074');
INSERT INTO `doubanapp_weibodb` VALUES ('38', '辛芷蕾黄色纱裙搭黑色长裤', '133364');
INSERT INTO `doubanapp_weibodb` VALUES ('39', '欧阳娜娜弹键盘', '132163');
INSERT INTO `doubanapp_weibodb` VALUES ('40', '动画片人物四根手指的原因', '121043');
INSERT INTO `doubanapp_weibodb` VALUES ('41', '羡慕杨鸣老婆', '119812');
INSERT INTO `doubanapp_weibodb` VALUES ('42', '次惑小仙女 伴娘', '113090');
INSERT INTO `doubanapp_weibodb` VALUES ('43', '文咏珊订婚了', '111379');
INSERT INTO `doubanapp_weibodb` VALUES ('44', '如果王安石有英文名', '107821');
INSERT INTO `doubanapp_weibodb` VALUES ('45', '特朗普谈UFO', '106036');
INSERT INTO `doubanapp_weibodb` VALUES ('46', '黄子韬妈妈太少女了吧', '105747');
INSERT INTO `doubanapp_weibodb` VALUES ('47', '袁成杰情商好高', '105302');
INSERT INTO `doubanapp_weibodb` VALUES ('48', '看完李佳琦直播 吃土', '104593');
INSERT INTO `doubanapp_weibodb` VALUES ('49', '紧张的追剧才是最快乐的', '96695');
INSERT INTO `doubanapp_weibodb` VALUES ('50', '芬兰军队将购买大疆无人机', '78008');
