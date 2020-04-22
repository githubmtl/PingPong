/*
Navicat MySQL Data Transfer

Source Server         : VM-CentOS1
Source Server Version : 50639
Source Host           : 192.168.17.130:3306
Source Database       : pingpong

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2020-04-22 18:02:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('2', 't_pool_table', '球台信息', 'TPoolTable', 'crud', 'com.ruoyi.business', 'business', 'poolTable', '球台信息', 'Sunny', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-04-14 14:20:36', '', '2020-04-14 14:50:33', '');
INSERT INTO `gen_table` VALUES ('3', 't_student', '学生信息', 'TStudent', 'crud', 'com.ruoyi.business', 'business', 'student', '学生信息', 'Sunny', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-04-14 15:34:09', '', '2020-04-14 15:34:43', '');
INSERT INTO `gen_table` VALUES ('4', 't_appraise', '评论信息', 'TAppraise', 'crud', 'com.ruoyi.business', 'business', 'appraise', '评论信息', 'Sunny', null, 'admin', '2020-04-22 14:35:38', '', null, null);
INSERT INTO `gen_table` VALUES ('6', 't_repair', '报修信息', 'Repair', 'crud', 'com.ruoyi.business', 'business', 'repair', '报修信息', 'Sunny', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-04-22 15:18:29', '', '2020-04-22 15:22:14', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('5', '2', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-04-14 14:20:36', null, '2020-04-14 14:50:33');
INSERT INTO `gen_table_column` VALUES ('6', '2', 'no', '球台编号', 'int(11)', 'Long', 'no', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2020-04-14 14:20:36', null, '2020-04-14 14:50:33');
INSERT INTO `gen_table_column` VALUES ('7', '2', 'addr', '球台地址', 'varchar(255)', 'String', 'addr', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'textarea', '', '3', 'admin', '2020-04-14 14:20:36', null, '2020-04-14 14:50:33');
INSERT INTO `gen_table_column` VALUES ('8', '2', 'status', '球台状态', 'tinyint(1)', 'Integer', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'pool_table_status', '4', 'admin', '2020-04-14 14:20:36', null, '2020-04-14 14:50:33');
INSERT INTO `gen_table_column` VALUES ('9', '3', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-04-14 15:34:10', null, '2020-04-14 15:34:43');
INSERT INTO `gen_table_column` VALUES ('10', '3', 'stu_name', '学生姓名', 'varchar(120)', 'String', 'stuName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2020-04-14 15:34:10', null, '2020-04-14 15:34:43');
INSERT INTO `gen_table_column` VALUES ('11', '3', 'stu_no', '学号', 'varchar(60)', 'String', 'stuNo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2020-04-14 15:34:10', null, '2020-04-14 15:34:43');
INSERT INTO `gen_table_column` VALUES ('12', '3', 'stu_class', '班级', 'varchar(255)', 'String', 'stuClass', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2020-04-14 15:34:10', null, '2020-04-14 15:34:43');
INSERT INTO `gen_table_column` VALUES ('13', '4', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-04-22 14:35:38', '', null);
INSERT INTO `gen_table_column` VALUES ('14', '4', 'reverse_info_id', '预约信息ID', 'int(11)', 'Long', 'reverseInfoId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2020-04-22 14:35:38', '', null);
INSERT INTO `gen_table_column` VALUES ('15', '4', 'clean_num', '台面清洁评分', 'int(11)', 'Long', 'cleanNum', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2020-04-22 14:35:38', '', null);
INSERT INTO `gen_table_column` VALUES ('16', '4', 'qiu_tai_num', '球台完整评分', 'int(11)', 'Long', 'qiuTaiNum', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2020-04-22 14:35:38', '', null);
INSERT INTO `gen_table_column` VALUES ('17', '4', 'temp_num', '室内温度评分', 'int(11)', 'Long', 'tempNum', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2020-04-22 14:35:38', '', null);
INSERT INTO `gen_table_column` VALUES ('18', '4', 'comment', '其他建议', 'varchar(255)', 'String', 'comment', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2020-04-22 14:35:38', '', null);
INSERT INTO `gen_table_column` VALUES ('19', '4', 'appraise_time', '评价时间', 'timestamp', 'Date', 'appraiseTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '7', 'admin', '2020-04-22 14:35:38', '', null);
INSERT INTO `gen_table_column` VALUES ('29', '6', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', null, null, null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-04-22 15:18:29', null, '2020-04-22 15:22:14');
INSERT INTO `gen_table_column` VALUES ('30', '6', 'repair_user_id', '报修用户ID', 'int(11)', 'Long', 'repairUserId', '0', '0', null, null, null, null, null, 'EQ', 'input', '', '2', 'admin', '2020-04-22 15:18:29', null, '2020-04-22 15:22:14');
INSERT INTO `gen_table_column` VALUES ('31', '6', 'repair_user_name', '报修人', 'varchar(255)', 'String', 'repairUserName', '0', '0', null, null, null, '1', '1', 'LIKE', 'input', '', '3', 'admin', '2020-04-22 15:18:29', null, '2020-04-22 15:22:14');
INSERT INTO `gen_table_column` VALUES ('32', '6', 'repair_student_no', '报修人学号', 'varchar(20)', 'String', 'repairStudentNo', '0', '0', null, null, null, '1', '1', 'EQ', 'input', '', '4', 'admin', '2020-04-22 15:18:29', null, '2020-04-22 15:22:14');
INSERT INTO `gen_table_column` VALUES ('33', '6', 'table_no', '球台编号', 'varchar(11)', 'String', 'tableNo', '0', '0', null, '1', null, '1', '1', 'EQ', 'input', '', '5', 'admin', '2020-04-22 15:18:29', null, '2020-04-22 15:22:14');
INSERT INTO `gen_table_column` VALUES ('34', '6', 'repair_time', '报修时间', 'datetime', 'Date', 'repairTime', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '6', 'admin', '2020-04-22 15:18:29', null, '2020-04-22 15:22:14');
INSERT INTO `gen_table_column` VALUES ('35', '6', 'do_time', '处理时间', 'datetime', 'Date', 'doTime', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '7', 'admin', '2020-04-22 15:18:29', null, '2020-04-22 15:22:14');
INSERT INTO `gen_table_column` VALUES ('36', '6', 'status', '状态 0-未处理 1-已处理', 'int(11)', 'Long', 'status', '0', '0', null, null, null, '1', '1', 'EQ', 'radio', 'repair_status', '8', 'admin', '2020-04-22 15:18:29', null, '2020-04-22 15:22:14');
INSERT INTO `gen_table_column` VALUES ('37', '6', 'comment', '详细描述', 'varchar(2000)', 'String', 'comment', '0', '0', null, '1', null, '1', null, 'EQ', 'textarea', '', '9', 'admin', '2020-04-22 15:18:29', null, '2020-04-22 15:22:14');

-- ----------------------------
-- Table structure for QRTZ_BLOB_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of QRTZ_BLOB_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_CALENDARS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
CREATE TABLE `QRTZ_CALENDARS` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of QRTZ_CALENDARS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_CRON_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of QRTZ_CRON_TRIGGERS
-- ----------------------------
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for QRTZ_FIRED_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of QRTZ_FIRED_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_JOB_DETAILS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
CREATE TABLE `QRTZ_JOB_DETAILS` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of QRTZ_JOB_DETAILS
-- ----------------------------
INSERT INTO `QRTZ_JOB_DETAILS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `QRTZ_JOB_DETAILS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `QRTZ_JOB_DETAILS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for QRTZ_LOCKS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_LOCKS`;
CREATE TABLE `QRTZ_LOCKS` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of QRTZ_LOCKS
-- ----------------------------
INSERT INTO `QRTZ_LOCKS` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `QRTZ_LOCKS` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_SCHEDULER_STATE
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of QRTZ_SCHEDULER_STATE
-- ----------------------------
INSERT INTO `QRTZ_SCHEDULER_STATE` VALUES ('RuoyiScheduler', 'USERCHI-TGJCPMU1587545957107', '1587549743818', '15000');

-- ----------------------------
-- Table structure for QRTZ_SIMPLE_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of QRTZ_SIMPLE_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_SIMPROP_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of QRTZ_SIMPROP_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
CREATE TABLE `QRTZ_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `QRTZ_JOB_DETAILS` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of QRTZ_TRIGGERS
-- ----------------------------
INSERT INTO `QRTZ_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', null, '1587545960000', '-1', '5', 'PAUSED', 'CRON', '1587545957000', '0', null, '2', '');
INSERT INTO `QRTZ_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', null, '1587545970000', '-1', '5', 'PAUSED', 'CRON', '1587545957000', '0', null, '2', '');
INSERT INTO `QRTZ_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', null, '1587545960000', '-1', '5', 'PAUSED', 'CRON', '1587545957000', '0', null, '2', '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES ('4', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-14 14:11:14', '是否开启注册用户功能');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '后台管理', '0', '管理员', '15888888888', '1@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-14 16:02:20');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', '1', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('103', '100', '0,100', '管理员', '1', '管理员', '15888888888', '2@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-14 16:02:20');
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('110', '100', '0,100', '普通用户', '2', null, null, null, '0', '0', 'admin', '2020-04-15 17:01:52', '', null);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '99', '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES ('20', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('100', '1', '空闲', '0', 'pool_table_status', '', 'primary', 'Y', '0', 'admin', '2020-04-14 14:25:35', 'admin', '2020-04-14 14:26:43', '');
INSERT INTO `sys_dict_data` VALUES ('101', '2', '使用中', '1', 'pool_table_status', '', 'warning', 'Y', '0', 'admin', '2020-04-14 14:26:17', 'admin', '2020-04-14 14:26:35', '');
INSERT INTO `sys_dict_data` VALUES ('102', '3', '损坏', '9', 'pool_table_status', null, 'danger', 'Y', '0', 'admin', '2020-04-14 14:27:14', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('103', '0', '同意预约', '1', 'reverse_status', null, 'success', 'Y', '0', 'admin', '2020-04-15 15:52:47', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('104', '2', '未处理', '0', 'reverse_status', null, 'warning', 'Y', '0', 'admin', '2020-04-15 15:53:48', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('105', '3', '拒绝预约', '3', 'reverse_status', null, 'danger', 'Y', '0', 'admin', '2020-04-15 15:54:05', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('106', '0', '未处理', '0', 'repair_status', null, 'warning', 'Y', '0', 'admin', '2020-04-22 15:20:01', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('107', '1', '同意报修', '1', 'repair_status', '', 'success', 'Y', '0', 'admin', '2020-04-22 15:20:14', 'admin', '2020-04-22 16:50:23', '');
INSERT INTO `sys_dict_data` VALUES ('108', '2', '拒绝报修', '2', 'repair_status', null, 'danger', 'Y', '0', 'admin', '2020-04-22 16:50:59', '', null, null);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('100', '球台状态', 'pool_table_status', '0', 'admin', '2020-04-14 14:25:03', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('101', '预约审核状态', 'reverse_status', '0', 'admin', '2020-04-15 15:52:07', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('102', '报修处理状态', 'repair_status', '0', 'admin', '2020-04-22 15:19:35', '', null, null);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('185', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-16 11:30:18');
INSERT INTO `sys_logininfor` VALUES ('186', 'ad', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '密码输入错误1次', '2020-04-16 11:30:27');
INSERT INTO `sys_logininfor` VALUES ('187', 'ad', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2020-04-16 11:30:36');
INSERT INTO `sys_logininfor` VALUES ('188', 'ad', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '密码输入错误2次', '2020-04-16 11:30:40');
INSERT INTO `sys_logininfor` VALUES ('189', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '密码输入错误1次', '2020-04-16 11:31:38');
INSERT INTO `sys_logininfor` VALUES ('190', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-16 11:31:54');
INSERT INTO `sys_logininfor` VALUES ('191', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-16 11:32:40');
INSERT INTO `sys_logininfor` VALUES ('192', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-16 11:32:44');
INSERT INTO `sys_logininfor` VALUES ('193', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-16 11:35:14');
INSERT INTO `sys_logininfor` VALUES ('194', 'xm', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '注册成功', '2020-04-16 12:06:47');
INSERT INTO `sys_logininfor` VALUES ('195', 'xm', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-16 12:06:57');
INSERT INTO `sys_logininfor` VALUES ('196', 'xm', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-16 12:07:03');
INSERT INTO `sys_logininfor` VALUES ('197', 'xm', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '注册成功', '2020-04-16 12:16:18');
INSERT INTO `sys_logininfor` VALUES ('198', 'xm', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-16 12:16:28');
INSERT INTO `sys_logininfor` VALUES ('199', 'xm', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-16 12:18:18');
INSERT INTO `sys_logininfor` VALUES ('200', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-16 12:18:21');
INSERT INTO `sys_logininfor` VALUES ('201', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-16 14:40:49');
INSERT INTO `sys_logininfor` VALUES ('202', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-16 14:42:06');
INSERT INTO `sys_logininfor` VALUES ('203', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-16 14:42:11');
INSERT INTO `sys_logininfor` VALUES ('204', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-16 14:42:51');
INSERT INTO `sys_logininfor` VALUES ('205', 'tttt', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2020-04-16 14:42:56');
INSERT INTO `sys_logininfor` VALUES ('206', 'tttt', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '用户不存在/密码错误', '2020-04-16 14:42:58');
INSERT INTO `sys_logininfor` VALUES ('207', 'xm', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-16 14:43:08');
INSERT INTO `sys_logininfor` VALUES ('208', 'xm', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-16 14:44:05');
INSERT INTO `sys_logininfor` VALUES ('209', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-16 14:44:10');
INSERT INTO `sys_logininfor` VALUES ('210', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-16 16:09:19');
INSERT INTO `sys_logininfor` VALUES ('211', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-16 16:12:04');
INSERT INTO `sys_logininfor` VALUES ('212', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-16 16:13:41');
INSERT INTO `sys_logininfor` VALUES ('213', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-16 16:17:29');
INSERT INTO `sys_logininfor` VALUES ('214', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-16 16:17:53');
INSERT INTO `sys_logininfor` VALUES ('215', 'xm', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-16 17:31:59');
INSERT INTO `sys_logininfor` VALUES ('216', 'xm', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-16 17:32:12');
INSERT INTO `sys_logininfor` VALUES ('217', 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '注册成功', '2020-04-16 17:34:36');
INSERT INTO `sys_logininfor` VALUES ('218', 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-16 17:34:47');
INSERT INTO `sys_logininfor` VALUES ('219', 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '注册成功', '2020-04-16 17:43:10');
INSERT INTO `sys_logininfor` VALUES ('220', 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '注册成功', '2020-04-16 17:43:22');
INSERT INTO `sys_logininfor` VALUES ('221', 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-16 17:43:32');
INSERT INTO `sys_logininfor` VALUES ('222', 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-16 17:44:20');
INSERT INTO `sys_logininfor` VALUES ('223', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-16 17:44:25');
INSERT INTO `sys_logininfor` VALUES ('224', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-16 17:45:22');
INSERT INTO `sys_logininfor` VALUES ('225', 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-16 17:45:28');
INSERT INTO `sys_logininfor` VALUES ('226', 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-16 17:51:16');
INSERT INTO `sys_logininfor` VALUES ('227', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-16 17:51:25');
INSERT INTO `sys_logininfor` VALUES ('228', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-16 17:54:43');
INSERT INTO `sys_logininfor` VALUES ('229', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-16 17:54:47');
INSERT INTO `sys_logininfor` VALUES ('230', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-16 17:55:44');
INSERT INTO `sys_logininfor` VALUES ('231', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-19 11:46:07');
INSERT INTO `sys_logininfor` VALUES ('232', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-19 11:46:26');
INSERT INTO `sys_logininfor` VALUES ('233', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '密码输入错误1次', '2020-04-19 11:46:34');
INSERT INTO `sys_logininfor` VALUES ('234', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '密码输入错误2次', '2020-04-19 11:46:39');
INSERT INTO `sys_logininfor` VALUES ('235', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '密码输入错误3次', '2020-04-19 11:46:49');
INSERT INTO `sys_logininfor` VALUES ('236', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '密码输入错误4次', '2020-04-19 11:47:21');
INSERT INTO `sys_logininfor` VALUES ('237', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '密码输入错误5次', '2020-04-19 11:51:13');
INSERT INTO `sys_logininfor` VALUES ('238', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '密码输入错误5次，帐户锁定10分钟', '2020-04-19 11:52:47');
INSERT INTO `sys_logininfor` VALUES ('239', 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-19 11:53:01');
INSERT INTO `sys_logininfor` VALUES ('240', 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-19 11:53:03');
INSERT INTO `sys_logininfor` VALUES ('241', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '密码输入错误1次', '2020-04-19 12:07:12');
INSERT INTO `sys_logininfor` VALUES ('242', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '密码输入错误2次', '2020-04-19 12:07:19');
INSERT INTO `sys_logininfor` VALUES ('243', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '密码输入错误3次', '2020-04-19 12:07:28');
INSERT INTO `sys_logininfor` VALUES ('244', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-19 12:07:39');
INSERT INTO `sys_logininfor` VALUES ('245', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-19 12:07:55');
INSERT INTO `sys_logininfor` VALUES ('246', 'manager', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '用户不存在/密码错误', '2020-04-19 12:08:00');
INSERT INTO `sys_logininfor` VALUES ('247', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2020-04-19 12:08:09');
INSERT INTO `sys_logininfor` VALUES ('248', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-19 12:08:11');
INSERT INTO `sys_logininfor` VALUES ('249', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-19 12:08:17');
INSERT INTO `sys_logininfor` VALUES ('250', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-21 20:25:24');
INSERT INTO `sys_logininfor` VALUES ('251', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-22 10:30:31');
INSERT INTO `sys_logininfor` VALUES ('252', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-22 10:49:45');
INSERT INTO `sys_logininfor` VALUES ('253', 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-22 12:59:53');
INSERT INTO `sys_logininfor` VALUES ('254', 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-22 13:24:14');
INSERT INTO `sys_logininfor` VALUES ('255', 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-22 13:24:21');
INSERT INTO `sys_logininfor` VALUES ('256', 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-22 14:24:32');
INSERT INTO `sys_logininfor` VALUES ('257', 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-22 14:34:02');
INSERT INTO `sys_logininfor` VALUES ('258', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-22 14:35:20');
INSERT INTO `sys_logininfor` VALUES ('259', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-22 14:52:58');
INSERT INTO `sys_logininfor` VALUES ('260', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-22 14:53:09');
INSERT INTO `sys_logininfor` VALUES ('261', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-22 14:56:18');
INSERT INTO `sys_logininfor` VALUES ('262', 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-22 14:56:28');
INSERT INTO `sys_logininfor` VALUES ('263', 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-22 14:57:09');
INSERT INTO `sys_logininfor` VALUES ('264', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-22 14:57:16');
INSERT INTO `sys_logininfor` VALUES ('265', 'manage', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-22 15:16:58');
INSERT INTO `sys_logininfor` VALUES ('266', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-22 15:17:04');
INSERT INTO `sys_logininfor` VALUES ('267', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-22 15:29:19');
INSERT INTO `sys_logininfor` VALUES ('268', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-22 15:29:31');
INSERT INTO `sys_logininfor` VALUES ('269', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-22 15:38:55');
INSERT INTO `sys_logininfor` VALUES ('270', 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-22 15:39:05');
INSERT INTO `sys_logininfor` VALUES ('271', 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-22 16:09:21');
INSERT INTO `sys_logininfor` VALUES ('272', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-22 16:50:00');
INSERT INTO `sys_logininfor` VALUES ('273', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2020-04-22 16:59:29');
INSERT INTO `sys_logininfor` VALUES ('274', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-22 16:59:42');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2014 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', '#', '', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', '#', '', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', '#', '', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', '/system/dept', '', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', '/system/post', '', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', '/system/config', '', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', '#', '', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '3', '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '表单构建', '3', '1', '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('114', '代码生成', '3', '2', '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('115', '系统接口', '3', '3', '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1041', '详细信息', '500', '3', '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1046', '账户解锁', '501', '4', '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1047', '在线查询', '109', '1', '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1048', '批量强退', '109', '2', '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1049', '单条强退', '109', '3', '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1050', '任务查询', '110', '1', '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1051', '任务新增', '110', '2', '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1052', '任务修改', '110', '3', '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1053', '任务删除', '110', '4', '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1054', '状态修改', '110', '5', '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1055', '任务详细', '110', '6', '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1056', '任务导出', '110', '7', '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1057', '生成查询', '114', '1', '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1058', '生成修改', '114', '2', '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1059', '生成删除', '114', '3', '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1060', '预览代码', '114', '4', '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1061', '生成代码', '114', '5', '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('2000', '球台管理', '0', '4', '#', 'menuItem', 'M', '0', null, 'fa fa-cube', 'admin', '2020-04-14 15:02:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2001', '球台管理', '2000', '1', '/business/poolTable/view', 'menuItem', 'C', '0', 'business:poolTable:view', 'fa fa-leaf', 'admin', '2020-04-14 15:03:23', 'admin', '2020-04-14 15:17:20', '');
INSERT INTO `sys_menu` VALUES ('2002', '学生管理', '0', '5', '#', 'menuItem', 'M', '0', null, 'fa fa-address-book', 'admin', '2020-04-14 15:42:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('2003', '学生管理', '2002', '1', '/business/student/view', 'menuItem', 'C', '0', 'business:student:view', 'fa fa-leaf', 'admin', '2020-04-14 15:43:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('2004', '预约球台', '0', '0', '#', 'menuItem', 'M', '0', null, 'fa fa-history', 'admin', '2020-04-15 16:51:34', '', null, '');
INSERT INTO `sys_menu` VALUES ('2005', '立即预约', '2004', '0', '/business/reverse', 'menuItem', 'C', '0', null, 'fa fa-leaf', 'admin', '2020-04-15 16:53:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('2006', '我的预约', '2004', '1', '/business/myReverseView', 'menuItem', 'C', '0', 'business:myReverseView', 'fa fa-leaf', 'admin', '2020-04-15 16:54:04', 'admin', '2020-04-16 14:41:11', '');
INSERT INTO `sys_menu` VALUES ('2007', '预定管理', '0', '3', '#', 'menuItem', 'M', '0', null, 'fa fa-gears', 'admin', '2020-04-15 17:38:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2008', '预约处理', '2007', '1', '/business/reverseView', 'menuItem', 'C', '0', 'business:reverseView', 'fa fa-leaf', 'admin', '2020-04-15 17:40:51', 'admin', '2020-04-16 14:41:28', '');
INSERT INTO `sys_menu` VALUES ('2009', '历史预约查询', '2007', '2', '/business/hisReverseView', 'menuItem', 'C', '0', 'business:hisReverseView', 'fa fa-leaf', 'admin', '2020-04-16 09:38:31', 'admin', '2020-04-16 14:41:43', '');
INSERT INTO `sys_menu` VALUES ('2010', '报修', '0', '10', '#', 'menuItem', 'M', '0', '', 'fa fa-wrench', 'admin', '2020-04-21 20:42:37', 'admin', '2020-04-22 15:33:58', '');
INSERT INTO `sys_menu` VALUES ('2011', '报修申请', '2010', '1', '/business/repair/add', 'menuItem', 'C', '0', '', 'fa fa-bell-o', 'admin', '2020-04-21 20:44:08', 'admin', '2020-04-22 15:33:51', '');
INSERT INTO `sys_menu` VALUES ('2012', '我的报修', '2010', '2', '/business/repair/view', 'menuItem', 'C', '0', 'business:repair:view', '#', 'admin', '2020-04-22 15:37:16', '', null, '');
INSERT INTO `sys_menu` VALUES ('2013', '报修处理', '2010', '3', '/business/repair/doRepairView', 'menuItem', 'C', '0', 'business:repair:doRepairView', '#', 'admin', '2020-04-22 16:58:22', '', null, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"4\" ],\r\n  \"configName\" : [ \"账号自助-是否开启用户注册功能\" ],\r\n  \"configKey\" : [ \"sys.account.registerUser\" ],\r\n  \"configValue\" : [ \"true\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"是否开启注册用户功能\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 14:11:14');
INSERT INTO `sys_oper_log` VALUES ('101', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"t_pool_table\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 14:19:21');
INSERT INTO `sys_oper_log` VALUES ('102', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/t_pool_table', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2020-04-14 14:20:13');
INSERT INTO `sys_oper_log` VALUES ('103', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 14:20:30');
INSERT INTO `sys_oper_log` VALUES ('104', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"t_pool_table\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 14:20:36');
INSERT INTO `sys_oper_log` VALUES ('105', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"2\" ],\r\n  \"tableName\" : [ \"t_pool_table\" ],\r\n  \"tableComment\" : [ \"球台信息\" ],\r\n  \"className\" : [ \"TPoolTable\" ],\r\n  \"functionAuthor\" : [ \"Sunny\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"5\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"主键\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"id\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"6\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"球台编号\" ],\r\n  \"columns[1].javaType\" : [ \"Long\" ],\r\n  \"columns[1].javaField\" : [ \"no\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"7\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"球台地址\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"addr\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"8\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"球台状态\" ],\r\n  \"columns[3].javaType\" : [ \"Integer\" ],\r\n  \"columns[3].javaField\" : [ \"status\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"radio\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"tplCategory\" : [ \"crud\" ],\r\n  \"packageName\" : [ \"com.ruoyi.system\" ],\r\n  \"moduleName\" : [ \"system\" ],\r\n  \"businessName\" : [ \"table\" ],\r\n  \"', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 14:21:23');
INSERT INTO `sys_oper_log` VALUES ('106', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/t_pool_table', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2020-04-14 14:21:45');
INSERT INTO `sys_oper_log` VALUES ('107', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  \"dictName\" : [ \"球台状态\" ],\r\n  \"dictType\" : [ \"pool_table_status\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 14:25:03');
INSERT INTO `sys_oper_log` VALUES ('108', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"空闲\" ],\r\n  \"dictValue\" : [ \"0\" ],\r\n  \"dictType\" : [ \"pool_table_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"success\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 14:25:35');
INSERT INTO `sys_oper_log` VALUES ('109', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  \"dictCode\" : [ \"100\" ],\r\n  \"dictLabel\" : [ \"空闲\" ],\r\n  \"dictValue\" : [ \"0\" ],\r\n  \"dictType\" : [ \"pool_table_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"default\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 14:25:43');
INSERT INTO `sys_oper_log` VALUES ('110', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"1\" ],\r\n  \"dictValue\" : [ \"使用中\" ],\r\n  \"dictType\" : [ \"pool_table_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"warning\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 14:26:17');
INSERT INTO `sys_oper_log` VALUES ('111', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  \"dictCode\" : [ \"101\" ],\r\n  \"dictLabel\" : [ \"使用中\" ],\r\n  \"dictValue\" : [ \"1\" ],\r\n  \"dictType\" : [ \"pool_table_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"warning\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 14:26:35');
INSERT INTO `sys_oper_log` VALUES ('112', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  \"dictCode\" : [ \"100\" ],\r\n  \"dictLabel\" : [ \"空闲\" ],\r\n  \"dictValue\" : [ \"0\" ],\r\n  \"dictType\" : [ \"pool_table_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"primary\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 14:26:43');
INSERT INTO `sys_oper_log` VALUES ('113', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"损坏\" ],\r\n  \"dictValue\" : [ \"9\" ],\r\n  \"dictType\" : [ \"pool_table_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"3\" ],\r\n  \"listClass\" : [ \"danger\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 14:27:14');
INSERT INTO `sys_oper_log` VALUES ('114', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"2\" ],\r\n  \"tableName\" : [ \"t_pool_table\" ],\r\n  \"tableComment\" : [ \"球台信息\" ],\r\n  \"className\" : [ \"TPoolTable\" ],\r\n  \"functionAuthor\" : [ \"Sunny\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"5\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"主键\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"id\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"6\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"球台编号\" ],\r\n  \"columns[1].javaType\" : [ \"Long\" ],\r\n  \"columns[1].javaField\" : [ \"no\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"7\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"球台地址\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"addr\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"textarea\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"8\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"球台状态\" ],\r\n  \"columns[3].javaType\" : [ \"Integer\" ],\r\n  \"columns[3].javaField\" : [ \"status\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"radio\" ],\r\n  \"columns[3].dictType\" : [ \"pool_table_status\" ],\r\n  \"tplCategory\" : [ \"crud\" ],\r\n  \"packageName\" : [ \"com.ruoyi.system\" ],\r\n  \"moduleName\" : [ \"system\" ],\r\n  \"businessName\"', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 14:27:52');
INSERT INTO `sys_oper_log` VALUES ('115', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"2\" ],\r\n  \"tableName\" : [ \"t_pool_table\" ],\r\n  \"tableComment\" : [ \"球台信息\" ],\r\n  \"className\" : [ \"TPoolTable\" ],\r\n  \"functionAuthor\" : [ \"Sunny\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"5\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"主键\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"id\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"6\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"球台编号\" ],\r\n  \"columns[1].javaType\" : [ \"Long\" ],\r\n  \"columns[1].javaField\" : [ \"no\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"7\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"球台地址\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"addr\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"textarea\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"8\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"球台状态\" ],\r\n  \"columns[3].javaType\" : [ \"Integer\" ],\r\n  \"columns[3].javaField\" : [ \"status\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"radio\" ],\r\n  \"columns[3].dictType\" : [ \"pool_table_status\" ],\r\n  \"tplCategory\" : [ \"crud\" ],\r\n  \"packageName\" : [ \"com.ruoyi.system\" ],\r\n  \"moduleName\" : [ \"system\" ],\r\n  \"businessName\"', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 14:28:38');
INSERT INTO `sys_oper_log` VALUES ('116', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/t_pool_table', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2020-04-14 14:28:40');
INSERT INTO `sys_oper_log` VALUES ('117', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"2\" ],\r\n  \"tableName\" : [ \"t_pool_table\" ],\r\n  \"tableComment\" : [ \"球台信息\" ],\r\n  \"className\" : [ \"TPoolTable\" ],\r\n  \"functionAuthor\" : [ \"Sunny\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"5\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"主键\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"id\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"6\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"球台编号\" ],\r\n  \"columns[1].javaType\" : [ \"Long\" ],\r\n  \"columns[1].javaField\" : [ \"no\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"7\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"球台地址\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"addr\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"LIKE\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"textarea\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"8\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"球台状态\" ],\r\n  \"columns[3].javaType\" : [ \"Integer\" ],\r\n  \"columns[3].javaField\" : [ \"status\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"radio\" ],\r\n  \"columns[3].dictType\" : [ \"pool_table_status\" ],\r\n  \"tpl', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 14:50:33');
INSERT INTO `sys_oper_log` VALUES ('118', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/t_pool_table', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2020-04-14 14:52:53');
INSERT INTO `sys_oper_log` VALUES ('119', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"球台管理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"fa fa-cube\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:02:14');
INSERT INTO `sys_oper_log` VALUES ('120', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"球台管理\" ],\r\n  \"url\" : [ \"/business/poolTable/list\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"business:poolTable:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-leaf\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:03:23');
INSERT INTO `sys_oper_log` VALUES ('121', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2001\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"球台管理\" ],\r\n  \"url\" : [ \"/business/poolTable\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"admin\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-leaf\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:05:40');
INSERT INTO `sys_oper_log` VALUES ('122', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2001\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"球台管理\" ],\r\n  \"url\" : [ \"/business/poolTable/view\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"business:poolTable:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-leaf\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:17:20');
INSERT INTO `sys_oper_log` VALUES ('123', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"1\" ],\r\n  \"addr\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:20:35');
INSERT INTO `sys_oper_log` VALUES ('124', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"2\" ],\r\n  \"addr\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:20:45');
INSERT INTO `sys_oper_log` VALUES ('125', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"3\" ],\r\n  \"addr\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:20:53');
INSERT INTO `sys_oper_log` VALUES ('126', '球台信息', '2', 'com.ruoyi.web.controller.business.TPoolTableController.editSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"1\" ],\r\n  \"no\" : [ \"1\" ],\r\n  \"addr\" : [ \"11\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:20:58');
INSERT INTO `sys_oper_log` VALUES ('127', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"4\" ],\r\n  \"addr\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:21:06');
INSERT INTO `sys_oper_log` VALUES ('128', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"5\" ],\r\n  \"addr\" : [ \"5\" ],\r\n  \"status\" : [ \"9\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:21:10');
INSERT INTO `sys_oper_log` VALUES ('129', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"6\" ],\r\n  \"addr\" : [ \"6\" ],\r\n  \"status\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:21:17');
INSERT INTO `sys_oper_log` VALUES ('130', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"7\" ],\r\n  \"addr\" : [ \"7\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:21:22');
INSERT INTO `sys_oper_log` VALUES ('131', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"8\" ],\r\n  \"addr\" : [ \"8\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:21:28');
INSERT INTO `sys_oper_log` VALUES ('132', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"9\" ],\r\n  \"addr\" : [ \"9\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:21:33');
INSERT INTO `sys_oper_log` VALUES ('133', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"10\" ],\r\n  \"addr\" : [ \"10\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:21:41');
INSERT INTO `sys_oper_log` VALUES ('134', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"11\" ],\r\n  \"addr\" : [ \"11\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:21:47');
INSERT INTO `sys_oper_log` VALUES ('135', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"12\" ],\r\n  \"addr\" : [ \"12\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:21:55');
INSERT INTO `sys_oper_log` VALUES ('136', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"13\" ],\r\n  \"addr\" : [ \"13\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:21:59');
INSERT INTO `sys_oper_log` VALUES ('137', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"14\" ],\r\n  \"addr\" : [ \"14\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:22:03');
INSERT INTO `sys_oper_log` VALUES ('138', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"15\" ],\r\n  \"addr\" : [ \"15\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:22:07');
INSERT INTO `sys_oper_log` VALUES ('139', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"16\" ],\r\n  \"addr\" : [ \"16\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:22:12');
INSERT INTO `sys_oper_log` VALUES ('140', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"17\" ],\r\n  \"addr\" : [ \"17\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:22:18');
INSERT INTO `sys_oper_log` VALUES ('141', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"18\" ],\r\n  \"addr\" : [ \"18\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:22:24');
INSERT INTO `sys_oper_log` VALUES ('142', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"19\" ],\r\n  \"addr\" : [ \"19\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:22:29');
INSERT INTO `sys_oper_log` VALUES ('143', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"20\" ],\r\n  \"addr\" : [ \"20\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:22:35');
INSERT INTO `sys_oper_log` VALUES ('144', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"5\" ],\r\n  \"addr\" : [ \"5\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:23:30');
INSERT INTO `sys_oper_log` VALUES ('145', '球台信息', '1', 'com.ruoyi.web.controller.business.TPoolTableController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/poolTable/add', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"6\" ],\r\n  \"addr\" : [ \"6\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:23:34');
INSERT INTO `sys_oper_log` VALUES ('146', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"t_student\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:34:10');
INSERT INTO `sys_oper_log` VALUES ('147', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"3\" ],\r\n  \"tableName\" : [ \"t_student\" ],\r\n  \"tableComment\" : [ \"学生信息\" ],\r\n  \"className\" : [ \"TStudent\" ],\r\n  \"functionAuthor\" : [ \"Sunny\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"9\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"主键\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"id\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"10\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"学生姓名\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"stuName\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"11\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"学号\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"stuNo\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"12\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"班级\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"stuClass\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"tplCategory\" : [ \"cr', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:34:43');
INSERT INTO `sys_oper_log` VALUES ('148', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/t_student', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2020-04-14 15:34:47');
INSERT INTO `sys_oper_log` VALUES ('149', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"学生管理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:42:22');
INSERT INTO `sys_oper_log` VALUES ('150', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2002\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"学生管理\" ],\r\n  \"url\" : [ \"/business/student/view\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"business:student:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-leaf\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:43:12');
INSERT INTO `sys_oper_log` VALUES ('151', '学生信息', '1', 'com.ruoyi.web.controller.business.TStudentController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/student/add', '127.0.0.1', '内网IP', '{\r\n  \"stuName\" : [ \"张三\" ],\r\n  \"stuNo\" : [ \"00001\" ],\r\n  \"stuClass\" : [ \"计科20级1班\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:56:13');
INSERT INTO `sys_oper_log` VALUES ('152', '学生信息', '1', 'com.ruoyi.web.controller.business.TStudentController.addSave()', 'POST', '1', 'admin', '研发部门', '/business/student/add', '127.0.0.1', '内网IP', '{\r\n  \"stuName\" : [ \"李四\" ],\r\n  \"stuNo\" : [ \"000002\" ],\r\n  \"stuClass\" : [ \"化环21级2班\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:56:37');
INSERT INTO `sys_oper_log` VALUES ('153', '学生信息', '2', 'com.ruoyi.web.controller.business.TStudentController.editSave()', 'POST', '1', 'admin', '研发部门', '/business/student/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"1\" ],\r\n  \"stuName\" : [ \"张三\" ],\r\n  \"stuNo\" : [ \"00001\" ],\r\n  \"stuClass\" : [ \"计科20级2班\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:57:04');
INSERT INTO `sys_oper_log` VALUES ('154', '学生信息', '2', 'com.ruoyi.web.controller.business.TStudentController.editSave()', 'POST', '1', 'admin', '研发部门', '/business/student/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"1\" ],\r\n  \"stuName\" : [ \"张三\" ],\r\n  \"stuNo\" : [ \"00001\" ],\r\n  \"stuClass\" : [ \"计科20级1班\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:57:08');
INSERT INTO `sys_oper_log` VALUES ('155', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/109', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:58:05');
INSERT INTO `sys_oper_log` VALUES ('156', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/108', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:58:07');
INSERT INTO `sys_oper_log` VALUES ('157', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/102', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:58:09');
INSERT INTO `sys_oper_log` VALUES ('158', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/107', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:58:11');
INSERT INTO `sys_oper_log` VALUES ('159', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/106', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:58:12');
INSERT INTO `sys_oper_log` VALUES ('160', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/105', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"部门存在用户,不允许删除\",\r\n  \"code\" : 301\r\n}', '0', null, '2020-04-14 15:58:14');
INSERT INTO `sys_oper_log` VALUES ('161', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/104', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:58:18');
INSERT INTO `sys_oper_log` VALUES ('162', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/103', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"部门存在用户,不允许删除\",\r\n  \"code\" : 301\r\n}', '0', null, '2020-04-14 15:58:19');
INSERT INTO `sys_oper_log` VALUES ('163', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/101', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"存在下级部门,不允许删除\",\r\n  \"code\" : 301\r\n}', '0', null, '2020-04-14 15:58:21');
INSERT INTO `sys_oper_log` VALUES ('164', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"学生\" ],\r\n  \"roleKey\" : [ \"student\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"普通角色\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:59:34');
INSERT INTO `sys_oper_log` VALUES ('165', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', '1', 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 15:59:53');
INSERT INTO `sys_oper_log` VALUES ('166', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"管理员\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@163.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', 'null', '1', '不允许操作超级管理员用户', '2020-04-14 16:00:09');
INSERT INTO `sys_oper_log` VALUES ('167', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/105', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 16:01:18');
INSERT INTO `sys_oper_log` VALUES ('168', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/103', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"部门存在用户,不允许删除\",\r\n  \"code\" : 301\r\n}', '0', null, '2020-04-14 16:01:20');
INSERT INTO `sys_oper_log` VALUES ('169', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/101', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"存在下级部门,不允许删除\",\r\n  \"code\" : 301\r\n}', '0', null, '2020-04-14 16:01:23');
INSERT INTO `sys_oper_log` VALUES ('170', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"100\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"parentName\" : [ \"无\" ],\r\n  \"deptName\" : [ \"后台管理\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"leader\" : [ \"管理员\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"1@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 16:01:45');
INSERT INTO `sys_oper_log` VALUES ('171', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"103\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"后台管理\" ],\r\n  \"deptName\" : [ \"研发部门\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"若依\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 16:01:54');
INSERT INTO `sys_oper_log` VALUES ('172', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/103', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"部门存在用户,不允许删除\",\r\n  \"code\" : 301\r\n}', '0', null, '2020-04-14 16:01:59');
INSERT INTO `sys_oper_log` VALUES ('173', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/101', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 16:02:01');
INSERT INTO `sys_oper_log` VALUES ('174', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"103\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"后台管理\" ],\r\n  \"deptName\" : [ \"管理员\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"管理员\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"2@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 16:02:20');
INSERT INTO `sys_oper_log` VALUES ('175', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"管理员\" ],\r\n  \"dept.deptName\" : [ \"管理员\" ],\r\n  \"phonenumber\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"1@163.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', 'null', '1', '不允许操作超级管理员用户', '2020-04-14 16:02:53');
INSERT INTO `sys_oper_log` VALUES ('176', '岗位管理', '3', 'com.ruoyi.web.controller.system.SysPostController.remove()', 'POST', '1', 'admin', '研发部门', '/system/post/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"4\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 16:03:10');
INSERT INTO `sys_oper_log` VALUES ('177', '岗位管理', '3', 'com.ruoyi.web.controller.system.SysPostController.remove()', 'POST', '1', 'admin', '研发部门', '/system/post/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 16:03:12');
INSERT INTO `sys_oper_log` VALUES ('178', '岗位管理', '3', 'com.ruoyi.web.controller.system.SysPostController.remove()', 'POST', '1', 'admin', '研发部门', '/system/post/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"项目经理已分配,不能删除\",\r\n  \"code\" : 500\r\n}', '0', null, '2020-04-14 16:03:13');
INSERT INTO `sys_oper_log` VALUES ('179', '岗位管理', '3', 'com.ruoyi.web.controller.system.SysPostController.remove()', 'POST', '1', 'admin', '研发部门', '/system/post/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"项目经理已分配,不能删除\",\r\n  \"code\" : 500\r\n}', '0', null, '2020-04-14 16:03:16');
INSERT INTO `sys_oper_log` VALUES ('180', '岗位管理', '3', 'com.ruoyi.web.controller.system.SysPostController.remove()', 'POST', '1', 'admin', '研发部门', '/system/post/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"董事长已分配,不能删除\",\r\n  \"code\" : 500\r\n}', '0', null, '2020-04-14 16:03:20');
INSERT INTO `sys_oper_log` VALUES ('181', '岗位管理', '2', 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\r\n  \"postId\" : [ \"1\" ],\r\n  \"postName\" : [ \"管理员\" ],\r\n  \"postCode\" : [ \"admin\" ],\r\n  \"postSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 16:03:31');
INSERT INTO `sys_oper_log` VALUES ('182', '岗位管理', '2', 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\r\n  \"postId\" : [ \"2\" ],\r\n  \"postName\" : [ \"学生\" ],\r\n  \"postCode\" : [ \"student\" ],\r\n  \"postSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 16:03:41');
INSERT INTO `sys_oper_log` VALUES ('183', '角色管理', '1', 'com.ruoyi.web.controller.system.SysRoleController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\r\n  \"roleName\" : [ \"普通管理员\" ],\r\n  \"roleKey\" : [ \"common:admin\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,105,1025,1026,1027,1028,1029,2000,2001,2002,2003\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 16:06:52');
INSERT INTO `sys_oper_log` VALUES ('184', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"管理员\" ],\r\n  \"deptName\" : [ \"管理员\" ],\r\n  \"phonenumber\" : [ \"15888888887\" ],\r\n  \"email\" : [ \"13@163.com\" ],\r\n  \"loginName\" : [ \"admin001\" ],\r\n  \"password\" : [ \"admin123\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 16:07:00');
INSERT INTO `sys_oper_log` VALUES ('185', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"100\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"管理员\" ],\r\n  \"dept.deptName\" : [ \"管理员\" ],\r\n  \"phonenumber\" : [ \"15888888887\" ],\r\n  \"email\" : [ \"13@163.com\" ],\r\n  \"loginName\" : [ \"admin001\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-14 16:07:07');
INSERT INTO `sys_oper_log` VALUES ('186', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'admin', '管理员', '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  \"dictName\" : [ \"预约审核状态\" ],\r\n  \"dictType\" : [ \"reverse_status\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-15 15:52:08');
INSERT INTO `sys_oper_log` VALUES ('187', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '管理员', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"同意预约\" ],\r\n  \"dictValue\" : [ \"1\" ],\r\n  \"dictType\" : [ \"reverse_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"0\" ],\r\n  \"listClass\" : [ \"success\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-15 15:52:48');
INSERT INTO `sys_oper_log` VALUES ('188', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '管理员', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"未处理\" ],\r\n  \"dictValue\" : [ \"0\" ],\r\n  \"dictType\" : [ \"reverse_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"warning\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-15 15:53:48');
INSERT INTO `sys_oper_log` VALUES ('189', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '管理员', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"拒绝预约\" ],\r\n  \"dictValue\" : [ \"3\" ],\r\n  \"dictType\" : [ \"reverse_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"3\" ],\r\n  \"listClass\" : [ \"danger\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-15 15:54:05');
INSERT INTO `sys_oper_log` VALUES ('190', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '管理员', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"预约球台\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"icon\" : [ \"fa fa-history\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-15 16:51:35');
INSERT INTO `sys_oper_log` VALUES ('191', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '管理员', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2004\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"立即预约\" ],\r\n  \"url\" : [ \"/business/reverse\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"icon\" : [ \"fa fa-leaf\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-15 16:53:12');
INSERT INTO `sys_oper_log` VALUES ('192', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '管理员', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2004\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"我的预约\" ],\r\n  \"url\" : [ \"/business/myReverseView\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-15 16:54:04');
INSERT INTO `sys_oper_log` VALUES ('193', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '管理员', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2006\" ],\r\n  \"parentId\" : [ \"2004\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"我的预约\" ],\r\n  \"url\" : [ \"/business/myReverseView\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-leaf\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-15 16:54:19');
INSERT INTO `sys_oper_log` VALUES ('194', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"学生\" ],\r\n  \"roleKey\" : [ \"student\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"普通角色\" ],\r\n  \"menuIds\" : [ \"2004,2005,2006\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-15 17:00:55');
INSERT INTO `sys_oper_log` VALUES ('195', '部门管理', '1', 'com.ruoyi.web.controller.system.SysDeptController.addSave()', 'POST', '1', 'admin', '管理员', '/system/dept/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"100\" ],\r\n  \"deptName\" : [ \"普通用户\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"leader\" : [ \"\" ],\r\n  \"phone\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-15 17:01:52');
INSERT INTO `sys_oper_log` VALUES ('196', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '管理员', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"107\" ],\r\n  \"deptId\" : [ \"110\" ],\r\n  \"userName\" : [ \"磨磨\" ],\r\n  \"dept.deptName\" : [ \"普通用户\" ],\r\n  \"phonenumber\" : [ \"15888888886\" ],\r\n  \"email\" : [ \"2222@163.com\" ],\r\n  \"loginName\" : [ \"motialong\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-15 17:02:00');
INSERT INTO `sys_oper_log` VALUES ('197', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '管理员', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"预定管理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"fa fa-gears\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-15 17:38:54');
INSERT INTO `sys_oper_log` VALUES ('198', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '管理员', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2007\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"预约处理\" ],\r\n  \"url\" : [ \"/business/reverseView\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-leaf\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-15 17:40:51');
INSERT INTO `sys_oper_log` VALUES ('199', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '管理员', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2007\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"历史预约查询\" ],\r\n  \"url\" : [ \"/business/hisReverseView\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"business:hisReverseView\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-leaf\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-16 09:38:31');
INSERT INTO `sys_oper_log` VALUES ('200', '通知公告', '3', 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'POST', '1', 'admin', '管理员', '/system/notice/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-16 11:23:09');
INSERT INTO `sys_oper_log` VALUES ('201', '通知公告', '3', 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'POST', '1', 'admin', '管理员', '/system/notice/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-16 11:23:11');
INSERT INTO `sys_oper_log` VALUES ('202', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', '1', 'admin', '管理员', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"109\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-16 11:24:14');
INSERT INTO `sys_oper_log` VALUES ('203', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', '1', 'admin', '管理员', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"108\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-16 11:24:16');
INSERT INTO `sys_oper_log` VALUES ('204', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', '1', 'admin', '管理员', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"107\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-16 11:24:18');
INSERT INTO `sys_oper_log` VALUES ('205', '角色管理', '3', 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'POST', '1', 'admin', '管理员', '/system/role/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"不允许操作超级管理员角色\",\r\n  \"code\" : 500\r\n}', '0', null, '2020-04-16 11:24:50');
INSERT INTO `sys_oper_log` VALUES ('206', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"普通管理员\" ],\r\n  \"roleKey\" : [ \"common:admin\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,105,1025,1026,1027,1028,1029,2007,2008,2009,2000,2001,2002,2003\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-16 11:26:06');
INSERT INTO `sys_oper_log` VALUES ('207', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', '1', 'admin', '管理员', '/system/user/add', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"deptName\" : [ \"管理员\" ],\r\n  \"phonenumber\" : [ \"15888888887\" ],\r\n  \"email\" : [ \"13@163.com\" ],\r\n  \"loginName\" : [ \"manage\" ],\r\n  \"password\" : [ \"admin123\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-16 11:32:33');
INSERT INTO `sys_oper_log` VALUES ('208', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '管理员', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2006\" ],\r\n  \"parentId\" : [ \"2004\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"我的预约\" ],\r\n  \"url\" : [ \"/business/myReverseView\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"business:myReverseView\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-leaf\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-16 14:41:11');
INSERT INTO `sys_oper_log` VALUES ('209', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '管理员', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2008\" ],\r\n  \"parentId\" : [ \"2007\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"预约处理\" ],\r\n  \"url\" : [ \"/business/reverseView\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"business:reverseView\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-leaf\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-16 14:41:28');
INSERT INTO `sys_oper_log` VALUES ('210', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '管理员', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2009\" ],\r\n  \"parentId\" : [ \"2007\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"历史预约查询\" ],\r\n  \"url\" : [ \"/business/hisReverseView\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"business:hisReverseView\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-leaf\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-16 14:41:43');
INSERT INTO `sys_oper_log` VALUES ('211', '球台信息', '5', 'com.ruoyi.web.controller.business.TPoolTableController.export()', 'POST', '1', 'manage', '管理员', '/business/poolTable/export', '127.0.0.1', '内网IP', '{\r\n  \"no\" : [ \"\" ],\r\n  \"status\" : [ \"\" ],\r\n  \"orderByColumn\" : [ \"\" ],\r\n  \"isAsc\" : [ \"asc\" ]\r\n}', '{\r\n  \"msg\" : \"ce57d8b5-ad79-49e4-8079-f42530da5f1e_poolTable.xlsx\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-16 17:55:04');
INSERT INTO `sys_oper_log` VALUES ('212', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"普通管理员\" ],\r\n  \"roleKey\" : [ \"common:admin\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2007,2008,2009,2000,2001,2002,2003\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-19 11:46:24');
INSERT INTO `sys_oper_log` VALUES ('213', '重置密码', '2', 'com.ruoyi.web.controller.system.SysProfileController.resetPwd()', 'POST', '1', 'manage', '管理员', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"110\" ],\r\n  \"loginName\" : [ \"manage\" ],\r\n  \"oldPassword\" : [ \"admin123\" ],\r\n  \"newPassword\" : [ \"123123\" ],\r\n  \"confirm\" : [ \"123123\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-19 12:07:52');
INSERT INTO `sys_oper_log` VALUES ('214', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '管理员', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"保修及评价\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"10\" ],\r\n  \"icon\" : [ \"fa fa-paper-plane\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-21 20:42:37');
INSERT INTO `sys_oper_log` VALUES ('215', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '管理员', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2010\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"评价\" ],\r\n  \"url\" : [ \"/business/appraise\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-bell-o\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-21 20:44:09');
INSERT INTO `sys_oper_log` VALUES ('216', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '管理员', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"t_appraise\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 14:35:39');
INSERT INTO `sys_oper_log` VALUES ('217', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '管理员', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"t_repair\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 15:17:12');
INSERT INTO `sys_oper_log` VALUES ('218', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '管理员', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"5\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 15:18:26');
INSERT INTO `sys_oper_log` VALUES ('219', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '管理员', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"t_repair\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 15:18:29');
INSERT INTO `sys_oper_log` VALUES ('220', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'admin', '管理员', '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  \"dictName\" : [ \"报修处理状态\" ],\r\n  \"dictType\" : [ \"repair_status\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 15:19:36');
INSERT INTO `sys_oper_log` VALUES ('221', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '管理员', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"未处理\" ],\r\n  \"dictValue\" : [ \"0\" ],\r\n  \"dictType\" : [ \"repair_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"0\" ],\r\n  \"listClass\" : [ \"warning\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 15:20:01');
INSERT INTO `sys_oper_log` VALUES ('222', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '管理员', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"已处理\" ],\r\n  \"dictValue\" : [ \"1\" ],\r\n  \"dictType\" : [ \"repair_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"success\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 15:20:14');
INSERT INTO `sys_oper_log` VALUES ('223', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '管理员', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"6\" ],\r\n  \"tableName\" : [ \"t_repair\" ],\r\n  \"tableComment\" : [ \"报修信息\" ],\r\n  \"className\" : [ \"Repair\" ],\r\n  \"functionAuthor\" : [ \"Sunny\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"29\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"主键\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"id\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"30\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"报修用户ID\" ],\r\n  \"columns[1].javaType\" : [ \"Long\" ],\r\n  \"columns[1].javaField\" : [ \"repairUserId\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"31\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"报修人\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"repairUserName\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"LIKE\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"32\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"报修人学号\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"repairStudentNo\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"33\" ],\r\n  \"columns[4].sort\" : [ \"5\" ],\r\n  \"columns[4].columnComment\" : [ \"球台编号\" ],\r\n  \"columns[4].javaType\" : [ \"String\" ],\r\n  \"columns[4].javaField\" : [ \"tableNo\" ],\r\n  \"columns[4].isInsert\" : [ \"1\" ],\r\n  \"columns[4].isList\" : [ \"1\" ],\r\n  \"columns[4].isQuery\" : [ \"1\" ],\r\n  \"columns[4].queryType\" : [ \"EQ\" ],\r\n  \"columns[4].htmlType\" : [ \"input\" ],\r\n  \"columns[4].dictType\" : [ \"\" ],\r\n  \"columns[5].', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 15:22:14');
INSERT INTO `sys_oper_log` VALUES ('224', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '管理员', '/tool/gen/genCode/t_repair', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2020-04-22 15:24:11');
INSERT INTO `sys_oper_log` VALUES ('225', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '管理员', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2010\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"保修\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"10\" ],\r\n  \"icon\" : [ \"fa fa-paper-plane\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 15:29:50');
INSERT INTO `sys_oper_log` VALUES ('226', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '管理员', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2010\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"报修\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"10\" ],\r\n  \"icon\" : [ \"fa fa-wrench\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 15:30:16');
INSERT INTO `sys_oper_log` VALUES ('227', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '管理员', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2011\" ],\r\n  \"parentId\" : [ \"2010\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"报修申请\" ],\r\n  \"url\" : [ \"/business/repair/view\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"business:repair:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-bell-o\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 15:31:27');
INSERT INTO `sys_oper_log` VALUES ('228', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '管理员', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2011\" ],\r\n  \"parentId\" : [ \"2010\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"报修申请\" ],\r\n  \"url\" : [ \"/business/repair/add\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-bell-o\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 15:33:51');
INSERT INTO `sys_oper_log` VALUES ('229', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '管理员', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2010\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"报修\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"10\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 15:33:58');
INSERT INTO `sys_oper_log` VALUES ('230', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '管理员', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2010\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"我的报修\" ],\r\n  \"url\" : [ \"/business/repair/view\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"business:repair:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 15:37:17');
INSERT INTO `sys_oper_log` VALUES ('231', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"学生\" ],\r\n  \"roleKey\" : [ \"student\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"普通角色\" ],\r\n  \"menuIds\" : [ \"2004,2005,2006,2010,2011,2012\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 15:37:53');
INSERT INTO `sys_oper_log` VALUES ('232', '报修信息', '1', 'com.ruoyi.web.controller.business.RepairController.addSave()', 'POST', '1', 'test', null, '/business/repair/add', '127.0.0.1', '内网IP', '{\r\n  \"tableNo\" : [ \"\" ],\r\n  \"comment\" : [ \"\" ]\r\n}', 'null', '1', 'For input string: \"\"', '2020-04-22 16:01:08');
INSERT INTO `sys_oper_log` VALUES ('233', '报修信息', '1', 'com.ruoyi.web.controller.business.RepairController.addSave()', 'POST', '1', 'test', null, '/business/repair/add', '127.0.0.1', '内网IP', '{\r\n  \"tableNo\" : [ \"2\" ],\r\n  \"comment\" : [ \"哈哈\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 16:02:02');
INSERT INTO `sys_oper_log` VALUES ('234', '报修信息', '1', 'com.ruoyi.web.controller.business.RepairController.addSave()', 'POST', '1', 'test', null, '/business/repair/add', '127.0.0.1', '内网IP', '{\r\n  \"tableNo\" : [ \"\" ],\r\n  \"comment\" : [ \"\" ]\r\n}', 'null', '1', 'For input string: \"\"', '2020-04-22 16:04:51');
INSERT INTO `sys_oper_log` VALUES ('235', '报修信息', '1', 'com.ruoyi.web.controller.business.RepairController.addSave()', 'POST', '1', 'test', null, '/business/repair/add', '127.0.0.1', '内网IP', '{\r\n  \"tableNo\" : [ \"\" ],\r\n  \"comment\" : [ \"\" ]\r\n}', 'null', '1', 'For input string: \"\"', '2020-04-22 16:04:56');
INSERT INTO `sys_oper_log` VALUES ('236', '报修信息', '1', 'com.ruoyi.web.controller.business.RepairController.addSave()', 'POST', '1', 'test', null, '/business/repair/add', '127.0.0.1', '内网IP', '{\r\n  \"tableNo\" : [ \"32\" ],\r\n  \"comment\" : [ \"12\" ]\r\n}', '{\r\n  \"msg\" : \"球台编号[32]不存在！\",\r\n  \"code\" : 500\r\n}', '0', null, '2020-04-22 16:07:14');
INSERT INTO `sys_oper_log` VALUES ('237', '报修信息', '1', 'com.ruoyi.web.controller.business.RepairController.addSave()', 'POST', '1', 'test', null, '/business/repair/add', '127.0.0.1', '内网IP', '{\r\n  \"tableNo\" : [ \"3\" ],\r\n  \"comment\" : [ \"333\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 16:07:24');
INSERT INTO `sys_oper_log` VALUES ('238', '报修信息', '1', 'com.ruoyi.web.controller.business.RepairController.addSave()', 'POST', '1', 'test', null, '/business/repair/add', '127.0.0.1', '内网IP', '{\r\n  \"tableNo\" : [ \"44\" ],\r\n  \"comment\" : [ \"44\" ]\r\n}', '{\r\n  \"msg\" : \"球台编号[44]不存在！\",\r\n  \"code\" : 500\r\n}', '0', null, '2020-04-22 16:08:25');
INSERT INTO `sys_oper_log` VALUES ('239', '报修信息', '1', 'com.ruoyi.web.controller.business.RepairController.addSave()', 'POST', '1', 'test', null, '/business/repair/add', '127.0.0.1', '内网IP', '{\r\n  \"tableNo\" : [ \"4\" ],\r\n  \"comment\" : [ \"44\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 16:08:28');
INSERT INTO `sys_oper_log` VALUES ('240', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '管理员', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  \"dictCode\" : [ \"107\" ],\r\n  \"dictLabel\" : [ \"同意报修\" ],\r\n  \"dictValue\" : [ \"1\" ],\r\n  \"dictType\" : [ \"repair_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"success\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 16:50:23');
INSERT INTO `sys_oper_log` VALUES ('241', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '管理员', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"拒绝报修\" ],\r\n  \"dictValue\" : [ \"2\" ],\r\n  \"dictType\" : [ \"repair_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"danger\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 16:50:59');
INSERT INTO `sys_oper_log` VALUES ('242', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '管理员', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2010\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"报修处理\" ],\r\n  \"url\" : [ \"/business/repair/doRepairView\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"business:repair:doRepairView\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 16:58:22');
INSERT INTO `sys_oper_log` VALUES ('243', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"普通管理员\" ],\r\n  \"roleKey\" : [ \"common:admin\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2007,2008,2009,2000,2001,2002,2003,2010,2013\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-04-22 16:58:39');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'admin', '管理员', '1', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-14 16:03:30', '');
INSERT INTO `sys_post` VALUES ('2', 'student', '学生', '2', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-14 16:03:41', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', 'admin', '1', '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES ('2', '学生', 'student', '2', '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-22 15:37:53', '普通角色');
INSERT INTO `sys_role` VALUES ('100', '普通管理员', 'common:admin', '3', '1', '0', '0', 'admin', '2020-04-14 16:06:52', 'admin', '2020-04-22 16:58:39', '');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '2004');
INSERT INTO `sys_role_menu` VALUES ('2', '2005');
INSERT INTO `sys_role_menu` VALUES ('2', '2006');
INSERT INTO `sys_role_menu` VALUES ('2', '2010');
INSERT INTO `sys_role_menu` VALUES ('2', '2011');
INSERT INTO `sys_role_menu` VALUES ('2', '2012');
INSERT INTO `sys_role_menu` VALUES ('100', '2000');
INSERT INTO `sys_role_menu` VALUES ('100', '2001');
INSERT INTO `sys_role_menu` VALUES ('100', '2002');
INSERT INTO `sys_role_menu` VALUES ('100', '2003');
INSERT INTO `sys_role_menu` VALUES ('100', '2007');
INSERT INTO `sys_role_menu` VALUES ('100', '2008');
INSERT INTO `sys_role_menu` VALUES ('100', '2009');
INSERT INTO `sys_role_menu` VALUES ('100', '2010');
INSERT INTO `sys_role_menu` VALUES ('100', '2013');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '管理员', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2020-04-22 16:59:42', 'admin', '2018-03-16 11:33:00', 'ry', '2020-04-22 16:59:42', '管理员');
INSERT INTO `sys_user` VALUES ('110', '103', 'manage', 'admin', '00', '13@163.com', '15888888887', '1', '', 'cd5a262bbf9f8ca5203d08bfb4fbd77f', '302fa9', '0', '0', '127.0.0.1', '2020-04-22 14:57:15', 'admin', '2020-04-16 11:32:33', '', '2020-04-22 14:57:16', null);
INSERT INTO `sys_user` VALUES ('115', null, 'test', '测试', '01', '', '', '0', '', '7f5f1d428e275e55584cc48d712e5251', 'edbbb9', '0', '0', '127.0.0.1', '2020-04-22 15:39:05', '', '2020-04-16 17:43:22', '', '2020-04-22 15:39:05', null);

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');
INSERT INTO `sys_user_post` VALUES ('110', '1');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('100', '100');
INSERT INTO `sys_user_role` VALUES ('107', '2');
INSERT INTO `sys_user_role` VALUES ('110', '100');
INSERT INTO `sys_user_role` VALUES ('112', '2');
INSERT INTO `sys_user_role` VALUES ('113', '2');
INSERT INTO `sys_user_role` VALUES ('115', '2');

-- ----------------------------
-- Table structure for t_appraise
-- ----------------------------
DROP TABLE IF EXISTS `t_appraise`;
CREATE TABLE `t_appraise` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `reverse_info_id` int(11) DEFAULT NULL COMMENT '预约信息ID',
  `clean_num` int(11) DEFAULT '0' COMMENT '台面清洁评分',
  `qiu_tai_num` int(11) DEFAULT '0' COMMENT '球台完整评分',
  `temp_num` int(11) DEFAULT '0' COMMENT '室内温度评分',
  `comment` varchar(255) DEFAULT NULL COMMENT '其他建议',
  `appraise_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '评价时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `appraise_idx` (`reverse_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='评论信息';

-- ----------------------------
-- Records of t_appraise
-- ----------------------------

-- ----------------------------
-- Table structure for t_pool_table
-- ----------------------------
DROP TABLE IF EXISTS `t_pool_table`;
CREATE TABLE `t_pool_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `no` int(11) DEFAULT NULL COMMENT '球台编号',
  `addr` varchar(255) DEFAULT NULL COMMENT '球台地址',
  `status` tinyint(1) DEFAULT NULL COMMENT '球台状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='球台信息';

-- ----------------------------
-- Records of t_pool_table
-- ----------------------------
INSERT INTO `t_pool_table` VALUES ('1', '1', '11', '0');
INSERT INTO `t_pool_table` VALUES ('2', '2', '2', '0');
INSERT INTO `t_pool_table` VALUES ('3', '3', '3', '0');
INSERT INTO `t_pool_table` VALUES ('4', '4', '4', '0');
INSERT INTO `t_pool_table` VALUES ('5', '5', '5', '9');
INSERT INTO `t_pool_table` VALUES ('6', '6', '6', '1');
INSERT INTO `t_pool_table` VALUES ('7', '7', '7', '0');
INSERT INTO `t_pool_table` VALUES ('8', '8', '8', '0');
INSERT INTO `t_pool_table` VALUES ('9', '9', '9', '0');
INSERT INTO `t_pool_table` VALUES ('10', '10', '10', '0');
INSERT INTO `t_pool_table` VALUES ('11', '11', '11', '0');
INSERT INTO `t_pool_table` VALUES ('12', '12', '12', '0');
INSERT INTO `t_pool_table` VALUES ('13', '13', '13', '0');
INSERT INTO `t_pool_table` VALUES ('14', '14', '14', '0');
INSERT INTO `t_pool_table` VALUES ('15', '15', '15', '0');
INSERT INTO `t_pool_table` VALUES ('16', '16', '16', '0');
INSERT INTO `t_pool_table` VALUES ('17', '17', '17', '0');
INSERT INTO `t_pool_table` VALUES ('18', '18', '18', '0');
INSERT INTO `t_pool_table` VALUES ('19', '19', '19', '0');
INSERT INTO `t_pool_table` VALUES ('20', '20', '20', '0');
INSERT INTO `t_pool_table` VALUES ('21', '5', '5', '0');
INSERT INTO `t_pool_table` VALUES ('22', '6', '6', '0');

-- ----------------------------
-- Table structure for t_repair
-- ----------------------------
DROP TABLE IF EXISTS `t_repair`;
CREATE TABLE `t_repair` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `repair_user_id` int(11) DEFAULT NULL COMMENT '报修用户ID',
  `repair_user_name` varchar(255) DEFAULT NULL COMMENT '报修人',
  `repair_student_no` varchar(20) DEFAULT NULL COMMENT '报修人学号',
  `table_no` varchar(11) DEFAULT NULL COMMENT '球台编号',
  `repair_time` datetime DEFAULT NULL COMMENT '报修时间',
  `do_time` datetime DEFAULT NULL COMMENT '处理时间',
  `status` int(11) DEFAULT NULL COMMENT '状态 0-未处理 1-同意报修 2-拒绝报修',
  `comment` varchar(2000) DEFAULT NULL COMMENT '详细描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='报修信息';

-- ----------------------------
-- Records of t_repair
-- ----------------------------
INSERT INTO `t_repair` VALUES ('1', '115', '测试', '0008', '2', '2020-04-22 16:02:01', null, '0', '哈哈');
INSERT INTO `t_repair` VALUES ('2', '115', '测试', '0008', '3', '2020-04-22 16:07:24', null, '0', '333');
INSERT INTO `t_repair` VALUES ('3', '115', '测试', '0008', '4', '2020-04-22 16:08:28', null, '0', '44');

-- ----------------------------
-- Table structure for t_reverse_info
-- ----------------------------
DROP TABLE IF EXISTS `t_reverse_info`;
CREATE TABLE `t_reverse_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `table_id` int(11) NOT NULL COMMENT '球台ID',
  `user_id` int(11) NOT NULL COMMENT '学生ID',
  `student_id` int(11) NOT NULL COMMENT '学生ID',
  `reverse_start_tm` datetime NOT NULL COMMENT '预定开始时间',
  `reverse_end_tm` datetime NOT NULL COMMENT '预定结束时间',
  `status` int(1) NOT NULL COMMENT '状态  0 -未审批  1-同意  3-拒绝',
  `ver_code` varchar(100) DEFAULT NULL COMMENT '验证码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='预定信息';

-- ----------------------------
-- Records of t_reverse_info
-- ----------------------------
INSERT INTO `t_reverse_info` VALUES ('4', '2', '115', '9', '2020-04-16 19:00:00', '2020-04-16 20:00:00', '1', '1545FDBA0BA44DA98834F8A2A0A4BCC6');

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `stu_name` varchar(120) NOT NULL COMMENT '学生姓名',
  `stu_no` varchar(60) NOT NULL COMMENT '学号',
  `stu_class` varchar(255) NOT NULL COMMENT '班级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='学生信息';

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('1', '张三', '00001', '计科20级1班');
INSERT INTO `t_student` VALUES ('2', '李四', '00002', '化环21级2班');
INSERT INTO `t_student` VALUES ('3', '磨磨', '00003', '软工03');
INSERT INTO `t_student` VALUES ('4', '天天', '00004', '三年5班');
INSERT INTO `t_student` VALUES ('5', '测试', '00005', '123');
INSERT INTO `t_student` VALUES ('6', '小明', '001', '软工3班');
INSERT INTO `t_student` VALUES ('7', '小明', '0001', '软工3班');
INSERT INTO `t_student` VALUES ('8', '测试', '0009', '软工03班');
INSERT INTO `t_student` VALUES ('9', '测试', '0008', '软工03班');

-- ----------------------------
-- Table structure for t_user_student
-- ----------------------------
DROP TABLE IF EXISTS `t_user_student`;
CREATE TABLE `t_user_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_student
-- ----------------------------
INSERT INTO `t_user_student` VALUES ('1', '107', '3');
INSERT INTO `t_user_student` VALUES ('2', '108', '4');
INSERT INTO `t_user_student` VALUES ('3', '109', '5');
INSERT INTO `t_user_student` VALUES ('4', '111', '6');
INSERT INTO `t_user_student` VALUES ('5', '112', '7');
INSERT INTO `t_user_student` VALUES ('6', '113', '8');
INSERT INTO `t_user_student` VALUES ('7', '115', '9');
