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

 Date: 21/01/2020 19:24:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_gateway
-- ----------------------------
DROP TABLE IF EXISTS `t_gateway`;
CREATE TABLE `t_gateway`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `gateway` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_gateway
-- ----------------------------
INSERT INTO `t_gateway` VALUES (1, '支付宝', 'ALIPAY');
INSERT INTO `t_gateway` VALUES (2, '微信', 'WECHAT_PAY');
INSERT INTO `t_gateway` VALUES (3, '国际信用卡', 'STRIPE');

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
-- Table structure for t_node
-- ----------------------------
DROP TABLE IF EXISTS `t_node`;
CREATE TABLE `t_node`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '节点名称',
  `load` int(255) NOT NULL DEFAULT 1 COMMENT '节点负载',
  `function` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'proxy' COMMENT '节点特殊技能',
  `status` int(255) NOT NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_node
-- ----------------------------
INSERT INTO `t_node` VALUES (1, '香港', 1, 'proxy', 0);
INSERT INTO `t_node` VALUES (2, '美国', 50, 'proxy', 1);

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '公告内容',
  `time` datetime(0) NOT NULL COMMENT '公告时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES (1, '<p style=\"color: red\">1.感谢各位在2019年的支持与陪伴，IO洞在2020年将会更加努力向前。祝大家新年快乐！</p>', '2020-01-01 15:26:11');
INSERT INTO `t_notice` VALUES (2, '<p style=\"color: red\">旗舰区已从IPLC内网专线升级为IEPL国际以太网专线，大陆中继已经部署隧道加密，本月内还会新增电信CN2中继。</p><p style=\"color: red\">如果您在使用旗舰区节点时遇到任何问题，请立刻通过工单系统向我们反馈，我们将会通过您的反馈对节点进行优化。</p><p style=\"color: red\">套餐商店新增三种套餐，分别为：神树，宇智波，中忍，欢迎前往选购。</p><p style=\"color: red\">如果您用过，请查看便捷导入使用。如果您从未用过，请先前往教程中心。</p><p style=\"color: red\">邀请TA人注册可获得10G流量和TA充值金额的20%作为奖励，具体请前往推介计划页面查看。</p><p style=\"color: red\">奖励金可以通过加密货币提现，点击 申请开通提现权限 ，运维人员会在7天内进行审核并回复。</p><p style=\"color: red\">高级套餐用户可免费获取多种会员共享福利账号，相关账号信息请在福利账号页面查看使用。</p><p style=\"color: red\">绑定Telegram 后，可以私聊 Bot 进行签到，查询订阅链接，查询流量等操作。</p><p style=\"color: red\">TG 机器人: [ 点击启动 ] TG公告频道（仅推送重要公告，建议加入）: [ 点击加入 ]</p>', '2020-01-09 20:03:32');

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
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` double(255, 2) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(255) NOT NULL DEFAULT 1,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES (37, 'b17cf3d1-4835-4267-87b6-e38edae204fa', 123.85, '充值', '充值123.85元', 1, '9874128e-e755-49e7-99cd-b1110c523477');
INSERT INTO `t_order` VALUES (38, '34148ac3-75dc-4468-88e5-71bbf4062ccc', 10.00, '充值', '充值10.0元', 1, '9874128e-e755-49e7-99cd-b1110c523477');
INSERT INTO `t_order` VALUES (39, '4c836dd4-05d7-411a-b699-d2491e1d1369', 20.00, '充值', '充值20.0元', 1, '9874128e-e755-49e7-99cd-b1110c523477');
INSERT INTO `t_order` VALUES (40, '9d212d5c-2a22-46ec-bd9a-5e563ef6bed0', 20.00, '充值', '充值20.0元', 1, '9874128e-e755-49e7-99cd-b1110c523477');

-- ----------------------------
-- Table structure for t_payment
-- ----------------------------
DROP TABLE IF EXISTS `t_payment`;
CREATE TABLE `t_payment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `accesskey` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `public_key` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `private_key` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `api_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_payment
-- ----------------------------
INSERT INTO `t_payment` VALUES (1, '62ce59da-6555-446e-992f-97c26a1d110a', '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', 'http://127.0.0.1:8001/v1', 'CNY');

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
INSERT INTO `t_user` VALUES (48, '9874128e-e755-49e7-99cd-b1110c523477', 'pymger42831@chacuo.net', 'a', 6015, 15145, 0, '2020-01-12 14:38:59', 0, 'c152c679-94cc-4f46-9f57-c2ac1d6b6697', '2020-01-12 14:38:59');

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
