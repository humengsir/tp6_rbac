


create database rbac charset utf8mb4;

use rbac;


CREATE TABLE `group` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '用户组名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT='用户组表';
INSERT INTO `group` (id, name) VALUES(1, '管理员');
INSERT INTO `group` (id, name) VALUES(2, '客服');



CREATE TABLE `group_node` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `group_id` int unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  `node_id` int unsigned NOT NULL DEFAULT '0' COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT='用户组权限分配明细表';
INSERT INTO group_node (id, group_id, node_id) VALUES(1, 1, 1);
INSERT INTO group_node (id, group_id, node_id) VALUES(2, 1, 2);
INSERT INTO group_node (id, group_id, node_id) VALUES(3, 1, 3);
INSERT INTO group_node (id, group_id, node_id) VALUES(4, 1, 4);
INSERT INTO group_node (id, group_id, node_id) VALUES(5, 1, 5);
INSERT INTO group_node (id, group_id, node_id) VALUES(6, 1, 6);
INSERT INTO group_node (id, group_id, node_id) VALUES(7, 1, 7);
INSERT INTO group_node (id, group_id, node_id) VALUES(8, 1, 8);
INSERT INTO group_node (id, group_id, node_id) VALUES(9, 1, 9);
INSERT INTO group_node (id, group_id, node_id) VALUES(10, 1, 10);
INSERT INTO group_node (id, group_id, node_id) VALUES(11, 1, 11);
INSERT INTO group_node (id, group_id, node_id) VALUES(12, 1, 12);
INSERT INTO group_node (id, group_id, node_id) VALUES(13, 1, 13);
INSERT INTO group_node (id, group_id, node_id) VALUES(14, 1, 14);
INSERT INTO group_node (id, group_id, node_id) VALUES(15, 1, 15);
INSERT INTO group_node (id, group_id, node_id) VALUES(16, 1, 16);
INSERT INTO group_node (id, group_id, node_id) VALUES(17, 1, 17);


CREATE TABLE `menu` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `menu_name` varchar(30) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `node_id` int unsigned NOT NULL DEFAULT '0' COMMENT '权限id',
  `is_nav` int unsigned NOT NULL DEFAULT '0' COMMENT '是否是导航菜单',
  `menu_sort` int unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT '父级菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT='菜单表';
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(1, '用户管理', 0, 1, 1000, 0);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(2, '用户列表', 1, 1, 999, 1);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(3, '添加用户', 2, 1, 998, 1);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(4, '编辑用户', 3, 0, 997, 1);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(5, '删除用户', 4, 0, 996, 1);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(6, '用户组管理', 0, 1, 900, 0);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(7, '用户组列表', 5, 1, 899, 6);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(8, '添加用户组', 6, 1, 898, 6);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(9, '编辑用户组', 7, 0, 897, 6);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(10, '删除用户组', 8, 0, 896, 6);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(11, '权限管理', 0, 1, 800, 0);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(12, '权限列表', 9, 1, 799, 11);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(13, '添加权限', 10, 1, 798, 11);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(14, '编辑权限', 11, 0, 797, 11);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(15, '删除权限', 12, 0, 796, 11);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(16, '分配权限', 13, 0, 795, 11);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(17, '菜单管理', 0, 1, 700, 0);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(18, '菜单列表', 14, 1, 699, 17);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(19, '添加菜单', 15, 1, 698, 17);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(20, '编辑菜单', 16, 0, 697, 17);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(21, '删除菜单', 17, 0, 696, 17);


CREATE TABLE `node` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `node_name` varchar(30) NOT NULL DEFAULT '' COMMENT '权限节点名称',
  `node_url` varchar(30) NOT NULL DEFAULT '' COMMENT '访问路径',
  `node_sort` int unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `node_type` int unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '时候还在使用中 1在使用中 0不再使用了',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT='权限节点表';
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(1, '用户列表', '/user/index', 1000, 1, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(2, '用户添加', '/user/add', 999, 1, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(3, '用户编辑', '/user/edit', 998, 1, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(4, '用户禁用', '/user/del', 997, 1, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(5, '用户组列表', '/group/index', 900, 2, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(6, '用户组添加', '/group/add', 899, 2, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(7, '用户组编辑', '/group/edit', 898, 2, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(8, '用户组删除', '/group/del', 897, 2, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(9, '权限列表', '/node/index', 800, 3, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(10, '权限添加', '/node/add', 799, 3, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(11, '权限编辑', '/node/edit', 798, 3, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(12, '权限禁用', '/node/del', 797, 3, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(13, '权限分配', '/permission/assign', 796, 3, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(14, '菜单列表', '/menu/index', 700, 4, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(15, '菜单添加', '/menu/add', 699, 4, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(16, '菜单编辑', '/menu/edit', 698, 4, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(17, '菜单删除', '/menu/del', 697, 4, 1);


CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `username` varchar(15) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(60) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '邮箱',
  `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '用户状态 1是启用 0是禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT='用户表';
INSERT INTO `user` (id, username, password, email, status) VALUES(1, 'admin', 'f3970736977b4794bc75f1ef8291b376', 'admin@test.com', 1);


CREATE TABLE `user_group` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `user_id` int unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `group_id` int unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT='用户和用户组的关系对照表';
INSERT INTO user_group (user_id, group_id) VALUES(1, 1);

