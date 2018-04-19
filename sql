
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bc_id` varchar(200) NOT NULL COMMENT '评论id',
  `bid` varchar(200) DEFAULT NULL COMMENT '博客id',
  `content` varchar(500) DEFAULT NULL COMMENT '内容',
  `user_id` varchar(200) DEFAULT NULL COMMENT '评论者Id',
  `crt_time` time DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`,`bc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `blog_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` varchar(200) NOT NULL COMMENT '博客id',
  `blog_title` varchar(200) DEFAULT NULL COMMENT '标题',
  `blog_description` varchar(500) DEFAULT NULL COMMENT '博客摘要',
  `blog_content` text COMMENT '内容',
  `user_id` varchar(200) DEFAULT NULL COMMENT '创建者',
  `crt_time` datetime DEFAULT NULL COMMENT '创建时间',
  `bt_id` varchar(1000) DEFAULT NULL COMMENT '类型Id',
  `is_del` int(11) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`,`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `blog_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bi_id` varchar(200) NOT NULL COMMENT '博客图片id',
  `bid` varchar(200) DEFAULT NULL COMMENT '博客id',
  `bi_title` varchar(200) DEFAULT NULL COMMENT '标题',
  `bi_path` varchar(500) DEFAULT NULL COMMENT '路径',
  `user_id` varchar(200) DEFAULT NULL COMMENT '上传者',
  `crt_time` time DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`,`bi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `blog_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `br_id` varchar(200) NOT NULL COMMENT '回复id',
  `bc_id` varchar(200) DEFAULT NULL COMMENT '评论id',
  `pid` varchar(200) DEFAULT NULL COMMENT '父回复',
  `content` varchar(500) DEFAULT NULL COMMENT '回复内容',
  `reply_user_id` varchar(200) DEFAULT NULL COMMENT '回复者id',
  `replied_user_id` varchar(200) DEFAULT NULL COMMENT '被回复着id',
  `reply_time` datetime DEFAULT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`,`br_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `blog_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bt_id` varchar(200) NOT NULL COMMENT '类别Id',
  `type_txt` varchar(200) DEFAULT NULL COMMENT '类别内容',
  `user_id` varchar(200) DEFAULT NULL COMMENT '创建者',
  `crt_time` datetime DEFAULT NULL COMMENT '创建时间',
  `is_del` int(11) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`,`bt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

CREATE TABLE `blog_user_base` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '系统用户ID',
  `uid` varchar(200) DEFAULT NULL COMMENT '用户唯一标识',
  `user_login_name` varchar(40) DEFAULT NULL COMMENT '用户登录名',
  `user_login_password` varchar(200) DEFAULT NULL COMMENT '用户登录密码',
  `user_realy_name` varchar(40) DEFAULT NULL COMMENT '用户真实姓名',
  `user_email` varchar(100) DEFAULT NULL COMMENT '用户邮箱',
  `user_phone` varchar(40) DEFAULT NULL COMMENT '用户手机',
  `user_position` varchar(100) DEFAULT NULL COMMENT '用户职位',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

CREATE TABLE `blog_user_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `uid` varchar(200) NOT NULL COMMENT '真是主键',
  `title` varchar(500) DEFAULT NULL COMMENT '信息标题',
  `content` varchar(1000) DEFAULT NULL COMMENT '信息内容',
  `crt_time` datetime DEFAULT NULL COMMENT '留言时间',
  `ip` varchar(200) DEFAULT NULL COMMENT 'ip地址',
  `status` int(11) DEFAULT NULL COMMENT '状态：0（未读），1（已读），2（已回复）',
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `blog_verify_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增标识',
  `uid` varchar(200) DEFAULT NULL COMMENT '唯一编号',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `verify_code` varchar(6) DEFAULT NULL COMMENT '验证码',
  `status` int(11) DEFAULT NULL COMMENT '0、未使用；1、已使用',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `end_time` datetime DEFAULT NULL COMMENT '有效时间',
  `type` int(11) DEFAULT NULL COMMENT '验证码类型',
  `remarks` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
