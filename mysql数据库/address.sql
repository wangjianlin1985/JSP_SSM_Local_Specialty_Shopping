/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : onlinesshopping

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-04-21 15:59:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `creater` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updater` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('11', '10', '天津市河西区丰和路1039号', 'USER', '2018-04-20 00:34:41', '', '2018-04-21 15:33:09');
INSERT INTO `address` VALUES ('12', '10', '天津市南开区1048号', 'USER', '2018-04-20 00:35:14', '', '2018-04-21 15:33:09');
INSERT INTO `address` VALUES ('13', '12', '江苏省苏州市工业区1039号', 'USER', '2018-04-20 00:47:58', '', '2018-04-21 15:33:09');

-- ----------------------------
-- Table structure for aftersales
-- ----------------------------
DROP TABLE IF EXISTS `aftersales`;
CREATE TABLE `aftersales` (
  `int` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `goodsid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cause` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creater` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`int`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of aftersales
-- ----------------------------
INSERT INTO `aftersales` VALUES ('1', '10', '18', '31', '2', '2', 'dddd', 'USER', '2018-04-21 15:37:10');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `typeid` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `descript` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `messageurl` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `photourl` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  `total` int(11) NOT NULL,
  `count` int(11) NOT NULL COMMENT '还剩下多少',
  `tuijian` int(11) NOT NULL,
  `creater` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updater` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('17', '青海特产野生虫草菇', '14', '远山田礼', '远山田礼 青海特产野生虫草菇 自然晒干货 野山菌干蘑菇 青海虫草菇 50g', '138.00', '5fbe0f3c-3dff-44d2-b482-ceea7e8b7cff.png', '89b2c552-d1c6-450f-a9ce-1e3157092848.png', '50.00', '0', '1000', '1', 'ADMIN', '2018-04-21 15:04:09', null, null);
INSERT INTO `goods` VALUES ('18', '诺木洪特级红枸杞', '16', '买一送一 ', '买一送一 藏境 诺木洪特级红枸杞 青海特产 柴达木红枸杞 袋装250g', '39.90', '16bfed66-5fa5-4c3c-89e4-088e7e3c541f.png', 'de72cbbf-08b5-4326-828e-7f2909f4e156.png', '250.00', '1', '999', '0', 'ADMIN', '2018-04-21 15:07:47', null, null);
INSERT INTO `goods` VALUES ('19', '有理堂', '16', '买一送一 ', '有理堂（YOU LI TANG） 买一送一 贡果红枸杞子青海特产柴达木枸杞250', '49.00', '2123ca25-bcbd-4b73-84c4-b591d940cdd9.png', 'ce216719-0357-4906-b4b5-21fbfbd11716.png', '250.00', '0', '1000', '1', 'ADMIN', '2018-04-21 15:11:56', null, null);
INSERT INTO `goods` VALUES ('20', '青海野生黑枸杞', '16', '青海野生黑枸杞', '紫蓝花海 青海野生黑枸杞诺木洪特产精选大果枸杞子200克实木礼盒装枸杞', '300.00', 'd39540d4-1cb1-4275-a2a1-260105928d77.png', '98cf76bb-9bdc-483c-9ac1-4bdbf5f5f1f4.png', '200.00', '0', '1000', '0', 'ADMIN', '2018-04-21 15:13:55', null, null);
INSERT INTO `goods` VALUES ('21', '黑枸杞', '16', '黑枸杞', '康象 青海特产黑枸杞野生正宗免洗枸杞', '48.00', 'aa5fc94c-7e6c-4113-b1a5-17c8d34a6a08.png', 'a4e7789a-539f-4996-bcc6-636c313ed45a.png', '100.00', '0', '1000', '1', 'ADMIN', '2018-04-21 15:15:43', null, null);
INSERT INTO `goods` VALUES ('22', '风干牦牛肉', '17', '风干牦牛肉', '西北骄 免邮青海特产风干牦牛肉干150g青海风干牦牛肉特色零食 香辣', '66.00', 'af910221-9dae-4b5b-aac2-05e7ac7abf69.png', '4e65017b-c429-4979-bf18-dff4d47dce29.png', '150.00', '0', '1000', '1', 'ADMIN', '2018-04-21 15:17:22', null, null);
INSERT INTO `goods` VALUES ('23', '牦牛肉卤制品', '17', '牦牛肉卤制品', '青海扶贫馆】 牦牛肉卤制品 138g 休闲零食小包装 青海特产小吃 五香味', '80.00', '72a68e3d-a14c-4731-b026-bfe84394f1cc.png', '75322bfa-7140-414b-ad9b-9cb2eccd81e7.png', '138.00', '0', '1000', '1', 'ADMIN', '2018-04-21 15:18:59', null, null);
INSERT INTO `goods` VALUES ('24', ' 野生油菜花结晶蜂蜜', '18', ' 野生油菜花结晶蜂蜜', '【西宁馆】 青海门源特产 野生油菜花结晶蜂蜜1000g', '153.00', 'd2decc25-ee1f-4d17-b5f4-03b08a79d615.png', '3e74efa6-aa82-45f2-af85-271cf470293d.png', '1000.00', '1', '999', '1', 'ADMIN', '2018-04-21 15:20:42', null, null);
INSERT INTO `goods` VALUES ('25', '百花蜜', '18', '百花蜜', '花宝 百花蜂蜜500克*瓶 结晶蜜 青海蜜青海特产 百花蜜', '68.00', 'b2fed5c5-4a1e-4cdf-8afd-1d1c1c0fa77b.png', '12c8dbdb-5456-4e2f-8f96-8ee23623e75d.png', '500.00', '0', '500', '0', 'ADMIN', '2018-04-21 15:22:19', null, null);
INSERT INTO `goods` VALUES ('26', '风干藏牦牛肉干', '19', '风干藏牦牛肉干', '可可西里风干藏牦牛肉干原味160g 青海西藏特产 休闲零食', '86.00', '39533fc4-5482-40a2-8233-2dd7e4e99dc4.png', '0beddc48-fcd2-4599-bdd3-b6022f181c81.png', '160.00', '0', '1000', '1', 'ADMIN', '2018-04-21 15:24:14', null, null);
INSERT INTO `goods` VALUES ('27', '藏牦牛肉干', '19', '藏牦牛肉干', '可可西里藏牦牛肉干210g五香 实惠装青海西藏特产 休闲零食', '45.00', '5fbb0a0f-bec8-4afa-92c6-8a456b42d031.png', 'ed46bd4e-4f46-4c65-bcd6-0d2f58967ac0.png', '210.00', '0', '1000', '1', 'ADMIN', '2018-04-21 15:26:01', null, null);
INSERT INTO `goods` VALUES ('28', '牦牛肉干', '19', '牦牛肉干', '可可西里 牦牛肉干实惠装 五香麻辣咖喱多口味 独立小包青海西藏特产零食 210g咖喱', '50.00', '459d09b8-3e8c-4ff9-9fe4-556def6b4a2d.png', '3421bc8b-d11b-45fd-b0da-32e544a12bcd.png', '210.00', '0', '1000', '1', 'ADMIN', '2018-04-21 15:27:42', null, null);

-- ----------------------------
-- Table structure for goodstype
-- ----------------------------
DROP TABLE IF EXISTS `goodstype`;
CREATE TABLE `goodstype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodstype` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `creater` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updater` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of goodstype
-- ----------------------------
INSERT INTO `goodstype` VALUES ('14', '菌菇', 'ADMIN', '2018-04-21 14:58:14', null, null);
INSERT INTO `goodstype` VALUES ('16', '枸杞', 'ADMIN', '2018-04-21 14:58:39', null, null);
INSERT INTO `goodstype` VALUES ('17', '肉干', 'ADMIN', '2018-04-21 14:58:57', null, null);
INSERT INTO `goodstype` VALUES ('18', '蜂蜜', 'ADMIN', '2018-04-21 14:59:41', null, null);
INSERT INTO `goodstype` VALUES ('19', '牛肉', 'ADMIN', '2018-04-21 15:00:17', null, null);

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `ordernum` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `goodsid` int(11) NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `senddate` datetime DEFAULT NULL,
  `creater` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updater` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES ('30', '10', '937505', '24', '12', '1', '153.00', '2', null, 'USER', '2018-04-21 15:34:36', null, null);
INSERT INTO `orderdetail` VALUES ('31', '10', '273720', '18', '12', '1', '39.90', '5', null, 'USER', '2018-04-21 15:34:41', null, null);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordernum` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL,
  `creater` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updater` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('41', '937505', '10', 'USER', '2018-04-21 15:34:36', null, null);
INSERT INTO `orders` VALUES ('42', '273720', '10', 'USER', '2018-04-21 15:34:41', null, null);

-- ----------------------------
-- Table structure for shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `goodsid` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `creater` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updater` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES ('1', '10', '23', '1', '80.00', 'USER', '2018-04-21 15:32:16', null, null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `usersign` varchar(200) DEFAULT NULL,
  `creater` varchar(20) NOT NULL,
  `createdate` datetime NOT NULL,
  `updater` varchar(20) DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('9', 'lingyu', '111111', '143wee4545@qq.com', '1', '23', '18322698594', '0', '如风如雨', 'REGISTER', '2018-04-01 02:58:43', '', '2018-04-21 14:48:02');
INSERT INTO `user` VALUES ('10', 'fengyu', '111111', '34343434545@qq.com', '2', '23', '15210259635', '0', '再见为了下一次相遇', 'REGISTER', '2018-04-01 03:03:20', '', '2018-04-21 14:48:07');
INSERT INTO `user` VALUES ('11', 'admin', 'admin', '14567676545@qq.com', '1', '44', '15825789685', '1', '开开心心就好', 'admin', '2018-04-01 03:35:17', '', '2018-04-21 14:48:09');
INSERT INTO `user` VALUES ('12', 'suhong', '111111', '14676004545@qq.com', '1', '22', '13958642589', '0', '无心无为', 'REGISTER', '2018-04-01 03:03:20', '', '2018-04-19 23:03:41');
