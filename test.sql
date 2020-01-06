/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100500
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MariaDB
 Target Server Version : 100500
 File Encoding         : 65001

 Date: 06/01/2020 17:24:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_operation
-- ----------------------------
DROP TABLE IF EXISTS `t_operation`;
CREATE TABLE `t_operation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operation_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '操作码',
  `mtime` datetime(0) NOT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_operation
-- ----------------------------
INSERT INTO `t_operation` VALUES (1, '69191ebb-9ec2-492b-97af-a2abd9152f89', '2020-01-05 16:46:55');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'UUID',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '电子邮箱',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  `available_traffic` bigint(255) NOT NULL DEFAULT 0 COMMENT '可用流量',
  `balance` int(255) NOT NULL DEFAULT 0 COMMENT '用户余额',
  `level` int(255) NOT NULL DEFAULT 0 COMMENT '用户等级',
  `registration_time` datetime(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '注册时间',
  `status` int(255) NOT NULL DEFAULT 1 COMMENT '状态',
  `remember_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '操作码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, '1aefeddd-727e-428f-87db-3e7f01329f16', '9@gmail.com', 'aaa', 0, 0, 0, '2020-01-04 16:53:02', 1, '3e77fdf9-1fd0-448d-8969-918b95def7c1');

-- ----------------------------
-- Table structure for t_user_node
-- ----------------------------
DROP TABLE IF EXISTS `t_user_node`;
CREATE TABLE `t_user_node`  (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'UUID',
  `available_traffic` bigint(255) NOT NULL COMMENT '可用流量',
  `upload_traffic` bigint(255) NOT NULL COMMENT '上载流量',
  `download_traffic` bigint(255) NOT NULL COMMENT '下载流量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
