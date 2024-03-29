/*
Navicat MySQL Data Transfer

Source Server         : 本地的
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : guns

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-06-04 10:24:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for secretDept
-- ----------------------------
DROP TABLE IF EXISTS `secretDept`;
CREATE TABLE `secretDept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `simplename` varchar(45) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of secretDept
-- ----------------------------
INSERT INTO `secretDept` VALUES ('24', '1', '0', '总公司', '总公司', '', null);
INSERT INTO `secretDept` VALUES ('25', '2', '24', '开发部', '开发部', '', null);
INSERT INTO `secretDept` VALUES ('26', '3', '24', '运营部', '运营部', '', null);
INSERT INTO `secretDept` VALUES ('27', '4', '24', '战略部', '战略部', '', null);

-- ----------------------------
-- Table structure for secretDict
-- ----------------------------
DROP TABLE IF EXISTS `secretDict`;
CREATE TABLE `secretDict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of secretDict
-- ----------------------------
INSERT INTO `secretDict` VALUES ('16', '0', '0', '状态', null);
INSERT INTO `secretDict` VALUES ('17', '1', '16', '启用', null);
INSERT INTO `secretDict` VALUES ('18', '2', '16', '禁用', null);
INSERT INTO `secretDict` VALUES ('29', '0', '0', '性别', null);
INSERT INTO `secretDict` VALUES ('30', '1', '29', '男', null);
INSERT INTO `secretDict` VALUES ('31', '2', '29', '女', null);
INSERT INTO `secretDict` VALUES ('35', '0', '0', '账号状态', null);
INSERT INTO `secretDict` VALUES ('36', '1', '35', '启用', null);
INSERT INTO `secretDict` VALUES ('37', '2', '35', '冻结', null);
INSERT INTO `secretDict` VALUES ('38', '3', '35', '已删除', null);

-- ----------------------------
-- Table structure for login_log
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log` (
  `id` int(65) NOT NULL AUTO_INCREMENT,
  `logname` varchar(255) DEFAULT NULL,
  `userid` int(65) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `succeed` varchar(255) DEFAULT NULL,
  `message` text,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO `login_log` VALUES ('126', '退出日志', '1', '2017-06-04 10:21:55', '成功', null, '127.0.0.1');
INSERT INTO `login_log` VALUES ('127', '登录日志', '1', '2017-06-04 10:21:59', '成功', null, '127.0.0.1');
INSERT INTO `login_log` VALUES ('128', '退出日志', '1', '2017-06-04 10:22:59', '成功', null, '127.0.0.1');
INSERT INTO `login_log` VALUES ('129', '登录日志', '1', '2017-06-04 10:23:01', '成功', null, '127.0.0.1');

-- ----------------------------
-- Table structure for secretMenu
-- ----------------------------
DROP TABLE IF EXISTS `secretMenu`;
CREATE TABLE `secretMenu` (
  `id` int(65) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL COMMENT '菜单编号',
  `pcode` varchar(255) DEFAULT NULL COMMENT '菜单父编号',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `url` varchar(255) DEFAULT NULL COMMENT 'url地址',
  `num` int(65) DEFAULT NULL COMMENT '菜单排序号',
  `levels` int(65) DEFAULT NULL COMMENT '菜单层级',
  `ismenu` int(11) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` int(65) DEFAULT NULL COMMENT '菜单状态 :  1:启用   0:不启用',
  `isopen` int(11) DEFAULT NULL COMMENT '是否打开:    1:打开   0:不打开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of secretMenu
-- ----------------------------
INSERT INTO `secretMenu` VALUES ('105', 'system', '0', '系统管理', 'fa-secretUser', '', '3', '1', '1', null, '1', '1');
INSERT INTO `secretMenu` VALUES ('106', 'mgr', 'system', '用户管理', '', '/mgr', '1', '2', '1', null, '1', '0');
INSERT INTO `secretMenu` VALUES ('107', 'mgr_add', 'mgr', '添加用户', null, '/mgr/add', '1', '3', '0', null, '1', '0');
INSERT INTO `secretMenu` VALUES ('108', 'mgr_edit', 'mgr', '修改用户', null, '/mgr/edit', '2', '3', '0', null, '1', '0');
INSERT INTO `secretMenu` VALUES ('109', 'mgr_delete', 'mgr', '删除用户', null, '/mgr/delete', '3', '3', '0', null, '1', '0');
INSERT INTO `secretMenu` VALUES ('110', 'mgr_reset', 'mgr', '重置密码', null, '/mgr/reset', '4', '3', '0', null, '1', '0');
INSERT INTO `secretMenu` VALUES ('111', 'mgr_freeze', 'mgr', '冻结用户', null, '/mgr/freeze', '5', '3', '0', null, '1', '0');
INSERT INTO `secretMenu` VALUES ('112', 'mgr_unfreeze', 'mgr', '解除冻结用户', null, '/mgr/unfreeze', '6', '3', '0', null, '1', '0');
INSERT INTO `secretMenu` VALUES ('113', 'mgr_setRole', 'mgr', '分配角色', null, '/mgr/setRole', '7', '3', '0', null, '1', '0');
INSERT INTO `secretMenu` VALUES ('114', 'secretRole', 'system', '角色管理', null, '/secretRole', '2', '2', '1', null, '1', '0');
INSERT INTO `secretMenu` VALUES ('115', 'role_add', 'secretRole', '添加角色', null, '/secretRole/add', '1', '3', '0', null, '1', '0');
INSERT INTO `secretMenu` VALUES ('116', 'role_edit', 'secretRole', '修改角色', null, '/secretRole/edit', '2', '3', '0', null, '1', '0');
INSERT INTO `secretMenu` VALUES ('117', 'role_remove', 'secretRole', '删除角色', null, '/secretRole/remove', '3', '3', '0', null, '1', '0');
INSERT INTO `secretMenu` VALUES ('118', 'role_setAuthority', 'secretRole', '配置权限', null, '/secretRole/setAuthority', '4', '3', '0', null, '1', '0');
INSERT INTO `secretMenu` VALUES ('119', 'secretMenu', 'system', '菜单管理', null, '/secretMenu', '4', '2', '1', null, '1', '0');
INSERT INTO `secretMenu` VALUES ('120', 'menu_add', 'secretMenu', '添加菜单', null, '/secretMenu/add', '1', '3', '0', null, '1', '0');
INSERT INTO `secretMenu` VALUES ('121', 'menu_edit', 'secretMenu', '修改菜单', null, '/secretMenu/edit', '2', '3', '0', null, '1', '0');
INSERT INTO `secretMenu` VALUES ('122', 'menu_remove', 'secretMenu', '删除菜单', null, '/secretMenu/remove', '3', '3', '0', null, '1', '0');
INSERT INTO `secretMenu` VALUES ('128', 'log', 'system', '业务日志', null, '/log', '6', '2', '1', null, '1', '0');
INSERT INTO `secretMenu` VALUES ('130', 'druid', 'system', '监控管理', null, '/druid', '7', '2', '1', null, '1', null);
INSERT INTO `secretMenu` VALUES ('131', 'secretDept', 'system', '部门管理', null, '/secretDept', '3', '2', '1', null, '1', null);
INSERT INTO `secretMenu` VALUES ('132', 'secretDict', 'system', '字典管理', null, '/secretDict', '4', '2', '1', null, '1', null);
INSERT INTO `secretMenu` VALUES ('133', 'secretLoginLog', 'system', '登录日志', null, '/secretLoginLog', '6', '2', '1', null, '1', null);
INSERT INTO `secretMenu` VALUES ('134', 'log_clean', 'log', '清空日志', null, '/log/delLog', '3', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('135', 'dept_add', 'secretDept', '添加部门', null, '/secretDept/add', '1', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('136', 'dept_update', 'secretDept', '修改部门', null, '/secretDept/update', '1', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('137', 'dept_delete', 'secretDept', '删除部门', null, '/secretDept/delete', '1', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('138', 'dict_add', 'secretDict', '添加字典', null, '/secretDict/add', '1', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('139', 'dict_update', 'secretDict', '修改字典', null, '/secretDict/update', '1', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('140', 'dict_delete', 'secretDict', '删除字典', null, '/secretDict/delete', '1', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('141', 'secretNotice', 'system', '通知管理', null, '/secretNotice', '9', '2', '1', null, '1', null);
INSERT INTO `secretMenu` VALUES ('142', 'notice_add', 'secretNotice', '添加通知', null, '/secretNotice/add', '1', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('143', 'notice_update', 'secretNotice', '修改通知', null, '/secretNotice/update', '2', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('144', 'notice_delete', 'secretNotice', '删除通知', null, '/secretNotice/delete', '3', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('145', 'hello', '0', '通知', 'fa-rocket', '/secretNotice/hello', '1', '1', '1', null, '1', null);
INSERT INTO `secretMenu` VALUES ('148', 'code', 'system', '代码生成', 'fa-secretUser', '/code', '10', '2', '1', null, '1', null);
INSERT INTO `secretMenu` VALUES ('149', 'api_mgr', '0', '接口文档', 'fa-leaf', '/swagger-ui.html', '2', '1', '1', null, '1', null);
INSERT INTO `secretMenu` VALUES ('150', 'to_menu_edit', 'secretMenu', '菜单编辑跳转', '', '/secretMenu/menu_edit', '4', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('151', 'menu_list', 'secretMenu', '菜单列表', '', '/secretMenu/list', '5', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('152', 'to_dept_update', 'secretDept', '修改部门跳转', '', '/secretDept/dept_update', '4', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('153', 'dept_list', 'secretDept', '部门列表', '', '/secretDept/list', '5', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('154', 'dept_detail', 'secretDept', '部门详情', '', '/secretDept/detail', '6', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('155', 'to_dict_edit', 'secretDict', '修改菜单跳转', '', '/secretDict/dict_edit', '4', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('156', 'dict_list', 'secretDict', '字典列表', '', '/secretDict/list', '5', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('157', 'dict_detail', 'secretDict', '字典详情', '', '/secretDict/detail', '6', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('158', 'log_list', 'log', '日志列表', '', '/log/list', '2', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('159', 'log_detail', 'log', '日志详情', '', '/log/detail', '3', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('160', 'del_login_log', 'secretLoginLog', '清空登录日志', '', '/secretLoginLog/delLoginLog', '1', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('161', 'login_log_list', 'secretLoginLog', '登录日志列表', '', '/secretLoginLog/list', '2', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('162', 'to_role_edit', 'secretRole', '修改角色跳转', '', '/secretRole/role_edit', '5', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('163', 'to_role_assign', 'secretRole', '角色分配跳转', '', '/secretRole/role_assign', '6', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('164', 'role_list', 'secretRole', '角色列表', '', '/secretRole/list', '7', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('165', 'to_role_assign', 'mgr', '分配角色跳转', '', '/mgr/role_assign', '8', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('166', 'to_user_edit', 'mgr', '编辑用户跳转', '', '/mgr/user_edit', '9', '3', '0', null, '1', null);
INSERT INTO `secretMenu` VALUES ('167', 'mgr_list', 'mgr', '用户列表', '', '/mgr/list', '10', '3', '0', null, '1', null);

-- ----------------------------
-- Table structure for secretNotice
-- ----------------------------
DROP TABLE IF EXISTS `secretNotice`;
CREATE TABLE `secretNotice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序列',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `content` text COMMENT '内容',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `creater` int(11) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of secretNotice
-- ----------------------------
INSERT INTO `secretNotice` VALUES ('6', '世界', '10', '欢迎使用风眼系统', '2017-01-11 08:53:20', '1');
INSERT INTO `secretNotice` VALUES ('8', '你好', null, '你好', '2017-05-10 19:28:57', '1');

-- ----------------------------
-- Table structure for operation_log
-- ----------------------------
DROP TABLE IF EXISTS `operation_log`;
CREATE TABLE `operation_log` (
  `id` int(65) NOT NULL AUTO_INCREMENT,
  `logtype` varchar(255) DEFAULT NULL,
  `logname` varchar(255) DEFAULT NULL,
  `userid` int(65) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `method` text,
  `createtime` datetime DEFAULT NULL,
  `succeed` varchar(255) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=483 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_log
-- ----------------------------
INSERT INTO `operation_log` VALUES ('480', '业务日志', '清空业务日志', '1', 'com.stylefeng.guns.modular.system.controller.LogController', 'delLog', '2017-06-03 23:04:22', '成功', '主键id=null');
INSERT INTO `operation_log` VALUES ('481', '业务日志', '清空登录日志', '1', 'com.stylefeng.guns.modular.system.controller.LoginLogController', 'delLog', '2017-06-03 23:04:25', '成功', '主键id=null');
INSERT INTO `operation_log` VALUES ('482', '业务日志', '修改菜单', '1', 'com.stylefeng.guns.modular.system.controller.MenuController', 'edit', '2017-06-04 10:22:58', '成功', '菜单名称=分配角色跳转;;;字段名称:url地址,旧值:/secretRole/role_assign,新值:/mgr/role_assign');

-- ----------------------------
-- Table structure for secretRelation
-- ----------------------------
DROP TABLE IF EXISTS `secretRelation`;
CREATE TABLE `secretRelation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuid` int(11) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3679 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of secretRelation
-- ----------------------------
INSERT INTO `secretRelation` VALUES ('3377', '105', '5');
INSERT INTO `secretRelation` VALUES ('3378', '106', '5');
INSERT INTO `secretRelation` VALUES ('3379', '107', '5');
INSERT INTO `secretRelation` VALUES ('3380', '108', '5');
INSERT INTO `secretRelation` VALUES ('3381', '109', '5');
INSERT INTO `secretRelation` VALUES ('3382', '110', '5');
INSERT INTO `secretRelation` VALUES ('3383', '111', '5');
INSERT INTO `secretRelation` VALUES ('3384', '112', '5');
INSERT INTO `secretRelation` VALUES ('3385', '113', '5');
INSERT INTO `secretRelation` VALUES ('3386', '114', '5');
INSERT INTO `secretRelation` VALUES ('3387', '115', '5');
INSERT INTO `secretRelation` VALUES ('3388', '116', '5');
INSERT INTO `secretRelation` VALUES ('3389', '117', '5');
INSERT INTO `secretRelation` VALUES ('3390', '118', '5');
INSERT INTO `secretRelation` VALUES ('3391', '119', '5');
INSERT INTO `secretRelation` VALUES ('3392', '120', '5');
INSERT INTO `secretRelation` VALUES ('3393', '121', '5');
INSERT INTO `secretRelation` VALUES ('3394', '122', '5');
INSERT INTO `secretRelation` VALUES ('3395', '150', '5');
INSERT INTO `secretRelation` VALUES ('3396', '151', '5');
INSERT INTO `secretRelation` VALUES ('3624', '105', '1');
INSERT INTO `secretRelation` VALUES ('3625', '106', '1');
INSERT INTO `secretRelation` VALUES ('3626', '107', '1');
INSERT INTO `secretRelation` VALUES ('3627', '108', '1');
INSERT INTO `secretRelation` VALUES ('3628', '109', '1');
INSERT INTO `secretRelation` VALUES ('3629', '110', '1');
INSERT INTO `secretRelation` VALUES ('3630', '111', '1');
INSERT INTO `secretRelation` VALUES ('3631', '112', '1');
INSERT INTO `secretRelation` VALUES ('3632', '113', '1');
INSERT INTO `secretRelation` VALUES ('3633', '165', '1');
INSERT INTO `secretRelation` VALUES ('3634', '166', '1');
INSERT INTO `secretRelation` VALUES ('3635', '167', '1');
INSERT INTO `secretRelation` VALUES ('3636', '114', '1');
INSERT INTO `secretRelation` VALUES ('3637', '115', '1');
INSERT INTO `secretRelation` VALUES ('3638', '116', '1');
INSERT INTO `secretRelation` VALUES ('3639', '117', '1');
INSERT INTO `secretRelation` VALUES ('3640', '118', '1');
INSERT INTO `secretRelation` VALUES ('3641', '162', '1');
INSERT INTO `secretRelation` VALUES ('3642', '163', '1');
INSERT INTO `secretRelation` VALUES ('3643', '164', '1');
INSERT INTO `secretRelation` VALUES ('3644', '119', '1');
INSERT INTO `secretRelation` VALUES ('3645', '120', '1');
INSERT INTO `secretRelation` VALUES ('3646', '121', '1');
INSERT INTO `secretRelation` VALUES ('3647', '122', '1');
INSERT INTO `secretRelation` VALUES ('3648', '150', '1');
INSERT INTO `secretRelation` VALUES ('3649', '151', '1');
INSERT INTO `secretRelation` VALUES ('3650', '128', '1');
INSERT INTO `secretRelation` VALUES ('3651', '134', '1');
INSERT INTO `secretRelation` VALUES ('3652', '158', '1');
INSERT INTO `secretRelation` VALUES ('3653', '159', '1');
INSERT INTO `secretRelation` VALUES ('3654', '130', '1');
INSERT INTO `secretRelation` VALUES ('3655', '131', '1');
INSERT INTO `secretRelation` VALUES ('3656', '135', '1');
INSERT INTO `secretRelation` VALUES ('3657', '136', '1');
INSERT INTO `secretRelation` VALUES ('3658', '137', '1');
INSERT INTO `secretRelation` VALUES ('3659', '152', '1');
INSERT INTO `secretRelation` VALUES ('3660', '153', '1');
INSERT INTO `secretRelation` VALUES ('3661', '154', '1');
INSERT INTO `secretRelation` VALUES ('3662', '132', '1');
INSERT INTO `secretRelation` VALUES ('3663', '138', '1');
INSERT INTO `secretRelation` VALUES ('3664', '139', '1');
INSERT INTO `secretRelation` VALUES ('3665', '140', '1');
INSERT INTO `secretRelation` VALUES ('3666', '155', '1');
INSERT INTO `secretRelation` VALUES ('3667', '156', '1');
INSERT INTO `secretRelation` VALUES ('3668', '157', '1');
INSERT INTO `secretRelation` VALUES ('3669', '133', '1');
INSERT INTO `secretRelation` VALUES ('3670', '160', '1');
INSERT INTO `secretRelation` VALUES ('3671', '161', '1');
INSERT INTO `secretRelation` VALUES ('3672', '141', '1');
INSERT INTO `secretRelation` VALUES ('3673', '142', '1');
INSERT INTO `secretRelation` VALUES ('3674', '143', '1');
INSERT INTO `secretRelation` VALUES ('3675', '144', '1');
INSERT INTO `secretRelation` VALUES ('3676', '148', '1');
INSERT INTO `secretRelation` VALUES ('3677', '145', '1');
INSERT INTO `secretRelation` VALUES ('3678', '149', '1');

-- ----------------------------
-- Table structure for secretRole
-- ----------------------------
DROP TABLE IF EXISTS `secretRole`;
CREATE TABLE `secretRole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of secretRole
-- ----------------------------
INSERT INTO `secretRole` VALUES ('1', '1', '0', '超级管理员', '24', 'administrator', '1');
INSERT INTO `secretRole` VALUES ('5', '2', '1', '临时', '26', 'temp', null);

-- ----------------------------
-- Table structure for secretUser
-- ----------------------------
DROP TABLE IF EXISTS `secretUser`;
CREATE TABLE `secretUser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `account` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `salt` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `roleid` varchar(255) DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of secretUser
-- ----------------------------
INSERT INTO `secretUser` VALUES ('1', 'girl.gif', 'admin', 'ecfadcde9305f8891bcfe5a1e28c253e', '8pgby', '张三', '2017-05-05 00:00:00', '2', 'sn93@qq.com', '18200000000', '1', '27', '1', '2016-01-29 08:49:53', '25');
INSERT INTO `secretUser` VALUES ('44', null, 'test', '45abb7879f6a8268f1ef600e6038ac73', 'ssts3', 'test', '2017-05-01 00:00:00', '1', 'abc@123.com', '', '5', '26', '1', '2017-05-16 20:33:37', null);
