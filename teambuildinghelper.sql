/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50539
 Source Host           : localhost:3306
 Source Schema         : teambuildinghelper

 Target Server Type    : MySQL
 Target Server Version : 50539
 File Encoding         : 65001

 Date: 26/04/2019 16:47:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activityName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `activityContent` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `activityPrice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `acencyId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (1, '测试活动', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '99', '1');
INSERT INTO `activity` VALUES (2, '测试活动2', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '199', '2');
INSERT INTO `activity` VALUES (3, '测试活动3', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '59,99', '1,2');
INSERT INTO `activity` VALUES (37, '测试活动', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '99', '1');
INSERT INTO `activity` VALUES (38, '测试活动2', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '199', '2');
INSERT INTO `activity` VALUES (39, '测试活动3', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '59,99', '1,2');
INSERT INTO `activity` VALUES (40, '测试活动', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '99', '1');
INSERT INTO `activity` VALUES (41, '测试活动2', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '199', '2');
INSERT INTO `activity` VALUES (42, '测试活动3', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '59,99', '1,2');
INSERT INTO `activity` VALUES (43, '测试活动', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '99', '1');
INSERT INTO `activity` VALUES (44, '测试活动2', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '199', '2');
INSERT INTO `activity` VALUES (45, '测试活动3', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '59,99', '1,2');
INSERT INTO `activity` VALUES (46, '测试活动', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '99', '1');
INSERT INTO `activity` VALUES (47, '测试活动2', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '199', '2');
INSERT INTO `activity` VALUES (48, '测试活动3', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '59,99', '1,2');
INSERT INTO `activity` VALUES (49, '测试活动', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '99', '1');
INSERT INTO `activity` VALUES (50, '测试活动2', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '199', '2');
INSERT INTO `activity` VALUES (51, '测试活动3', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '59,99', '1,2');
INSERT INTO `activity` VALUES (52, '测试活动', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '99', '1');
INSERT INTO `activity` VALUES (53, '测试活动2', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '199', '2');
INSERT INTO `activity` VALUES (54, '测试活动3', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '59,99', '1,2');
INSERT INTO `activity` VALUES (55, '测试活动', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '99', '1');
INSERT INTO `activity` VALUES (56, '测试活动2', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '199', '2');
INSERT INTO `activity` VALUES (57, '测试活动3', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '59,99', '1,2');
INSERT INTO `activity` VALUES (58, '测试活动', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '99', '1');
INSERT INTO `activity` VALUES (59, '测试活动2', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '199', '2');
INSERT INTO `activity` VALUES (60, '测试活动3', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '59,99', '1,2');
INSERT INTO `activity` VALUES (61, '测试活动', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '99', '1');
INSERT INTO `activity` VALUES (62, '测试活动2', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '199', '2');
INSERT INTO `activity` VALUES (63, '测试活动3', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '59,99', '1,2');
INSERT INTO `activity` VALUES (64, '测试活动', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '99', '1');
INSERT INTO `activity` VALUES (65, '测试活动2', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '199', '2');
INSERT INTO `activity` VALUES (66, '测试活动3', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '59,99', '1,2');
INSERT INTO `activity` VALUES (67, '测试活动', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '99', '1');
INSERT INTO `activity` VALUES (68, '测试活动2', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '199', '2');
INSERT INTO `activity` VALUES (69, '测试活动3', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '59,99', '1,2');
INSERT INTO `activity` VALUES (70, '测试活动', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '99', '1');
INSERT INTO `activity` VALUES (71, '测试活动2', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '199', '2');
INSERT INTO `activity` VALUES (72, '测试活动3', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '59,99', '1,2');
INSERT INTO `activity` VALUES (73, '测试活动', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '99', '1');
INSERT INTO `activity` VALUES (74, '测试活动2', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '199', '2');
INSERT INTO `activity` VALUES (75, '测试活动3', '测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容测试活动内容', '59,99', '1,2');

-- ----------------------------
-- Table structure for agency
-- ----------------------------
DROP TABLE IF EXISTS `agency`;
CREATE TABLE `agency`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agencyName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `agencyPhone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of agency
-- ----------------------------
INSERT INTO `agency` VALUES (1, '阿里巴巴', '12345678910');
INSERT INTO `agency` VALUES (2, '腾讯', '01987654321');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsPrice` decimal(10, 2) NULL DEFAULT NULL,
  `goodsImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '测试商品1', 99.00, 'upload/temp/tmp_7d6eb556e75f398ac6bb2ed2ea5d3b4664ab4170a18a9f9f.jpg');
INSERT INTO `goods` VALUES (2, '测试商品2', 199.00, 'upload/temp/tmp_7b3619370627c511c032b493b36cffe339e3ce31bef31664.jpg');
INSERT INTO `goods` VALUES (3, '测试商品3', 299.00, 'upload/temp/tmp_7cba6cf421da68225232d0c6aed9916d82c6fa21e239456a.jpg');
INSERT INTO `goods` VALUES (4, '测试商品1', 99.00, 'upload/temp/tmp_7d6eb556e75f398ac6bb2ed2ea5d3b4664ab4170a18a9f9f.jpg');
INSERT INTO `goods` VALUES (5, '测试商品2', 199.00, 'upload/temp/tmp_7b3619370627c511c032b493b36cffe339e3ce31bef31664.jpg');
INSERT INTO `goods` VALUES (6, '测试商品3', 299.00, 'upload/temp/tmp_7cba6cf421da68225232d0c6aed9916d82c6fa21e239456a.jpg');
INSERT INTO `goods` VALUES (7, '测试商品1', 99.00, 'upload/temp/tmp_7d6eb556e75f398ac6bb2ed2ea5d3b4664ab4170a18a9f9f.jpg');
INSERT INTO `goods` VALUES (8, '测试商品2', 199.00, 'upload/temp/tmp_7b3619370627c511c032b493b36cffe339e3ce31bef31664.jpg');
INSERT INTO `goods` VALUES (9, '测试商品3', 299.00, 'upload/temp/tmp_7cba6cf421da68225232d0c6aed9916d82c6fa21e239456a.jpg');
INSERT INTO `goods` VALUES (10, '测试商品1', 99.00, 'upload/temp/tmp_7d6eb556e75f398ac6bb2ed2ea5d3b4664ab4170a18a9f9f.jpg');
INSERT INTO `goods` VALUES (11, '测试商品2', 199.00, 'upload/temp/tmp_7b3619370627c511c032b493b36cffe339e3ce31bef31664.jpg');
INSERT INTO `goods` VALUES (12, '测试商品3', 299.00, 'upload/temp/tmp_7cba6cf421da68225232d0c6aed9916d82c6fa21e239456a.jpg');
INSERT INTO `goods` VALUES (13, '测试商品1', 99.00, 'upload/temp/tmp_7d6eb556e75f398ac6bb2ed2ea5d3b4664ab4170a18a9f9f.jpg');
INSERT INTO `goods` VALUES (14, '测试商品2', 199.00, 'upload/temp/tmp_7b3619370627c511c032b493b36cffe339e3ce31bef31664.jpg');
INSERT INTO `goods` VALUES (15, '测试商品3', 299.00, 'upload/temp/tmp_7cba6cf421da68225232d0c6aed9916d82c6fa21e239456a.jpg');
INSERT INTO `goods` VALUES (16, '测试商品1', 99.00, 'upload/temp/tmp_7d6eb556e75f398ac6bb2ed2ea5d3b4664ab4170a18a9f9f.jpg');
INSERT INTO `goods` VALUES (17, '测试商品2', 199.00, 'upload/temp/tmp_7b3619370627c511c032b493b36cffe339e3ce31bef31664.jpg');
INSERT INTO `goods` VALUES (18, '测试商品3', 299.00, 'upload/temp/tmp_7cba6cf421da68225232d0c6aed9916d82c6fa21e239456a.jpg');
INSERT INTO `goods` VALUES (19, '测试商品1', 99.00, 'upload/temp/tmp_7d6eb556e75f398ac6bb2ed2ea5d3b4664ab4170a18a9f9f.jpg');
INSERT INTO `goods` VALUES (20, '测试商品2', 199.00, 'upload/temp/tmp_7b3619370627c511c032b493b36cffe339e3ce31bef31664.jpg');
INSERT INTO `goods` VALUES (21, '测试商品3', 299.00, 'upload/temp/tmp_7cba6cf421da68225232d0c6aed9916d82c6fa21e239456a.jpg');
INSERT INTO `goods` VALUES (22, '测试商品1', 99.00, 'upload/temp/tmp_7d6eb556e75f398ac6bb2ed2ea5d3b4664ab4170a18a9f9f.jpg');
INSERT INTO `goods` VALUES (23, '测试商品2', 199.00, 'upload/temp/tmp_7b3619370627c511c032b493b36cffe339e3ce31bef31664.jpg');
INSERT INTO `goods` VALUES (24, '测试商品3', 299.00, 'upload/temp/tmp_7cba6cf421da68225232d0c6aed9916d82c6fa21e239456a.jpg');
INSERT INTO `goods` VALUES (25, '测试商品1', 99.00, 'upload/temp/tmp_7d6eb556e75f398ac6bb2ed2ea5d3b4664ab4170a18a9f9f.jpg');
INSERT INTO `goods` VALUES (26, '测试商品2', 199.00, 'upload/temp/tmp_7b3619370627c511c032b493b36cffe339e3ce31bef31664.jpg');
INSERT INTO `goods` VALUES (27, '测试商品3', 299.00, 'upload/temp/tmp_7cba6cf421da68225232d0c6aed9916d82c6fa21e239456a.jpg');
INSERT INTO `goods` VALUES (28, '测试商品1', 99.00, 'upload/temp/tmp_7d6eb556e75f398ac6bb2ed2ea5d3b4664ab4170a18a9f9f.jpg');
INSERT INTO `goods` VALUES (29, '测试商品2', 199.00, 'upload/temp/tmp_7b3619370627c511c032b493b36cffe339e3ce31bef31664.jpg');
INSERT INTO `goods` VALUES (30, '测试商品3', 299.00, 'upload/temp/tmp_7cba6cf421da68225232d0c6aed9916d82c6fa21e239456a.jpg');
INSERT INTO `goods` VALUES (31, '测试商品1', 99.00, 'upload/temp/tmp_7d6eb556e75f398ac6bb2ed2ea5d3b4664ab4170a18a9f9f.jpg');
INSERT INTO `goods` VALUES (32, '测试商品2', 199.00, 'upload/temp/tmp_7b3619370627c511c032b493b36cffe339e3ce31bef31664.jpg');
INSERT INTO `goods` VALUES (33, '测试商品3', 299.00, 'upload/temp/tmp_7cba6cf421da68225232d0c6aed9916d82c6fa21e239456a.jpg');
INSERT INTO `goods` VALUES (34, '测试商品1', 99.00, 'upload/temp/tmp_7d6eb556e75f398ac6bb2ed2ea5d3b4664ab4170a18a9f9f.jpg');
INSERT INTO `goods` VALUES (35, '测试商品2', 199.00, 'upload/temp/tmp_7b3619370627c511c032b493b36cffe339e3ce31bef31664.jpg');
INSERT INTO `goods` VALUES (36, '测试商品3', 299.00, 'upload/temp/tmp_7cba6cf421da68225232d0c6aed9916d82c6fa21e239456a.jpg');
INSERT INTO `goods` VALUES (37, '测试商品1', 99.00, 'upload/temp/tmp_7d6eb556e75f398ac6bb2ed2ea5d3b4664ab4170a18a9f9f.jpg');
INSERT INTO `goods` VALUES (38, '测试商品2', 199.00, 'upload/temp/tmp_7b3619370627c511c032b493b36cffe339e3ce31bef31664.jpg');
INSERT INTO `goods` VALUES (39, '测试商品3', 299.00, 'upload/temp/tmp_7cba6cf421da68225232d0c6aed9916d82c6fa21e239456a.jpg');
INSERT INTO `goods` VALUES (40, '测试商品1', 99.00, 'upload/temp/tmp_7d6eb556e75f398ac6bb2ed2ea5d3b4664ab4170a18a9f9f.jpg');
INSERT INTO `goods` VALUES (41, '测试商品2', 199.00, 'upload/temp/tmp_7b3619370627c511c032b493b36cffe339e3ce31bef31664.jpg');
INSERT INTO `goods` VALUES (42, '测试商品3', 299.00, 'upload/temp/tmp_7cba6cf421da68225232d0c6aed9916d82c6fa21e239456a.jpg');
INSERT INTO `goods` VALUES (43, '测试商品1', 99.00, 'upload/temp/tmp_7d6eb556e75f398ac6bb2ed2ea5d3b4664ab4170a18a9f9f.jpg');
INSERT INTO `goods` VALUES (44, '测试商品2', 199.00, 'upload/temp/tmp_7b3619370627c511c032b493b36cffe339e3ce31bef31664.jpg');
INSERT INTO `goods` VALUES (45, '测试商品3', 299.00, 'upload/temp/tmp_7cba6cf421da68225232d0c6aed9916d82c6fa21e239456a.jpg');

-- ----------------------------
-- Table structure for invitation
-- ----------------------------
DROP TABLE IF EXISTS `invitation`;
CREATE TABLE `invitation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invitationTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `invitationContent` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inviterName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inviterId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of invitation
-- ----------------------------
INSERT INTO `invitation` VALUES (1, '我结婚啦', '测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容。', 'test', 1);
INSERT INTO `invitation` VALUES (2, '同学聚会', '好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。', 'test', 1);
INSERT INTO `invitation` VALUES (3, '团日活动', '响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。', 'test', 1);
INSERT INTO `invitation` VALUES (4, '我结婚啦', '测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容。', 'test', 1);
INSERT INTO `invitation` VALUES (5, '同学聚会', '好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。', 'test', 1);
INSERT INTO `invitation` VALUES (6, '团日活动', '响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。', 'test', 1);
INSERT INTO `invitation` VALUES (7, '我结婚啦', '测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容。', 'test', 1);
INSERT INTO `invitation` VALUES (8, '同学聚会', '好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。', 'test', 1);
INSERT INTO `invitation` VALUES (9, '团日活动', '响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。', 'test', 1);
INSERT INTO `invitation` VALUES (10, '我结婚啦', '测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容。', 'test', 1);
INSERT INTO `invitation` VALUES (11, '同学聚会', '好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。', 'test', 1);
INSERT INTO `invitation` VALUES (12, '团日活动', '响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。', 'test', 1);
INSERT INTO `invitation` VALUES (13, '我结婚啦', '测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容。', 'test', 1);
INSERT INTO `invitation` VALUES (14, '同学聚会', '好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。', 'test', 1);
INSERT INTO `invitation` VALUES (15, '团日活动', '响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。', 'test', 1);
INSERT INTO `invitation` VALUES (16, '我结婚啦', '测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容。', 'test', 1);
INSERT INTO `invitation` VALUES (17, '同学聚会', '好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。', 'test', 1);
INSERT INTO `invitation` VALUES (18, '团日活动', '响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。', 'test', 1);
INSERT INTO `invitation` VALUES (19, '我结婚啦', '测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容。', 'test', 1);
INSERT INTO `invitation` VALUES (20, '同学聚会', '好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。', 'test', 1);
INSERT INTO `invitation` VALUES (21, '团日活动', '响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。', 'test', 1);
INSERT INTO `invitation` VALUES (22, '我结婚啦', '测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容。', 'test', 1);
INSERT INTO `invitation` VALUES (23, '同学聚会', '好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。', 'test', 1);
INSERT INTO `invitation` VALUES (24, '团日活动', '响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。', 'test', 1);
INSERT INTO `invitation` VALUES (25, '我结婚啦', '测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容。', 'test', 1);
INSERT INTO `invitation` VALUES (26, '同学聚会', '好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。', 'test', 1);
INSERT INTO `invitation` VALUES (27, '团日活动', '响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。', 'test', 1);
INSERT INTO `invitation` VALUES (28, '我结婚啦', '测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容，测试结婚请帖内容。', 'test', 1);
INSERT INTO `invitation` VALUES (29, '同学聚会', '好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。好久不见了，测试同学聚会内容。', 'test', 1);
INSERT INTO `invitation` VALUES (30, '团日活动', '响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号召，积极参加团日活动。响应号修改', 'test', 1);
INSERT INTO `invitation` VALUES (33, '旅游啦', '旅游啦啦啦啦啦啦啦啦啦啦啦啦啦啦', 'hellom', 1);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderType` int(11) NULL DEFAULT NULL,
  `goodsId` int(11) NULL DEFAULT NULL,
  `activityId` int(11) NULL DEFAULT NULL,
  `agencyId` int(11) NULL DEFAULT NULL,
  `userId` int(11) NULL DEFAULT NULL,
  `agencyPrice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, 1, 1, NULL, NULL, 1, NULL);
INSERT INTO `order` VALUES (2, 1, 3, NULL, NULL, 1, NULL);
INSERT INTO `order` VALUES (3, 1, 3, NULL, NULL, 1, NULL);
INSERT INTO `order` VALUES (4, 1, 2, NULL, NULL, 1, NULL);
INSERT INTO `order` VALUES (5, 2, NULL, 1, 1, 1, '99');
INSERT INTO `order` VALUES (6, 2, NULL, 3, 2, 1, '99');
INSERT INTO `order` VALUES (7, 2, NULL, 3, 1, 1, '59');
INSERT INTO `order` VALUES (8, 2, NULL, 2, 2, 1, '199');
INSERT INTO `order` VALUES (9, 2, NULL, 1, 1, 1, '99');
INSERT INTO `order` VALUES (10, 2, NULL, 2, 2, 1, '199');
INSERT INTO `order` VALUES (11, 2, NULL, 3, 2, 1, '99');
INSERT INTO `order` VALUES (12, 2, NULL, 3, 1, 1, '59');
INSERT INTO `order` VALUES (13, 1, 4, NULL, NULL, 1, NULL);
INSERT INTO `order` VALUES (14, 1, 2, NULL, NULL, 1, NULL);
INSERT INTO `order` VALUES (15, 1, 5, NULL, NULL, 1, NULL);
INSERT INTO `order` VALUES (16, 1, 6, NULL, NULL, 1, NULL);
INSERT INTO `order` VALUES (17, 1, 7, NULL, NULL, 1, NULL);
INSERT INTO `order` VALUES (18, 1, 9, NULL, NULL, 1, NULL);
INSERT INTO `order` VALUES (19, 1, 8, NULL, NULL, 1, NULL);
INSERT INTO `order` VALUES (20, 1, 11, NULL, NULL, 1, NULL);
INSERT INTO `order` VALUES (21, 1, 12, NULL, NULL, 1, NULL);

-- ----------------------------
-- Table structure for scene
-- ----------------------------
DROP TABLE IF EXISTS `scene`;
CREATE TABLE `scene`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of scene
-- ----------------------------
INSERT INTO `scene` VALUES (22, 'upload/temp/wxd7eab3f26584a646.o6zAJs6NVvKBvN6ZsilTGedSjPgc.DHl8xxKUF9sDb354149dc5e7eac75b409c24c002aa5a.jpg', 1);
INSERT INTO `scene` VALUES (23, 'upload/temp/wxd7eab3f26584a646.o6zAJs6NVvKBvN6ZsilTGedSjPgc.xGIOmi53Ii8q2f624d959102ab7ebdb60ca865ec2cb5.jpg', 1);
INSERT INTO `scene` VALUES (24, 'upload/temp/wxd7eab3f26584a646.o6zAJs6NVvKBvN6ZsilTGedSjPgc.kLlWQHSc17FG6ba38c7a78ff56d10656033be5dc1a4e.jpg', 1);
INSERT INTO `scene` VALUES (25, 'upload/temp/wxd7eab3f26584a646.o6zAJs6NVvKBvN6ZsilTGedSjPgc.0MYYvfWxs8C161a83d83d29a228213328237df161722.jpg', 1);
INSERT INTO `scene` VALUES (26, 'upload/temp/wxd7eab3f26584a646.o6zAJs6NVvKBvN6ZsilTGedSjPgc.T2bBjgbq1gMDbe9709e99d4ca143078cd671881d5ada.jpg', 1);
INSERT INTO `scene` VALUES (27, 'upload/temp/wxd7eab3f26584a646.o6zAJs6NVvKBvN6ZsilTGedSjPgc.LGIWvRAf2ijS65888cf60150b0004c4d838e85b0f7e8.jpg', 1);
INSERT INTO `scene` VALUES (28, 'upload/temp/wxd7eab3f26584a646.o6zAJs6NVvKBvN6ZsilTGedSjPgc.D8KnarcxxPWl437cefe2fe601f931b44f00c0862463e.jpg', 1);
INSERT INTO `scene` VALUES (29, 'upload/temp/wxd7eab3f26584a646.o6zAJs6NVvKBvN6ZsilTGedSjPgc.AOyXvRaU1OYufe32c4a9d3624246f771f86156caa8f9.jpg', 1);
INSERT INTO `scene` VALUES (30, 'upload/temp/wxd7eab3f26584a646.o6zAJs6NVvKBvN6ZsilTGedSjPgc.G8DBmEIJOeJi897249d88b5e0524bec8034267ea7dd6.jpg', 1);
INSERT INTO `scene` VALUES (31, 'upload/temp/wxd7eab3f26584a646.o6zAJs6NVvKBvN6ZsilTGedSjPgc.hq9v4zcpxkNy23d20234db7fc0f52bfc395553625771.JPG', 1);
INSERT INTO `scene` VALUES (32, 'upload/temp/wxd7eab3f26584a646.o6zAJs6NVvKBvN6ZsilTGedSjPgc.PWeBuiGSGh9Vd962c8a348db7e67f249115218a823b9.jpg', 1);
INSERT INTO `scene` VALUES (33, 'upload/temp/wxd7eab3f26584a646.o6zAJs6NVvKBvN6ZsilTGedSjPgc.7jlEyxFEJxuMb354149dc5e7eac75b409c24c002aa5a.jpg', 1);
INSERT INTO `scene` VALUES (34, 'upload/temp/wxd7eab3f26584a646.o6zAJs6NVvKBvN6ZsilTGedSjPgc.9KxJPHjzmVjO2f624d959102ab7ebdb60ca865ec2cb5.jpg', 1);
INSERT INTO `scene` VALUES (35, 'upload/temp/wxd7eab3f26584a646.o6zAJs6NVvKBvN6ZsilTGedSjPgc.nJrk5W1eVVEx6ba38c7a78ff56d10656033be5dc1a4e.jpg', 1);
INSERT INTO `scene` VALUES (36, 'upload/temp/wxd7eab3f26584a646.o6zAJs6NVvKBvN6ZsilTGedSjPgc.5qLBbufwN3lo65888cf60150b0004c4d838e85b0f7e8.jpg', 1);
INSERT INTO `scene` VALUES (37, 'upload/temp/wxd7eab3f26584a646.o6zAJs6NVvKBvN6ZsilTGedSjPgc.fJ0f623HkyK3437cefe2fe601f931b44f00c0862463e.jpg', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'testadmin', '123456789', 'upload/temp/wxd7eab3f26584a646.o6zAJs6NVvKBvN6ZsilTGedSjPgc.c3kNdfTeQAgCab7ec9f1d29cbcef1564e5c57170b1dc.jpg', '12345678910', 'hellom');
INSERT INTO `user` VALUES (7, 'testadmin2', '123456', NULL, '12354678910', 'test');
INSERT INTO `user` VALUES (8, 'testadmin3', '123456', NULL, '12354678910', 'test');
INSERT INTO `user` VALUES (9, 'testadmin4', '123456', NULL, '12345678910', 'test');
INSERT INTO `user` VALUES (11, 'testadmin5', '123456', NULL, '12345678910', 'test');
INSERT INTO `user` VALUES (12, 'testadmin6', '123456', NULL, '12345678910', 'test');
INSERT INTO `user` VALUES (13, 'testadmin7', '123456', NULL, '12345678910', 'test');
INSERT INTO `user` VALUES (14, 'testadmin8', '123456', NULL, '12345678910', 'test');
INSERT INTO `user` VALUES (15, 'testadmin9', '123456', NULL, '12345678910', 'test');
INSERT INTO `user` VALUES (16, 'testadmin10', '123456', NULL, '12345678910', 'test');
INSERT INTO `user` VALUES (17, 'testadmin11', '123456', NULL, '12345678910', 'twst');
INSERT INTO `user` VALUES (18, 'testadmin12', '123456', NULL, '12345678910', 'test');

SET FOREIGN_KEY_CHECKS = 1;
