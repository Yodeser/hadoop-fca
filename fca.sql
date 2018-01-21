/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : fca

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2018-01-21 19:04:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attribute
-- ----------------------------
DROP TABLE IF EXISTS `attribute`;
CREATE TABLE `attribute` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for field
-- ----------------------------
DROP TABLE IF EXISTS `field`;
CREATE TABLE `field` (
  `id` int(255) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for formal_concept
-- ----------------------------
DROP TABLE IF EXISTS `formal_concept`;
CREATE TABLE `formal_concept` (
  `hash` int(11) NOT NULL,
  `num_objects` int(11) DEFAULT NULL,
  `num_attbs` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for has_field
-- ----------------------------
DROP TABLE IF EXISTS `has_field`;
CREATE TABLE `has_field` (
  `id` int(11) NOT NULL,
  `value` varchar(200) NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `field_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  CONSTRAINT `object_id` FOREIGN KEY (`object_id`) REFERENCES `object` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for object
-- ----------------------------
DROP TABLE IF EXISTS `object`;
CREATE TABLE `object` (
  `id` int(11) NOT NULL DEFAULT '0',
  `hadoop_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`,`hadoop_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
