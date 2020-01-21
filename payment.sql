/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100500
 Source Host           : localhost:3306
 Source Schema         : payment

 Target Server Type    : MariaDB
 Target Server Version : 100500
 File Encoding         : 65001

 Date: 21/01/2020 19:24:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_me
-- ----------------------------
DROP TABLE IF EXISTS `t_me`;
CREATE TABLE `t_me`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `accesskey` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(255) NOT NULL DEFAULT 1,
  `public_key` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '应用公钥',
  `private_key` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '应用私钥',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_me
-- ----------------------------
INSERT INTO `t_me` VALUES (1, '62ce59da-6555-446e-992f-97c26a1d110a', 1, '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');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` double(255, 2) NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gateway` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `callback_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cancel_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `success_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(255) NOT NULL DEFAULT 0,
  `is_pay` int(255) NOT NULL DEFAULT 1,
  `me_assesskey` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES (8, 'b17cf3d1-4835-4267-87b6-e38edae204fa', 123.85, 'CNY', 'ALIPAY', '充值', '充值123.85元', 'http://127.0.0.1:8001/v1', 'http://127.0.0.1:8001/v1', 'http://127.0.0.1:8001/v1', 0, 1, '62ce59da-6555-446e-992f-97c26a1d110a');
INSERT INTO `t_order` VALUES (9, '34148ac3-75dc-4468-88e5-71bbf4062ccc', 10.00, 'CNY', 'ALIPAY', '充值', '充值10.0元', 'http://127.0.0.1:8001/v1', 'http://127.0.0.1:8001/v1', 'http://127.0.0.1:8001/v1', 0, 1, '62ce59da-6555-446e-992f-97c26a1d110a');
INSERT INTO `t_order` VALUES (10, '4c836dd4-05d7-411a-b699-d2491e1d1369', 20.00, 'CNY', 'ALIPAY', '充值', '充值20.0元', 'http://127.0.0.1:8001/v1', 'http://127.0.0.1:8001/v1', 'http://127.0.0.1:8001/v1', 0, 1, '62ce59da-6555-446e-992f-97c26a1d110a');
INSERT INTO `t_order` VALUES (11, '9d212d5c-2a22-46ec-bd9a-5e563ef6bed0', 20.00, 'CNY', 'ALIPAY', '充值', '充值20.0元', 'http://127.0.0.1:8001/v1', 'http://127.0.0.1:8001/v1', 'http://127.0.0.1:8001/v1', 0, 1, '62ce59da-6555-446e-992f-97c26a1d110a');

SET FOREIGN_KEY_CHECKS = 1;
