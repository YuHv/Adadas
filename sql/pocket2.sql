/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : pocket2

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-06-23 11:04:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL DEFAULT '0',
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  `realname` varchar(8) NOT NULL,
  `telephone` int(11) NOT NULL,
  `lasttime` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES ('1', '0', 'admin', '123', '德玛', '1000', '2014-06-17 00:11:11');
INSERT INTO `administrator` VALUES ('2', '1', 'hsiaosan', '123', '德玛西亚', '10000', '2014/06/17 06:42:44');
INSERT INTO `administrator` VALUES ('3', '1', '凹凸曼', '123', '迪加', '125800', '2014/06/17 06:45:38');
INSERT INTO `administrator` VALUES ('4', '1', '艾希', '123', '啦啦啦', '110', '2014/06/17 06:47:39');

-- ----------------------------
-- Table structure for announcement
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `Time` varchar(50) NOT NULL,
  `username` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of announcement
-- ----------------------------
INSERT INTO `announcement` VALUES ('11', 'qwqw', '2014/06/30 01:48:27', '凹凸曼');
INSERT INTO `announcement` VALUES ('12', 'qwqw', '2014/07/02 08:11:35', '凹凸曼');
INSERT INTO `announcement` VALUES ('13', 'qwqw', '2014/07/02 08:46:47', '凹凸曼');

-- ----------------------------
-- Table structure for basket
-- ----------------------------
DROP TABLE IF EXISTS `basket`;
CREATE TABLE `basket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_basket_menu` (`m_id`),
  CONSTRAINT `FK_basket_menu` FOREIGN KEY (`m_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of basket
-- ----------------------------
INSERT INTO `basket` VALUES ('11', '1', '8');
INSERT INTO `basket` VALUES ('12', '1', '8');
INSERT INTO `basket` VALUES ('13', '1', '8');
INSERT INTO `basket` VALUES ('14', '2', '5');
INSERT INTO `basket` VALUES ('15', '4', '8');
INSERT INTO `basket` VALUES ('16', '5', '8');
INSERT INTO `basket` VALUES ('17', '7', '8');
INSERT INTO `basket` VALUES ('18', '1', '8');
INSERT INTO `basket` VALUES ('19', '2', '8');

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` int(11) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `address` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `level` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES ('1', 'hsiaosan', '123', '123456', '中国', 'hsiaosan@126.cn', '0', 'images/img23.jpg');
INSERT INTO `client` VALUES ('2', '奥特曼', '123', '10000', '中国', 'aoteman@126.cn', '100', 'images/img23.jpg');
INSERT INTO `client` VALUES ('5', '123', '123', '123', '123', '123', '0', 'images/img23.jpg');
INSERT INTO `client` VALUES ('7', '1234', '1234', '1234', '1234', '1234', '0', 'images/img23.jpg');
INSERT INTO `client` VALUES ('8', '12', '12', '12', '12', '12', '0', 'images/img2.jpg');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dishes` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `synopsis` varchar(100) NOT NULL,
  `launchtime` varchar(50) NOT NULL,
  `path` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `sum` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'CLIMACOOL vent m 跑步鞋', '35', '运动，男士，跑鞋', '2014-06-07 10:20:13', 'images/s1.jpg', '0', '100');
INSERT INTO `menu` VALUES ('2', 'climacool m 男子跑步鞋', '28', '运动，男士，跑鞋', '2014-06-07 10:20:59', 'images/s2.jpg', '0', '22');
INSERT INTO `menu` VALUES ('3', 'UltraBOOST Parley 跑步鞋', '32', '运动，男士，跑鞋', '2014-06-07 10:21:32', 'images/s3.jpg', '0', '5');
INSERT INTO `menu` VALUES ('4', 'UltraBOOST X Parley LTD 跑步鞋', '25', '运动，男士，跑鞋', '2014-06-07 10:22:07', 'images/s4.jpg', '0', '0');
INSERT INTO `menu` VALUES ('5', 'UltraBOOST Iridescent', '10', '运动，男士，跑鞋', '2014-06-07 10:22:39', 'images/s5.jpg', '0', '6');
INSERT INTO `menu` VALUES ('6', 'PureBOOST Clima China 跑步鞋', '20', '运动，男士，跑鞋', '2014-06-07 10:23:07', 'images/s6.jpg', '0', '0');
INSERT INTO `menu` VALUES ('7', 'PureBOOST Xpose 跑步鞋', '20', '运动，男士，跑鞋', '2017-12-30 20:18:50', 'images/s7.jpg', '0', '0');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sum` varchar(50) NOT NULL,
  `downtime` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `address` varchar(32) NOT NULL,
  `price` varchar(50) NOT NULL,
  `ischeckout` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_orders_client` (`c_id`),
  KEY `FK_orders_menu` (`m_id`),
  CONSTRAINT `FK_orders_client` FOREIGN KEY (`c_id`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_orders_menu` FOREIGN KEY (`m_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('2', '1', '1', '痘痘', '1', '2014-06-09 21:35:36', '10000', '中国', '10', '0', '38');
INSERT INTO `orders` VALUES ('6', '1', '5', '奥特曼', '1', '2014/06/12 09:17:07', '10000 ', '中国', '10', '0', '38');
INSERT INTO `orders` VALUES ('7', '2', '2', '奥特曼他弟弟', '1', '2014/06/23 19:39:27', '10000 ', '中国', '28', '0', '38');
INSERT INTO `orders` VALUES ('8', '2', '2', '奥特曼啊', '1', '2014/06/23 19:51:50', '10000 ', '中国', '28', '0', '38');
INSERT INTO `orders` VALUES ('9', '2', '2', '奥特曼', '1', '2017/12/30 16:17:00', '10000 ', '中国', '28', '1', '38');
INSERT INTO `orders` VALUES ('12', '8', '5', '12', '1', '2017/12/30 22:50:31', '12 ', '12', '10', '1', '38');
INSERT INTO `orders` VALUES ('14', '8', '1', '12', '1', '2017/12/30 23:12:07', '12 ', '12', '35', '1', '38');
INSERT INTO `orders` VALUES ('15', '8', '2', '12', '1', '2017/12/30 23:12:48', '12 ', '12', '28', '1', '38');

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `content` varchar(250) NOT NULL,
  `time` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_review_client` (`c_id`),
  KEY `FK_review_menu` (`m_id`),
  CONSTRAINT `FK_review_client` FOREIGN KEY (`c_id`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_review_menu` FOREIGN KEY (`m_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of review
-- ----------------------------
INSERT INTO `review` VALUES ('1', '2', '5', 'abcde', '2014-06-08 14:25:01');
INSERT INTO `review` VALUES ('2', '1', '1', '1111', '2014-06-08 17:03:51');
INSERT INTO `review` VALUES ('3', '1', '5', '鞋子不错', '2014-06-09 10:41:52');
INSERT INTO `review` VALUES ('4', '2', '1', '哈哈哈哈哈哈哈啊哈', '2014-06-12 08:28:24');
INSERT INTO `review` VALUES ('9', '2', '5', '成功', '2014/06/23 13:56:31');
INSERT INTO `review` VALUES ('10', '2', '5', '成功啦', '2014/06/23 13:57:55');
INSERT INTO `review` VALUES ('11', '2', '2', '好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃', '2014/06/23 19:18:29');
INSERT INTO `review` VALUES ('15', '2', '2', '城管嘎嘎嘎灌灌灌灌灌', '2014/06/23 19:33:24');
INSERT INTO `review` VALUES ('21', '2', '2', '大发大沙发沙发', '2014/06/23 19:18:29');
INSERT INTO `review` VALUES ('22', '2', '2', '是发给对方回复的国家的国家规定', '2014/06/23 19:18:29');
INSERT INTO `review` VALUES ('23', '2', '2', '好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃好吃', '2014/06/23 19:18:29');
INSERT INTO `review` VALUES ('24', '2', '2', '不好吃\r\n阿萨德是否规范和国际化和空间规划法规的', '2017/12/30 16:16:41');
INSERT INTO `review` VALUES ('25', '8', '5', '驱蚊器翁', '2017/12/30 22:13:08');
INSERT INTO `review` VALUES ('26', '8', '2', 'erwr', '2017/12/30 22:56:06');
INSERT INTO `review` VALUES ('27', '8', '2', 'werwer', '2017/12/30 22:56:15');
INSERT INTO `review` VALUES ('28', '8', '2', 'werwerwer', '2017/12/30 22:56:21');
INSERT INTO `review` VALUES ('29', '8', '2', 'werwerwerwer', '2017/12/30 22:56:31');
INSERT INTO `review` VALUES ('30', '8', '2', 'werwerw', '2017/12/30 22:56:37');
INSERT INTO `review` VALUES ('31', '8', '2', 'wewer', '2017/12/30 22:56:43');
INSERT INTO `review` VALUES ('32', '8', '2', 'werwer', '2017/12/30 22:56:50');
