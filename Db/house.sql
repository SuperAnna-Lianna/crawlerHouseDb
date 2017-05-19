/*
Navicat MySQL Data Transfer

Source Server         : mysqlDb
Source Server Version : 50016
Source Host           : localhost:3308
Source Database       : house

Target Server Type    : MYSQL
Target Server Version : 50016
File Encoding         : 65001

Date: 2017-05-08 15:41:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` int(255) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `code` varchar(255) default NULL,
  `link` varchar(255) default NULL,
  `parentsId` int(225) default NULL,
  `parentsName` varchar(255) default NULL,
  `parentsCode` varchar(255) default NULL,
  `level` int(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `prim` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('1', '广州', 'gz', null, '0', '中国', '0', null);
INSERT INTO `area` VALUES ('2', '天河', 'tianhe', null, '1', '广州', 'gz', null);
INSERT INTO `area` VALUES ('3', '越秀', 'yuexiu', null, '1', '广州', 'gz', null);
INSERT INTO `area` VALUES ('4', '东光', 'dongguanzhuang', null, '2', '天河', 'tianhe', null);
INSERT INTO `area` VALUES ('5', '东咋', 'dongzhan', null, '2', '天河', 'tianhe', null);
INSERT INTO `area` VALUES ('6', '高通  ', 'gaotang', null, '2', '天河', 'tianhe', null);
INSERT INTO `area` VALUES ('7', '东风', 'dongfengxi', null, '3', '越秀', 'yuexiu', null);
INSERT INTO `area` VALUES ('8', '汾水', 'fenshui', null, '3', '越秀', 'yuexiu', null);

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `subtitle` varchar(255) default NULL,
  `price` decimal(25,0) default NULL,
  `unitprice` decimal(25,0) default NULL,
  `firstPayPrice` decimal(25,0) default NULL,
  `taxPrice` decimal(25,0) default NULL,
  `roomMainInfo` varchar(255) default NULL,
  `roomSubInfo` varchar(255) default NULL,
  `roomMainType` varchar(255) default NULL,
  `roomSubType` varchar(255) default NULL,
  `areaMainInfo` varchar(255) default NULL,
  `areaSubInfo` varchar(255) default NULL,
  `communityName` varchar(255) default NULL,
  `areaName` varchar(255) default NULL,
  `schoolName` varchar(255) default NULL,
  `tags` varchar(255) default NULL,
  `decoratingDesc` varchar(255) default NULL,
  `houseTypeDesc` varchar(255) default NULL,
  `investmentDesc` varchar(255) default NULL,
  `villageDesc` varchar(255) default NULL,
  `schoolDesc` varchar(255) default NULL,
  `sellingPointDesc` varchar(255) default NULL,
  `reason4saleDesc` varchar(255) default NULL,
  `supportingDesc` varchar(255) default NULL,
  `trafficDesc` varchar(255) default NULL,
  `createtime` datetime default NULL,
  `baseContent1` varchar(255) default NULL,
  `baseContent2` varchar(255) default NULL,
  `baseContent3` varchar(255) default NULL,
  `baseContent4` varchar(255) default NULL,
  `baseContent5` varchar(255) default NULL,
  `baseContent6` varchar(255) default NULL,
  `baseContent7` varchar(255) default NULL,
  `baseContent8` varchar(255) default NULL,
  `baseContent9` varchar(255) default NULL,
  `baseContent10` varchar(255) default NULL,
  `baseContent11` varchar(255) default NULL,
  `baseContent12` varchar(255) default NULL,
  `transactionContent1` varchar(255) default NULL,
  `transactionContent2` varchar(255) default NULL,
  `transactionContent3` varchar(255) default NULL,
  `transactionContent4` varchar(255) default NULL,
  `transactionContent5` varchar(255) default NULL,
  `transactionContent6` varchar(255) default NULL,
  `transactionContent7` varchar(255) default NULL,
  `transactionContent8` varchar(255) default NULL,
  `transactionContent9` varchar(255) default NULL,
  `transactionContent10` varchar(255) default NULL,
  `roomSize` double(10,0) default NULL,
  `chengjiaoPrice` decimal(10,0) default NULL,
  `favcount` int(255) default '0',
  `cartcount` int(255) default '0',
  `html` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of house
-- ----------------------------

-- ----------------------------
-- Table structure for houseindex
-- ----------------------------
DROP TABLE IF EXISTS `houseindex`;
CREATE TABLE `houseindex` (
  `id` int(255) NOT NULL auto_increment,
  `code` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `status` int(255) NOT NULL default '1',
  `createtime` date default NULL,
  `updatetime` date default NULL,
  `lastCheckDate` date default NULL,
  `hasdetail` int(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of houseindex
-- ----------------------------

-- ----------------------------
-- Table structure for houseprice
-- ----------------------------
DROP TABLE IF EXISTS `houseprice`;
CREATE TABLE `houseprice` (
  `id` int(255) NOT NULL auto_increment,
  `code` varchar(255) default NULL,
  `price` decimal(25,0) default NULL,
  `date` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of houseprice
-- ----------------------------

-- ----------------------------
-- Table structure for process
-- ----------------------------
DROP TABLE IF EXISTS `process`;
CREATE TABLE `process` (
  `id` int(255) NOT NULL auto_increment,
  `area` varchar(255) default NULL,
  `pageNo` int(255) default NULL,
  `finished` int(255) default NULL,
  `type` int(255) default NULL,
  `createtime` datetime default NULL,
  `finishtime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of process
-- ----------------------------
