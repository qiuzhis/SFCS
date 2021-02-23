/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50535
Source Host           : localhost:3306
Source Database       : scheduling_course

Target Server Type    : MYSQL
Target Server Version : 50535
File Encoding         : 65001

Date: 2021-02-16 19:51:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_scheduling_course
-- ----------------------------
DROP TABLE IF EXISTS `t_scheduling_course`;
CREATE TABLE `t_scheduling_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cno` int(11) NOT NULL,
  `c_start_time` int(18) DEFAULT NULL,
  `c_end_time` int(18) DEFAULT NULL,
  `create_time` int(18) DEFAULT NULL,
  `update_time` int(18) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_cno_start_end_time` (`cno`,`c_start_time`,`c_end_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;