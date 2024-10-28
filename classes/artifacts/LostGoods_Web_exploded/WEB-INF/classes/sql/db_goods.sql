/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : db_goods

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 20/03/2020 00:42:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lostPlace` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `whoLost` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 243 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (111, 'test', '南京', ' 李庆照', NULL, '2020-03-17', '2', ' 17766091168');
INSERT INTO `goods` VALUES (123, '热伤风', '50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES (222, '固态硬盘', ' 56', ' 李庆照', NULL, '2020-03-17', '1', ' 17766091168');
INSERT INTO `goods` VALUES (229, '手机', '江宁大学城', ' 李庆照', NULL, '2020-03-17', '1', ' 17766091168');
INSERT INTO `goods` VALUES (230, '手机', ' 江宁大学城', 'admin ', NULL, '2020-03-17', '1', ' 17766091168');
INSERT INTO `goods` VALUES (231, '手机', ' 阿凡达 ', 'admin ', NULL, '2020-03-17', '1', ' 17766091168');
INSERT INTO `goods` VALUES (232, '小米手机', ' 江宁大学城', 'admin ', NULL, '2020-03-17', '1', ' 17766091168');
INSERT INTO `goods` VALUES (233, '手机', ' 江宁大学城', 'admin ', NULL, '2020-03-17', '1', ' 17766091168');
INSERT INTO `goods` VALUES (234, '好', '好', '好', '好', '好', '1', '17766091168');
INSERT INTO `goods` VALUES (236, '小米手机', ' 江宁大学城', 'admin ', '非常好用', '2020-03-17', '1', ' 17766091168');
INSERT INTO `goods` VALUES (240, '小米手机', ' 江宁大学城', 'test ', '很好看', '2020-03-17', '1', ' 17766091168');
INSERT INTO `goods` VALUES (241, '小米手机', ' 江宁大学城', 'test ', '1212', '2020-03-17', '1', ' 17766091168');
INSERT INTO `goods` VALUES (242, '小米手机', ' 江宁大学城', 'test ', 'adsas', '2020-03-17', '1', '17766091168');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, '李庆照', '东风系列2', '2020-03-17');
INSERT INTO `message` VALUES (7, 'test', 'hhaha', '2020-03-17');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (33, 'admin', '123456', '2', '1');
INSERT INTO `user` VALUES (48, 'test', '123456', '1', '1');
INSERT INTO `user` VALUES (56, 'admin2', '123456', '1', '1');

SET FOREIGN_KEY_CHECKS = 1;
