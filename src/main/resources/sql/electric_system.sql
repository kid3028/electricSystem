/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : electric_system

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-06-04 10:17:31
*/
drop database if exists `electric_system`;
create database `electric_system`;
use`electric_system`;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES ('2');
INSERT INTO `hibernate_sequence` VALUES ('2');

-- ----------------------------
-- Table structure for tb_machine
-- ----------------------------
DROP TABLE IF EXISTS `tb_machine`;
CREATE TABLE `tb_machine` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `machine_name` varchar(128) NOT NULL COMMENT '设备名称',
  `serial_number` varchar(128) NOT NULL COMMENT '设备编号',
  `voltage_grade` varchar(68) NOT NULL COMMENT '电压等级',
  `brand` varchar(128) NOT NULL COMMENT '品牌',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='设备表';

-- ----------------------------
-- Records of tb_machine
-- ----------------------------
INSERT INTO `tb_machine` VALUES ('9', '发电机', '445435', '500KV', '21322202', '2018-06-04 10:15:40', '2018-06-04 10:15:40');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(128) NOT NULL COMMENT '用户名',
  `full_name` varchar(128) NOT NULL COMMENT '姓名',
  `password` varchar(128) NOT NULL COMMENT '密码',
  `emp_number` int(20) NOT NULL COMMENT '工号',
  `dept` varchar(64) NOT NULL COMMENT '部门',
  `phone` varchar(64) NOT NULL COMMENT '电话',
  `age` int(3) NOT NULL COMMENT '年龄',
  `is_mgn` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0:普通用户, 1:管理员',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('9', 'admin', 'admin', '123456', '123456789', '产品部', '12345678901', '30', '1', '2018-06-03 07:22:08', '2018-06-04 10:15:10');
INSERT INTO `tb_user` VALUES ('12', 'zhangsan ', '张三', '123456', '1214797', '行政部', '13546134678', '45', '1', '2018-06-04 09:52:53', '2018-06-04 10:14:16');
INSERT INTO `tb_user` VALUES ('13', 'tangsan', '唐三', '123456', '13461346', '产品部', '541448441254', '35', '1', '2018-06-04 10:15:00', '2018-06-04 10:15:00');
