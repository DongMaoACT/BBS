/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : my_forum

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 25/12/2018 21:32:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_board
-- ----------------------------
DROP TABLE IF EXISTS `t_board`;
CREATE TABLE `t_board`  (
  `board_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '论坛版块ID',
  `board_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '论坛版块名',
  `board_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '论坛版块描述',
  `topic_num` int(11) NOT NULL DEFAULT 0 COMMENT '帖子数目',
  PRIMARY KEY (`board_id`) USING BTREE,
  INDEX `AK_Board_NAME`(`board_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_board
-- ----------------------------
INSERT INTO `t_board` VALUES (1, '生活', '记录生活点滴。', 6);
INSERT INTO `t_board` VALUES (2, '情感', '午后电台环节。', 2);
INSERT INTO `t_board` VALUES (3, '大学', 'NCU', 3);
INSERT INTO `t_board` VALUES (4, '旅游', '一场说走就走的旅行', 1);
INSERT INTO `t_board` VALUES (5, '美食', '吃就完事了', 0);

-- ----------------------------
-- Table structure for t_board_manager
-- ----------------------------
DROP TABLE IF EXISTS `t_board_manager`;
CREATE TABLE `t_board_manager`  (
  `board_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`board_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '论坛管理员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_board_manager
-- ----------------------------
INSERT INTO `t_board_manager` VALUES (1, 1);
INSERT INTO `t_board_manager` VALUES (2, 2);
INSERT INTO `t_board_manager` VALUES (3, 1);
INSERT INTO `t_board_manager` VALUES (4, 12);
INSERT INTO `t_board_manager` VALUES (5, 3);

-- ----------------------------
-- Table structure for t_login_log
-- ----------------------------
DROP TABLE IF EXISTS `t_login_log`;
CREATE TABLE `t_login_log`  (
  `login_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `login_datetime` datetime(0) NULL,
  PRIMARY KEY (`login_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 185 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_login_log
-- ----------------------------
INSERT INTO `t_login_log` VALUES (75, 1, '0:0:0:0:0:0:0:1', '2018-07-21 00:00:00');
INSERT INTO `t_login_log` VALUES (76, 1, '0:0:0:0:0:0:0:1', '2018-07-22 00:00:00');
INSERT INTO `t_login_log` VALUES (77, 1, '0:0:0:0:0:0:0:1', '2018-07-28 00:00:00');
INSERT INTO `t_login_log` VALUES (78, 1, '0:0:0:0:0:0:0:1', '2018-07-29 00:00:00');
INSERT INTO `t_login_log` VALUES (79, 1, '0:0:0:0:0:0:0:1', '2018-07-29 00:00:00');
INSERT INTO `t_login_log` VALUES (80, 1, '0:0:0:0:0:0:0:1', '2018-07-29 00:00:00');
INSERT INTO `t_login_log` VALUES (81, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (82, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (83, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (84, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (85, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (86, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (87, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (88, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (89, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (90, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (91, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (92, 1, '0:0:0:0:0:0:0:1', '2018-07-31 00:00:00');
INSERT INTO `t_login_log` VALUES (93, 1, '0:0:0:0:0:0:0:1', '2018-07-31 00:00:00');
INSERT INTO `t_login_log` VALUES (94, 1, '0:0:0:0:0:0:0:1', '2018-07-31 00:00:00');
INSERT INTO `t_login_log` VALUES (95, 1, '0:0:0:0:0:0:0:1', '2018-07-31 00:00:00');
INSERT INTO `t_login_log` VALUES (96, 1, '0:0:0:0:0:0:0:1', '2018-07-31 00:00:00');
INSERT INTO `t_login_log` VALUES (97, 1, '0:0:0:0:0:0:0:1', '2018-07-31 00:00:00');
INSERT INTO `t_login_log` VALUES (98, 1, '0:0:0:0:0:0:0:1', '2018-07-31 00:00:00');
INSERT INTO `t_login_log` VALUES (99, 1, '0:0:0:0:0:0:0:1', '2018-08-01 00:00:00');
INSERT INTO `t_login_log` VALUES (100, 1, '0:0:0:0:0:0:0:1', '2018-08-01 00:00:00');
INSERT INTO `t_login_log` VALUES (101, 1, '0:0:0:0:0:0:0:1', '2018-08-01 00:00:00');
INSERT INTO `t_login_log` VALUES (102, 1, '0:0:0:0:0:0:0:1', '2018-08-01 00:00:00');
INSERT INTO `t_login_log` VALUES (103, 1, '0:0:0:0:0:0:0:1', '2018-08-01 00:00:00');
INSERT INTO `t_login_log` VALUES (104, 1, '0:0:0:0:0:0:0:1', '2018-08-01 00:00:00');
INSERT INTO `t_login_log` VALUES (105, 3, '0:0:0:0:0:0:0:1', '2018-08-01 00:00:00');
INSERT INTO `t_login_log` VALUES (106, 1, '0:0:0:0:0:0:0:1', '2018-08-01 00:00:00');
INSERT INTO `t_login_log` VALUES (107, 1, '0:0:0:0:0:0:0:1', '2018-08-01 00:00:00');
INSERT INTO `t_login_log` VALUES (108, 1, '0:0:0:0:0:0:0:1', '2018-08-02 00:00:00');
INSERT INTO `t_login_log` VALUES (109, 1, '0:0:0:0:0:0:0:1', '2018-08-02 00:00:00');
INSERT INTO `t_login_log` VALUES (110, 1, '0:0:0:0:0:0:0:1', '2018-08-02 00:00:00');
INSERT INTO `t_login_log` VALUES (111, 1, '0:0:0:0:0:0:0:1', '2018-08-03 00:00:00');
INSERT INTO `t_login_log` VALUES (112, 3, '0:0:0:0:0:0:0:1', '2018-08-03 00:00:00');
INSERT INTO `t_login_log` VALUES (113, 4, '0:0:0:0:0:0:0:1', '2018-08-03 00:00:00');
INSERT INTO `t_login_log` VALUES (114, 5, '0:0:0:0:0:0:0:1', '2018-08-03 00:00:00');
INSERT INTO `t_login_log` VALUES (115, 1, '0:0:0:0:0:0:0:1', '2018-08-03 00:00:00');
INSERT INTO `t_login_log` VALUES (116, 1, '0:0:0:0:0:0:0:1', '2018-08-03 00:00:00');
INSERT INTO `t_login_log` VALUES (117, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (118, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (119, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (120, 3, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (121, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (122, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (123, 3, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (124, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (125, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (126, 2, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (127, 6, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (128, 6, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (129, 2, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (130, 2, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (131, 3, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (132, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (133, 3, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (134, 3, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (135, 12, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (136, 12, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (137, 12, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (138, 12, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (139, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (140, 12, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (141, 12, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (142, 12, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (143, 12, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (144, 12, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (145, 12, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (146, 12, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (147, 3, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (148, 12, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (149, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (150, 12, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (151, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (152, 12, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (153, 12, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (154, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (155, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (156, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (157, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (158, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (159, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (160, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (161, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (162, 12, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (163, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (164, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (165, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (166, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (167, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (168, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (169, 1, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (170, 12, '0:0:0:0:0:0:0:1', '2018-12-24 00:00:00');
INSERT INTO `t_login_log` VALUES (171, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (172, 12, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (173, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (174, 12, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (175, 12, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (176, 12, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (177, 12, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (178, 12, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (179, 12, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (180, 12, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (181, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (182, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (183, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (184, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (185, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (186, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (187, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (188, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (189, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (190, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (191, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (192, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (193, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (194, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (195, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (196, 12, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (197, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (198, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (199, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (200, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (201, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (202, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (203, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (204, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (205, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (206, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (207, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (208, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (209, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (210, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (211, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (212, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (213, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (214, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (215, 12, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (216, 12, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (217, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (218, 12, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (219, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (220, 12, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (221, 12, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (222, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (223, 12, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (224, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (225, 18, '192.168.2.168', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (226, 1, '192.168.2.168', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (227, 12, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (228, 12, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');
INSERT INTO `t_login_log` VALUES (229, 1, '0:0:0:0:0:0:0:1', '2018-12-25 00:00:00');

-- ----------------------------
-- Table structure for t_post
-- ----------------------------
DROP TABLE IF EXISTS `t_post`;
CREATE TABLE `t_post`  (
  `post_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子ID',
  `board_id` int(11) NOT NULL DEFAULT 0 COMMENT '论坛ID',
  `topic_id` int(11) NOT NULL DEFAULT 0 COMMENT '话题ID',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '发表者ID',
  `post_type` tinyint(4) NOT NULL DEFAULT 2 COMMENT '帖子类型 1:主帖子 2:回复帖子',
  `post_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '\"\"' COMMENT '帖子标题',
  `post_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '帖子内容',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `image_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`post_id`) USING BTREE,
  INDEX `IDX_POST_TOPIC_ID`(`topic_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '帖子' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_post
-- ----------------------------
INSERT INTO `t_post` VALUES (2, 1, 2, 1, 1, '\"\"', '期末考试有点慌啊', '2018-12-23 12:42:53', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (3, 1, 1, 2, 1, '\"\"', '/userPic/21251e0c76784753824ec27aae8c8cc6.jpg', '2018-12-23 11:23:42', '/userPic/21251e0c76784753824ec27aae8c8cc6.jpg');
INSERT INTO `t_post` VALUES (4, 1, 2, 2, 0, '\"\"', '难受啊小伙汁', '2018-12-23 12:52:13', '/userPic/21251e0c76784753824ec27aae8c8cc6.jpg');
INSERT INTO `t_post` VALUES (30, 1, 1, 1, 0, '\"\"', '<img src=\"http://localhost:8080/statics/images/face/54.gif\" alt=\"[good]\">', '2018-12-23 11:25:12', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (34, 1, 9, 1, 1, '\"\"', '你永远不知道下一颗什么味道<img src=\"http://localhost:8080/statics/images/face/29.gif\" alt=\"[拜拜]\">', '2018-12-23 02:12:22', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (36, 2, 10, 1, 1, '\"\"', '<img src=\"http://localhost:8080/statics/images/face/36.gif\" alt=\"[酷]\"><img src=\"http://localhost:8080/statics/images/face/25.gif\" alt=\"[抱抱]\"><b>aqwsdeawse</b><img src=\"http://localhost:8080/statics/images/face/41.gif\" alt=\"[悲伤]\">', '2018-12-23 03:42:21', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (39, 1, 2, 1, 0, '\"\"', '<p><span>分页测试</span><img src=\"http://localhost:8080/statics/images/face/0.gif\" alt=\"[微笑]\"></p>', '2018-12-23 13:24:08', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (40, 1, 2, 1, 0, '\"\"', '<p><span>分页测试</span><img src=\"http://localhost:8080/statics/images/face/0.gif\" alt=\"[微笑]\"></p>', '2018-12-23 13:24:28', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (41, 1, 2, 1, 0, '\"\"', '<p><span>分页测试</span><img src=\"http://localhost:8080/statics/images/face/0.gif\" alt=\"[微笑]\"></p>', '2018-12-23 13:25:17', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (42, 1, 2, 1, 0, '\"\"', '<p><span>分页测试</span><img src=\"http://localhost:8080/statics/images/face/0.gif\" alt=\"[微笑]\"></p>', '2018-12-23 13:25:42', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (43, 1, 2, 1, 0, '\"\"', '<p><span>分页测试</span><img src=\"http://localhost:8080/statics/images/face/0.gif\" alt=\"[微笑]\"></p>', '2018-12-23 13:26:30', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (44, 1, 9, 1, 0, '\"\"', '<img src=\"http://localhost:8080/statics/images/face/48.gif\" alt=\"[伤心]\">', '2018-12-23 23:13:12', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (45, 1, 9, 1, 0, '\"\"', '<img src=\"http://localhost:8080/statics/images/face/36.gif\" alt=\"[酷]\">', '2018-12-23 23:15:37', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (46, 1, 2, 1, 0, '\"\"', 'spring<img src=\"http://localhost:8080/statics/images/face/48.gif\" alt=\"[伤心]\">', '2018-12-23 13:26:59', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (47, 1, 2, 1, 0, '\"\"', '顶顶顶', '2018-12-23 13:27:22', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (48, 1, 12, 1, 1, '\"\"', '/userPic/null-1fbb72231ad5607e.jpg', '2018-12-23 12:32:00', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (49, 1, 13, 1, 1, '\"\"', 'SSM（Spring+SpringMVC+MyBatis）框架集由Spring、MyBatis两个开源框架整合而成（SpringMVC是Spring中的部分内容）。常作为数据源较简单的web项目的框架。', '2018-12-23 15:22:00', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (51, 3, 14, 1, 1, '\"\"', '测试', '2018-12-23 09:02:00', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (60, 1, 1, 1, 0, '\"\"', '别写了，来打撸啊', '2018-12-23 12:13:10', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (61, 1, 1, 1, 0, '\"\"', '王者也行', '2018-12-23 12:13:48', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (63, 1, 1236, 1, 1, '\"\"', '边写手边抖', '2018-12-24 06:29:20', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (66, 1, 2, 1, 0, '\"\"', 'hahahahaha', '2018-12-24 03:02:36', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (67, 3, 2, 3, 0, '\"\"', 'helloA', '2018-12-24 03:26:37', '/userPic/23ee44a88e70427dbd00ca046b602106.jpg');
INSERT INTO `t_post` VALUES (69, 3, 2, 3, 0, '\"\"', '期末求过!!!!!', '2018-12-24 05:55:07', '/userPic/23ee44a88e70427dbd00ca046b602106.jpg');
INSERT INTO `t_post` VALUES (70, 1, 1, 1, 0, '\"\"', '', '2018-12-24 06:05:48', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (71, 1, 1, 1, 0, '\"\"', '??????', '2018-12-24 06:05:58', '/userPic/null-1fbb72231ad5607e.jpg');
INSERT INTO `t_post` VALUES (75, 1, 1, 3, 0, '\"\"', '哈喽阿', '2018-12-24 06:30:51', '/userPic/23ee44a88e70427dbd00ca046b602106.jpg');
INSERT INTO `t_post` VALUES (76, 1, 9, 3, 0, '\"\"', '6666666', '2018-12-24 07:42:16', '/userPic/23ee44a88e70427dbd00ca046b602106.jpg');
INSERT INTO `t_post` VALUES (77, 3, 10, 3, 0, '\"\"', '66666666666666', '2018-12-24 07:42:32', '/userPic/23ee44a88e70427dbd00ca046b602106.jpg');
INSERT INTO `t_post` VALUES (78, 3, 2, 3, 0, '\"\"', '666666666666666', '2018-12-24 07:42:41', '/userPic/23ee44a88e70427dbd00ca046b602106.jpg');
INSERT INTO `t_post` VALUES (79, 1, 1, 3, 0, '\"\"', '6666666666666666', '2018-12-24 07:42:48', '/userPic/23ee44a88e70427dbd00ca046b602106.jpg');
INSERT INTO `t_post` VALUES (81, 3, 14, 3, 0, '\"\"', '66666666666', '2018-12-24 07:43:07', '/userPic/23ee44a88e70427dbd00ca046b602106.jpg');
INSERT INTO `t_post` VALUES (82, 2, 12, 3, 0, '\"\"', '6666666666666', '2018-12-24 07:43:13', '/userPic/23ee44a88e70427dbd00ca046b602106.jpg');
INSERT INTO `t_post` VALUES (83, 4, 13, 3, 0, '\"\"', '6666666666666', '2018-12-24 07:43:19', '/userPic/23ee44a88e70427dbd00ca046b602106.jpg');
INSERT INTO `t_post` VALUES (85, 1, 1236, 3, 0, '\"\"', '6666666666666666', '2018-12-24 07:43:32', '/userPic/23ee44a88e70427dbd00ca046b602106.jpg');
INSERT INTO `t_post` VALUES (87, 1, 9, 12, 0, '\"\"', '尝一尝先', '2018-12-24 12:03:02', '/userPic/e350aac1c98d442f9bd39f72ca3f2c54.jpg');
INSERT INTO `t_post` VALUES (90, 1, 1241, 12, 1, '\"\"', '哒哒哒哒哒哒', '2018-12-24 16:02:33', '/userPic/e350aac1c98d442f9bd39f72ca3f2c54.jpg');
INSERT INTO `t_post` VALUES (91, 1, 1241, 12, 0, '\"\"', '<img src=\"http://localhost:8080/statics/images/face/36.gif\" alt=\"[酷]\"><img src=\"http://localhost:8080/statics/images/face/36.gif\" alt=\"[酷]\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src=\"http://localhost:8080/statics/images/face/24.gif\" alt=\"[哈欠]\">&nbsp;', '2018-12-24 16:02:59', '/userPic/e350aac1c98d442f9bd39f72ca3f2c54.jpg');
INSERT INTO `t_post` VALUES (92, 1, 1242, 12, 1, '\"\"', '<b>            文字测试\r\n        </b>', '2018-12-25 01:13:02', '/userPic/e350aac1c98d442f9bd39f72ca3f2c54.jpg');
INSERT INTO `t_post` VALUES (93, 1, 1242, 12, 0, '\"\"', '用户评论，左侧显示用户头像', '2018-12-25 07:11:28', '/userPic/e350aac1c98d442f9bd39f72ca3f2c54.jpg');
INSERT INTO `t_post` VALUES (94, 1, 1, 12, 0, '\"\"', 'jkwehrk', '2018-12-25 08:47:31', '/userPic/e350aac1c98d442f9bd39f72ca3f2c54.jpg');
INSERT INTO `t_post` VALUES (95, 1, 1244, 12, 1, '\"\"', 'asdsad', '2018-12-25 09:22:46', '/userPic/e350aac1c98d442f9bd39f72ca3f2c54.jpg');

-- ----------------------------
-- Table structure for t_topic
-- ----------------------------
DROP TABLE IF EXISTS `t_topic`;
CREATE TABLE `t_topic`  (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子ID',
  `board_id` int(11) NOT NULL COMMENT '所属论坛',
  `topic_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '帖子标题',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '发表用户',
  `create_time` datetime(0) NOT NULL COMMENT '发表时间',
  `last_post` datetime(0) NOT NULL DEFAULT '1990-01-01 00:00:00' COMMENT '最后回复时间',
  `topic_views` int(11) NOT NULL DEFAULT 1 COMMENT '浏览数',
  `topic_replies` int(11) NOT NULL DEFAULT 0 COMMENT '回复数',
  `digest` int(11) NOT NULL DEFAULT 0 COMMENT '0:不是精华话题 1:是精华话题',
  `top` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`topic_id`) USING BTREE,
  INDEX `IDX_TOPIC_USER_ID`(`user_id`) USING BTREE,
  INDEX `IDX_TOPIC_TITLE`(`topic_title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1242 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '话题' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_topic
-- ----------------------------
INSERT INTO `t_topic` VALUES (1, 1, '如何提高写代码的效率', 2, '2018-12-23 11:23:42', '2018-12-25 08:47:31', 43, 8, 1, 0);
INSERT INTO `t_topic` VALUES (2, 3, '期末大作业', 1, '2018-12-23 12:42:13', '2018-12-24 07:42:41', 61, 16, 1, 1);
INSERT INTO `t_topic` VALUES (9, 1, '生活就像一盒巧克力', 1, '2018-12-23 23:12:12', '2018-12-24 12:03:03', 19, 5, 1, 0);
INSERT INTO `t_topic` VALUES (10, 3, '南昌停水停电大学', 1, '2018-12-23 11:42:21', '2018-12-24 07:42:32', 12, 2, 1, 0);
INSERT INTO `t_topic` VALUES (12, 2, '改帖测试', 1, '2018-12-23 12:32:00', '2018-12-24 07:43:13', 29, 2, 0, 0);
INSERT INTO `t_topic` VALUES (13, 4, '试试水', 1, '2018-12-24 05:22:00', '2018-12-24 07:43:19', 17, 2, 0, 0);
INSERT INTO `t_topic` VALUES (14, 3, 'biubiubiu', 1, '2018-12-23 05:02:00', '2018-12-24 07:43:07', 25, 2, 0, 0);
INSERT INTO `t_topic` VALUES (1236, 1, '写代码写的手冷', 1, '2018-12-24 06:29:20', '2018-12-24 07:43:32', 11, 2, 0, 0);
INSERT INTO `t_topic` VALUES (1241, 1, '熬夜敲代码', 12, '2018-12-24 16:02:33', '2018-12-24 16:02:59', 10, 2, 0, 0);
INSERT INTO `t_topic` VALUES (1242, 1, '功能测试', 12, '2018-12-25 01:13:02', '2018-12-25 07:11:28', 15, 2, 0, 0);
INSERT INTO `t_topic` VALUES (1243, 2, 'sadasf', 18, '2018-12-25 09:18:53', '1990-01-01 00:00:00', 1, 0, 0, 0);
INSERT INTO `t_topic` VALUES (1244, 1, 'sfas', 12, '2018-12-25 09:22:46', '2018-12-25 09:22:46', 2, 1, 0, 0);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户Id',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `user_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1:普通用户 2:管理员',
  `locked` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:未锁定 1:锁定',
  `credit` int(11) NULL DEFAULT NULL COMMENT '积分',
  `last_visit` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `last_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后登陆IP',
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `AK_AK_USER_USER_NAME`(`user_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', 'admin', 2, 0, 905, '2018-12-25 10:40:09', '0:0:0:0:0:0:0:1');
INSERT INTO `t_user` VALUES (2, 'jack', 'jack', 1, 0, 75, '2018-12-24 06:30:18', '0:0:0:0:0:0:0:1');
INSERT INTO `t_user` VALUES (3, 'tom', 'tom', 1, 0, 110, '2018-12-24 10:43:44', '0:0:0:0:0:0:0:1');
INSERT INTO `t_user` VALUES (12, 'Kuroko', '123456', 1, 0, 215, '2018-12-25 10:39:11', '0:0:0:0:0:0:0:1');
INSERT INTO `t_user` VALUES (17, 'sadd', 'asd', 1, 0, 50, NULL, NULL);
INSERT INTO `t_user` VALUES (18, 'asd', 'asd', 1, 0, 55, '2018-12-25 09:17:51', '192.168.2.168');

-- ----------------------------
-- Table structure for t_user_detailed
-- ----------------------------
DROP TABLE IF EXISTS `t_user_detailed`;
CREATE TABLE `t_user_detailed`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_mail` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone_number` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_addr` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sign_time` datetime(0) NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_detailed
-- ----------------------------
INSERT INTO `t_user_detailed` VALUES (1, '/userPic/null-1fbb72231ad5607e.jpg', 'orochi1972@163.com', '18325213331', 'NCU', '男', '2018-12-23 10:00:00');
INSERT INTO `t_user_detailed` VALUES (2, '/userPic/21251e0c76784753824ec27aae8c8cc6.jpg', 'sc@126.com', '18412389132', 'NCU', '男', '2018-12-23 00:00:00');
INSERT INTO `t_user_detailed` VALUES (3, '/userPic/23ee44a88e70427dbd00ca046b602106.jpg', 'fgbn@qq.com', '17843800943', 'NCU', '男', '2018-12-23 00:00:00');
INSERT INTO `t_user_detailed` VALUES (12, '/userPic/e350aac1c98d442f9bd39f72ca3f2c54.jpg', '982239116@qq.com', '18779406201', 'NCU', '男', '2018-12-24 17:04:51');
INSERT INTO `t_user_detailed` VALUES (17, NULL, '123@emmk.com', '18779406201', 'dsaa', '中', '2018-12-25 17:17:01');
INSERT INTO `t_user_detailed` VALUES (18, NULL, '1229@qw.com', '18779406201', 'sad', '男', '2018-12-25 17:17:47');

SET FOREIGN_KEY_CHECKS = 1;
