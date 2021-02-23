/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50535
Source Host           : localhost:3306
Source Database       : scheduling_course

Target Server Type    : MYSQL
Target Server Version : 50535
File Encoding         : 65001

Date: 2021-02-16 19:51:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_stu_term
-- ----------------------------
DROP TABLE IF EXISTS `t_stu_term`;
CREATE TABLE `t_stu_term` (
  `stu_no` varchar(255) NOT NULL,
  `term` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `create_time` int(18) DEFAULT NULL,
  `update_time` int(18) DEFAULT NULL,
  UNIQUE KEY `idx_stu_no_term_year` (`stu_no`,`term`,`year`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
