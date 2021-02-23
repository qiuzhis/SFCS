/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50535
Source Host           : localhost:3306
Source Database       : scheduling_course

Target Server Type    : MYSQL
Target Server Version : 50535
File Encoding         : 65001

Date: 2021-02-16 19:51:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_course
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `cno` varchar(255) NOT NULL,
  /*
   * 对应的专业id
   */
  `major_id` int(11) NOT NULL,
  `create_time` int(18) DEFAULT NULL,
  `update_time` int(18) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name_major` (`cno`,`major_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
