/*
Navicat MySQL Data Transfer

Source Server         : 本地连接
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : car_rent

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-03-08 16:33:49
*/
SET FOREIGN_KEY_CHECKS=0;
create database car;
-- ----------------------------
-- Table structure for `car`
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `carid` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `rentprice` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `isrenting` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`carid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('1', '沪A0001', 'SUV', '保时捷', '褐色', '128.0', '1200.0', '10000.0', '0', '04ec8181a73d494d9b01938cd9af7a12.jpg', '卡宴');
INSERT INTO `car` VALUES ('2', '沪A0002', 'SUV', '日产', '白色', '31.0', '500.0', '3000.0', '0', 'd6311194fadb414db5c9c2438bb565bf.jpg', '日产奇骏');
INSERT INTO `car` VALUES ('3', '沪A0003', '小轿车', '日产', '红色', '25.0', '300.0', '3000.0', '0', '2ae54bee207a4ec48cd0c5eaa00fd61d.jpg', '日产轩逸');
INSERT INTO `car` VALUES ('4', '沪A0004', 'SUV', '宝马', '黑色', '56.0', '500.0', '10000.0', '0', '46368ca395aa4b3397ef2cd1ebd417b1.jpg', '宝马X32018款至尊版');
INSERT INTO `car` VALUES ('5', '沪B0001', '小轿车', '本田', '黑色', '16.0', '300.0', '3000.0', '0', 'f06f20d547094e6fb78e20b48cc65f37.jpg', '思域改装版');

-- ----------------------------
-- Table structure for `checktable`
-- ----------------------------
DROP TABLE IF EXISTS `checktable`;
CREATE TABLE `checktable` (
  `checkid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `rentid` varchar(255) DEFAULT NULL,
  `checkno` varchar(255) DEFAULT NULL,
  `checktime` varchar(255) DEFAULT NULL,
  `problem` varchar(255) DEFAULT NULL,
  `paying` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`checkid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checktable
-- ----------------------------
INSERT INTO `checktable` VALUES ('1', 'admin', '1', '1552028217071', '2019-03-08 14:56:57', '正常', '0.0', '正常', '1');
INSERT INTO `checktable` VALUES ('2', 'admin', '3', '1552033839251', '2019-03-08 16:30:39', '没有问题', '0.0', '正常', null);

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `custId` int(11) NOT NULL AUTO_INCREMENT,
  `identity` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `career` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`custId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '622565656546565656', '111111', '猿来入此', '上海 浦东', '13656565656', '程序猿', '男');
INSERT INTO `customer` VALUES ('2', '310103655564656865', '123456', '张三', '上海 闵行', '13656564656', '女汉子', '女');

-- ----------------------------
-- Table structure for `loginlog`
-- ----------------------------
DROP TABLE IF EXISTS `loginlog`;
CREATE TABLE `loginlog` (
  `loginid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `loginip` varchar(255) DEFAULT NULL,
  `logintime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`loginid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loginlog
-- ----------------------------
INSERT INTO `loginlog` VALUES ('1', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-07 14:36:57');
INSERT INTO `loginlog` VALUES ('2', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-07 14:44:16');
INSERT INTO `loginlog` VALUES ('3', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-07 14:44:48');
INSERT INTO `loginlog` VALUES ('4', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-07 14:56:31');
INSERT INTO `loginlog` VALUES ('5', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-07 15:14:46');
INSERT INTO `loginlog` VALUES ('6', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-07 16:04:29');
INSERT INTO `loginlog` VALUES ('7', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-07 17:00:41');
INSERT INTO `loginlog` VALUES ('8', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-08 09:56:42');
INSERT INTO `loginlog` VALUES ('9', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-08 10:22:13');
INSERT INTO `loginlog` VALUES ('10', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-08 10:24:07');
INSERT INTO `loginlog` VALUES ('11', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-08 10:25:12');
INSERT INTO `loginlog` VALUES ('12', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-08 10:32:38');
INSERT INTO `loginlog` VALUES ('13', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-08 10:32:57');
INSERT INTO `loginlog` VALUES ('14', null, 'llq', '0:0:0:0:0:0:0:1', '2019-03-08 10:35:12');
INSERT INTO `loginlog` VALUES ('15', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-08 13:11:51');
INSERT INTO `loginlog` VALUES ('16', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-08 13:21:31');
INSERT INTO `loginlog` VALUES ('17', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-08 13:59:50');
INSERT INTO `loginlog` VALUES ('18', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-08 14:34:25');
INSERT INTO `loginlog` VALUES ('19', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-08 14:36:57');
INSERT INTO `loginlog` VALUES ('20', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-08 14:56:37');
INSERT INTO `loginlog` VALUES ('21', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-08 15:07:30');
INSERT INTO `loginlog` VALUES ('22', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-08 15:14:16');
INSERT INTO `loginlog` VALUES ('23', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-08 16:07:54');
INSERT INTO `loginlog` VALUES ('24', null, 'llq', '0:0:0:0:0:0:0:1', '2019-03-08 16:18:23');
INSERT INTO `loginlog` VALUES ('25', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-08 16:18:48');
INSERT INTO `loginlog` VALUES ('26', null, 'admin', '0:0:0:0:0:0:0:1', '2019-03-08 16:24:44');

-- ----------------------------
-- Table structure for `logtable`
-- ----------------------------
DROP TABLE IF EXISTS `logtable`;
CREATE TABLE `logtable` (
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `actiontime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`logid`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logtable
-- ----------------------------
INSERT INTO `logtable` VALUES ('1', '1', 'admin', '增加车辆', '2019-03-07 16:05:24');
INSERT INTO `logtable` VALUES ('2', '1', 'admin', '修改车辆', '2019-03-07 16:06:55');
INSERT INTO `logtable` VALUES ('3', '1', 'admin', '增加车辆', '2019-03-07 16:08:35');
INSERT INTO `logtable` VALUES ('4', '1', 'admin', '修改车辆', '2019-03-07 16:08:47');
INSERT INTO `logtable` VALUES ('5', '1', 'admin', '增加用户', '2019-03-08 10:22:16');
INSERT INTO `logtable` VALUES ('6', '1', 'admin', '增加用户', '2019-03-08 10:22:21');
INSERT INTO `logtable` VALUES ('7', '1', 'admin', '增加用户', '2019-03-08 10:22:21');
INSERT INTO `logtable` VALUES ('8', '1', 'admin', '增加用户', '2019-03-08 10:23:12');
INSERT INTO `logtable` VALUES ('9', '1', 'admin', '增加用户', '2019-03-08 10:24:10');
INSERT INTO `logtable` VALUES ('10', '1', 'admin', '增加用户', '2019-03-08 10:25:15');
INSERT INTO `logtable` VALUES ('11', '1', 'admin', '删除用户', '2019-03-08 10:25:22');
INSERT INTO `logtable` VALUES ('12', '1', 'admin', '删除用户', '2019-03-08 10:25:23');
INSERT INTO `logtable` VALUES ('13', '1', 'admin', '删除用户', '2019-03-08 10:25:23');
INSERT INTO `logtable` VALUES ('14', '1', 'admin', '删除用户', '2019-03-08 10:25:24');
INSERT INTO `logtable` VALUES ('15', '1', 'admin', '增加用户', '2019-03-08 10:25:29');
INSERT INTO `logtable` VALUES ('16', '1', 'admin', '增加用户', '2019-03-08 10:25:32');
INSERT INTO `logtable` VALUES ('17', '1', 'admin', '增加角色', '2019-03-08 10:26:14');
INSERT INTO `logtable` VALUES ('18', '1', 'admin', '增加用户', '2019-03-08 10:26:16');
INSERT INTO `logtable` VALUES ('19', '1', 'admin', '增加用户', '2019-03-08 10:27:09');
INSERT INTO `logtable` VALUES ('20', '1', 'admin', '修改用户', '2019-03-08 10:28:35');
INSERT INTO `logtable` VALUES ('21', '1', 'admin', '增加用户', '2019-03-08 10:33:04');
INSERT INTO `logtable` VALUES ('22', '1', 'admin', '删除用户', '2019-03-08 10:34:33');
INSERT INTO `logtable` VALUES ('23', '1', 'admin', '增加用户', '2019-03-08 10:34:35');
INSERT INTO `logtable` VALUES ('24', '1', 'admin', '增加用户', '2019-03-08 10:34:57');
INSERT INTO `logtable` VALUES ('25', '7', 'llq', '增加用户', '2019-03-08 10:35:17');
INSERT INTO `logtable` VALUES ('26', '1', 'admin', '添加客户', '2019-03-08 13:22:10');
INSERT INTO `logtable` VALUES ('27', '1', 'admin', '添加客户', '2019-03-08 13:22:55');
INSERT INTO `logtable` VALUES ('28', '1', 'admin', '修改客户', '2019-03-08 13:23:09');
INSERT INTO `logtable` VALUES ('29', '1', 'admin', '添加客户', '2019-03-08 13:24:34');
INSERT INTO `logtable` VALUES ('30', '1', 'admin', '修改客户', '2019-03-08 13:24:51');
INSERT INTO `logtable` VALUES ('31', '1', 'admin', '完成租车', '2019-03-08 14:01:09');
INSERT INTO `logtable` VALUES ('32', '1', 'admin', '完成租车', '2019-03-08 14:09:02');
INSERT INTO `logtable` VALUES ('33', '1', 'admin', '废弃租车单', '2019-03-08 14:09:21');
INSERT INTO `logtable` VALUES ('34', '1', 'admin', '修改租车单', '2019-03-08 14:11:07');
INSERT INTO `logtable` VALUES ('35', '1', 'admin', '修改租车单', '2019-03-08 14:11:57');
INSERT INTO `logtable` VALUES ('36', '1', 'admin', '修改租车单', '2019-03-08 14:12:09');
INSERT INTO `logtable` VALUES ('37', '1', 'admin', '修改租车单', '2019-03-08 14:12:34');
INSERT INTO `logtable` VALUES ('38', '1', 'admin', '完成还车', '2019-03-08 14:58:29');
INSERT INTO `logtable` VALUES ('39', '1', 'admin', '修改检查单', '2019-03-08 14:59:12');
INSERT INTO `logtable` VALUES ('40', '1', 'admin', '废弃租车单', '2019-03-08 15:07:58');
INSERT INTO `logtable` VALUES ('41', '1', 'admin', '增加车辆', '2019-03-08 15:41:14');
INSERT INTO `logtable` VALUES ('42', '1', 'admin', '增加车辆', '2019-03-08 16:09:16');
INSERT INTO `logtable` VALUES ('43', '1', 'admin', '增加车辆', '2019-03-08 16:12:48');
INSERT INTO `logtable` VALUES ('44', '1', 'admin', '修改车辆', '2019-03-08 16:13:03');
INSERT INTO `logtable` VALUES ('45', '1', 'admin', '修改角色', '2019-03-08 16:14:22');
INSERT INTO `logtable` VALUES ('46', '1', 'admin', '增加角色', '2019-03-08 16:14:32');
INSERT INTO `logtable` VALUES ('47', '1', 'admin', '增加角色', '2019-03-08 16:14:46');
INSERT INTO `logtable` VALUES ('48', '1', 'admin', '增加角色', '2019-03-08 16:15:00');
INSERT INTO `logtable` VALUES ('49', '1', 'admin', '删除角色', '2019-03-08 16:15:04');
INSERT INTO `logtable` VALUES ('50', '7', 'llq', '增加用户', '2019-03-08 16:18:31');
INSERT INTO `logtable` VALUES ('51', '1', 'admin', '修改角色', '2019-03-08 16:19:05');
INSERT INTO `logtable` VALUES ('52', '1', 'admin', '修改用户', '2019-03-08 16:26:42');
INSERT INTO `logtable` VALUES ('53', '1', 'admin', '完成租车', '2019-03-08 16:29:34');
INSERT INTO `logtable` VALUES ('54', '1', 'admin', '完成还车', '2019-03-08 16:31:04');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menuId` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parentid` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('2', '汽车管理', '1', '');
INSERT INTO `menu` VALUES ('3', '汽车列表', '2', 'findCarHandler');
INSERT INTO `menu` VALUES ('4', '汽车添加', '2', 'addCar');
INSERT INTO `menu` VALUES ('5', '系统设置', '1', null);
INSERT INTO `menu` VALUES ('6', '角色管理', '5', 'findRoleByName');
INSERT INTO `menu` VALUES ('7', '用户管理', '1', null);
INSERT INTO `menu` VALUES ('8', '用户列表', '7', 'findUsers');
INSERT INTO `menu` VALUES ('9', '添加用户', '7', 'addUser');
INSERT INTO `menu` VALUES ('10', '客户管理', '1', null);
INSERT INTO `menu` VALUES ('11', '客户查询', '10', 'searchCust');
INSERT INTO `menu` VALUES ('12', '客户添加', '10', 'addCust');
INSERT INTO `menu` VALUES ('13', '出租管理', '1', null);
INSERT INTO `menu` VALUES ('14', '查询出租单', '13', 'findRentTable');
INSERT INTO `menu` VALUES ('15', '租车服务', '1', null);
INSERT INTO `menu` VALUES ('16', '客户选车', '15', 'findCarForCustPage');
INSERT INTO `menu` VALUES ('17', '检查单管理', '1', null);
INSERT INTO `menu` VALUES ('18', '查询检查单', '17', 'findChecktable');
INSERT INTO `menu` VALUES ('19', '还车服务', '1', null);
INSERT INTO `menu` VALUES ('20', '客户还车', '19', 'addCheckableByRentNo');
INSERT INTO `menu` VALUES ('21', '统计列表', '1', null);
INSERT INTO `menu` VALUES ('22', '统计月报', '21', 'StatisticsCarInMonth');
-- ----------------------------
-- Table structure for `renttable`
-- ----------------------------
DROP TABLE IF EXISTS `renttable`;
CREATE TABLE `renttable` (
  `rentid` int(255) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `custIdentity` varchar(255) DEFAULT NULL,
  `carNumber` varchar(255) DEFAULT NULL,
  `rentNo` varchar(255) DEFAULT NULL,
  `imprest` varchar(255) DEFAULT NULL,
  `pricePayAble` varchar(255) DEFAULT NULL,
  `realPay` varchar(255) DEFAULT NULL,
  `beginTime` varchar(255) DEFAULT NULL,
  `endTime` varchar(255) DEFAULT NULL,
  `realEndTime` varchar(255) DEFAULT NULL,
  `rentFlag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rentid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of renttable
-- ----------------------------
INSERT INTO `renttable` VALUES ('1', 'admin', '622565656546565656', '沪A0001', '1552024829989', '13200.0', '1200.0', '4000.0', '2019-03-08', '2019-03-09', '2019-03-08 14:56:57', '2');
INSERT INTO `renttable` VALUES ('2', 'admin', '622565656546565656', '沪A0002', '1552025318216', '5500.0', '1500.0', '5000.0', '2019-03-01', '2019-03-04', '2019-03-03', '3');
INSERT INTO `renttable` VALUES ('3', 'admin', '622565656546565656', '沪A0002', '1552033748790', '5500.0', '1000.0', '5000.0', '2019-03-08', '2019-03-10', '2019-03-08 16:30:39', '2');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员');
INSERT INTO `role` VALUES ('2', '销售');

-- ----------------------------
-- Table structure for `role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('1', '2', '1');
INSERT INTO `role_menu` VALUES ('2', '3', '1');
INSERT INTO `role_menu` VALUES ('3', '4', '1');
INSERT INTO `role_menu` VALUES ('4', '5', '1');
INSERT INTO `role_menu` VALUES ('5', '6', '1');
INSERT INTO `role_menu` VALUES ('6', '7', '1');
INSERT INTO `role_menu` VALUES ('7', '8', '1');
INSERT INTO `role_menu` VALUES ('8', '9', '1');
INSERT INTO `role_menu` VALUES ('9', '7', '2');
INSERT INTO `role_menu` VALUES ('10', '8', '2');
INSERT INTO `role_menu` VALUES ('11', '9', '2');
INSERT INTO `role_menu` VALUES ('12', '10', '1');
INSERT INTO `role_menu` VALUES ('13', '11', '1');
INSERT INTO `role_menu` VALUES ('14', '12', '1');
INSERT INTO `role_menu` VALUES ('15', '13', '1');
INSERT INTO `role_menu` VALUES ('16', '14', '1');
INSERT INTO `role_menu` VALUES ('17', '15', '1');
INSERT INTO `role_menu` VALUES ('18', '16', '1');
INSERT INTO `role_menu` VALUES ('19', '17', '1');
INSERT INTO `role_menu` VALUES ('20', '18', '1');
INSERT INTO `role_menu` VALUES ('21', '19', '1');
INSERT INTO `role_menu` VALUES ('22', '20', '1');
INSERT INTO `role_menu` VALUES ('23', '21', '1');
INSERT INTO `role_menu` VALUES ('24', '22', '1');
INSERT INTO `role_menu` VALUES ('25', '10', '2');
INSERT INTO `role_menu` VALUES ('26', '11', '2');
INSERT INTO `role_menu` VALUES ('27', '13', '2');
INSERT INTO `role_menu` VALUES ('28', '14', '2');
INSERT INTO `role_menu` VALUES ('29', '15', '2');
INSERT INTO `role_menu` VALUES ('30', '16', '2');
INSERT INTO `role_menu` VALUES ('31', '17', '2');
INSERT INTO `role_menu` VALUES ('32', '18', '2');
INSERT INTO `role_menu` VALUES ('33', '19', '2');
INSERT INTO `role_menu` VALUES ('34', '20', '2');
INSERT INTO `role_menu` VALUES ('35', '21', '2');
INSERT INTO `role_menu` VALUES ('36', '5', '3');
INSERT INTO `role_menu` VALUES ('37', '10', '2');
INSERT INTO `role_menu` VALUES ('38', '11', '2');
INSERT INTO `role_menu` VALUES ('39', '13', '2');
INSERT INTO `role_menu` VALUES ('40', '14', '2');
INSERT INTO `role_menu` VALUES ('41', '15', '2');
INSERT INTO `role_menu` VALUES ('42', '16', '2');
INSERT INTO `role_menu` VALUES ('43', '17', '2');
INSERT INTO `role_menu` VALUES ('44', '18', '2');
INSERT INTO `role_menu` VALUES ('45', '19', '2');
INSERT INTO `role_menu` VALUES ('46', '20', '2');
INSERT INTO `role_menu` VALUES ('47', '21', '2');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `userpwd` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `roleid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '猿来入此', '622921199005255256', '男', '上海', '13656565656', 'CEO', '1');
INSERT INTO `user` VALUES ('7', 'llq', '111111', '刘晓东', '323232322222222226', '女', '上海市浦东新区幻林东路', '18888888888', '程序员', '2');
