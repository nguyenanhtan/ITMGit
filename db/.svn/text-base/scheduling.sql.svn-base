/*
Navicat MySQL Data Transfer

Source Server         : Tony
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : timetabling

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2014-07-03 22:58:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `salt` varchar(25) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `role` enum('ADMIN','SUPER_ADMIN') NOT NULL DEFAULT 'ADMIN',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4215 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin123', 'ba2169055dd4705b415e066a575bc2fb', '2f5ef024-d7fc-452e-b348-e', 'incredibletran@gmail.com', 'SUPER_ADMIN');
INSERT INTO `users` VALUES ('2', 'hatn', 'ba2169055dd4705b415e066a575bc2fb', '2f5ef024-d7fc-452e-b348-e', 'incredibletran1988@gmail.com', 'SUPER_ADMIN');
INSERT INTO `users` VALUES ('4213', 'admin', 'aaaaa', 'fffff', 'incredibletran1988@gmail.com', 'ADMIN');
INSERT INTO `users` VALUES ('4214', 'admin123f', '920214c1b8c0fe20487f51bae6828891', 'abc-xyz-kmlnopq', 'aaa@yaoo.com', 'ADMIN');
