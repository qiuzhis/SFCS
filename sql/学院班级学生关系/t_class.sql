/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50535
Source Host           : localhost:3306
Source Database       : scheduling_course

Target Server Type    : MYSQL
Target Server Version : 50535
File Encoding         : 65001

Date: 2021-02-16 19:52:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_class
-- ----------------------------
DROP TABLE IF EXISTS `t_class`;
CREATE TABLE `t_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `class_no` varchar(255) NOT NULL,
  `major_id` int(11) NOT NULL,
  `create_time` int(18) DEFAULT NULL,
  `update_time` int(18) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name_major` (`class_no`,`major_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
