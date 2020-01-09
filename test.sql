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

 Date: 09/01/2020 19:31:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_invitation
-- ----------------------------
DROP TABLE IF EXISTS `t_invitation`;
CREATE TABLE `t_invitation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `invitation_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '邀请码',
  `status` int(255) NOT NULL DEFAULT 1 COMMENT '状态',
  `start_time` bigint(20) NOT NULL COMMENT '开始时间',
  `end_time` bigint(20) NOT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_invitation
-- ----------------------------
INSERT INTO `t_invitation` VALUES (1, '095f1af7-df90-422f-9e47-29ae5afe43e3', 0, 1578361964000, 1579415460000);

-- ----------------------------
-- Table structure for t_logo
-- ----------------------------
DROP TABLE IF EXISTS `t_logo`;
CREATE TABLE `t_logo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '网站品牌',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '网站昵称',
  `host` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '网站URL',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_logo
-- ----------------------------
INSERT INTO `t_logo` VALUES (1, 'IOCLOUD.ME', 'IO洞', 'http://iocloud.site');

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '公告内容',
  `time` datetime(0) NOT NULL COMMENT '公告时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES (1, '<p style=\"color: red\">1.感谢各位在2019年的支持与陪伴，IO洞在2020年将会更加努力向前。祝大家新年快乐！</p>', '2020-01-01 15:26:11');

-- ----------------------------
-- Table structure for t_operation
-- ----------------------------
DROP TABLE IF EXISTS `t_operation`;
CREATE TABLE `t_operation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operation_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '操作码',
  `mtime` datetime(0) NOT NULL DEFAULT current_timestamp() COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_operation
-- ----------------------------
INSERT INTO `t_operation` VALUES (1, '69191ebb-9ec2-492b-97af-a2abd9152f89', '2020-01-05 16:46:55');

-- ----------------------------
-- Table structure for t_tgaddress
-- ----------------------------
DROP TABLE IF EXISTS `t_tgaddress`;
CREATE TABLE `t_tgaddress`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'tg群组地址',
  `personal_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'tg个人地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tgaddress
-- ----------------------------
INSERT INTO `t_tgaddress` VALUES (1, 'https://t.me/iocloud_me', 'https://t.me/nmsl_ojbk');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'UUID',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '电子邮箱',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  `available_traffic` bigint(255) NOT NULL DEFAULT 1024 COMMENT '可用流量',
  `balance` double(255, 0) NOT NULL DEFAULT 0 COMMENT '用户余额',
  `level` int(255) NOT NULL DEFAULT 0 COMMENT '用户等级',
  `registration_time` datetime(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '注册时间',
  `status` int(255) NOT NULL DEFAULT 1 COMMENT '状态',
  `mail_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '操作码',
  `set_meal_time` datetime(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '套餐到期日',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (42, '8593eb5e-012a-4809-9cbb-ba1de2080eea', 'xqcjty79560@chacuo.net', 'a', 1024, 0, 0, '2020-01-08 18:03:45', 0, 'bbce548f-6753-4a32-99c5-864d9aea3786', '2020-01-09 18:03:44');
INSERT INTO `t_user` VALUES (44, '03eafa47-26ab-4829-b6b1-e35fc639e669', 'sensdqjtmge@gmail.com', 'a', 1024, 0, 0, '2020-01-08 20:22:58', 0, '579fcff0-011d-4f4b-b15b-33adc38c226d', '2020-01-09 18:03:44');
INSERT INTO `t_user` VALUES (45, '6c397ca8-30c2-4c8c-8716-70f72f6cd829', 'fetexo8788@seomail.top', 'a', 1024, 3000, 0, '2020-01-09 16:32:41', 0, 'cbdecdd7-a9fc-4ad9-8798-19eb40716427', '2020-01-09 18:03:44');
INSERT INTO `t_user` VALUES (46, 'ea0ca0af-77a2-4f99-9edb-76487d068991', 'dewox87581@janmail.org', 'a', 1024, 0, 0, '2020-01-09 14:43:48', 0, '4eaece33-cc03-4052-b37c-95cf5c379cad', '2020-01-09 18:03:44');
INSERT INTO `t_user` VALUES (47, '566a009e-e8cf-406e-92b4-394c651c2331', 'jicfds13465@chacuo.net', 'a', 1024000000, 3000, 0, '2020-01-09 17:51:35', 0, 'a0cb0cc6-0470-4f39-8386-9d78c3947ba2', '2020-01-09 18:03:44');
INSERT INTO `t_user` VALUES (48, '9874128e-e755-49e7-99cd-b1110c523477', 'pymger42831@chacuo.net', 'a', 6015, 1000, 0, '2020-01-09 18:43:25', 0, 'c152c679-94cc-4f46-9f57-c2ac1d6b6697', '2020-01-09 18:43:25');

-- ----------------------------
-- Table structure for t_user_node
-- ----------------------------
DROP TABLE IF EXISTS `t_user_node`;
CREATE TABLE `t_user_node`  (
  `id` int(255) NOT NULL DEFAULT 1 COMMENT '用户ID',
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'UUID',
  `available_traffic` bigint(255) NOT NULL DEFAULT 1024 COMMENT '可用流量',
  `upload_traffic` bigint(255) NOT NULL DEFAULT 1 COMMENT '上载流量',
  `download_traffic` bigint(255) NOT NULL DEFAULT 1 COMMENT '下载流量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
