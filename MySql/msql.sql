#生活服务分类表
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`(
   `id` INT(10) unsigned NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(50) NOT NULL DEFAULT '',
   `parent_id` INT(10) NOT NULL DEFAULT 0,
   `listorder` INT(8) NOT NULL DEFAULT 0,
   `status` tinyint(1) NOT NULL DEFAULT 0,
   `create_time` int(10) NOT NULL DEFAULT 0,
   `update_time` int(10) NOT NULL DEFAULT 0,
   `delete_time` int(10) NOT NULL,
   PRIMARY KEY ( `id` ),
   KEY parent_id(`parent_id`)
)ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

#城市表
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`(
   `id` INT(10) unsigned NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(50) NOT NULL DEFAULT '',
   `uname` VARCHAR(50) NOT NULL DEFAULT '',
   `parent_id` INT(10) NOT NULL DEFAULT 0,
   `listorder` INT(8) NOT NULL DEFAULT 0,
   `status` tinyint(1) NOT NULL DEFAULT 0,
   `create_time` int(10) NOT NULL DEFAULT 0,
   `update_time` int(10) NOT NULL DEFAULT 0,
   `delete_time` int(10) NOT NULL,
   PRIMARY KEY ( `id` ),
   KEY parent_id(`parent_id`),
   UNIQUE KEY uname(`uname`)
)ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

#商圈表
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area`(
   `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(50) NOT NULL DEFAULT '',
   `city_id` int(11) unsigned NOT NULL DEFAULT 0,
   `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
   `listorder` int(8) unsigned NOT NULL DEFAULT 0,
   `status` tinyint(1) NOT NULL DEFAULT 0,
   `create_time` int(10) NOT NULL DEFAULT 0,
   `update_time` int(10) NOT NULL DEFAULT 0,
   `delete_time` int(10) NOT NULL,
   PRIMARY KEY (`id`),
   KEY parent_id(`parent_id`),
   KEY city_id(`city_id`)
)ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

#商户表
DROP TABLE IF EXISTS `bis`;
CREATE TABLE `bis`(
   `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(50) NOT NULL DEFAULT '',
   `email` VARCHAR(50) NOT NULL DEFAULT '',
   `logo` VARCHAR(255) NOT NULL DEFAULT '',
   `licence_logo` VARCHAR(255) NOT NULL DEFAULT '',
   `description` text NOT NULL,
   `city_id` int(11) unsigned NOT NULL DEFAULT 0,
   `city_path` VARCHAR(50) NOT NULL DEFAULT '',
   `bank_info` VARCHAR(50) NOT NULL DEFAULT '',
   `money` decimal(20,2) NOT NULL DEFAULT '0.00',
   `bank_name` VARCHAR(50) NOT NULL DEFAULT '',
   `bank_user` VARCHAR(50) NOT NULL DEFAULT '',
   `faren` VARCHAR(50) NOT NULL DEFAULT '',
   `faren_tel` VARCHAR(20) NOT NULL DEFAULT '',
   `listorder` int(8) unsigned NOT NULL DEFAULT 0,
   `status` tinyint(1) NOT NULL DEFAULT 0,
   `create_time` int(10) NOT NULL DEFAULT 0,
   `update_time` int(10) NOT NULL DEFAULT 0,
   `delete_time` int(10) NOT NULL,
   PRIMARY KEY (`id`),
   KEY city_id(`city_id`),
   KEY name(`name`)
)ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

#商户账号表
DROP TABLE IF EXISTS `bis_account`;
CREATE TABLE `bis_account`(
   `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
   `username` VARCHAR(50) NOT NULL DEFAULT '',
   `password` CHAR(32) NOT NULL DEFAULT '',
   `code` VARCHAR(10) NOT NULL DEFAULT '',
   `bis_id` int(11) unsigned NOT NULL DEFAULT 0,
   `last_login_ip` VARCHAR(30) NOT NULL DEFAULT '',
   `last_login_time` int(11) unsigned NOT NULL DEFAULT 0,
   `is_main` tinyint(1) unsigned NOT NULL DEFAULT 0,
   `listorder` int(8) unsigned NOT NULL DEFAULT 0,
   `status` tinyint(1) NOT NULL DEFAULT 0,
   `create_time` int(10) NOT NULL DEFAULT 0,
   `update_time` int(10) NOT NULL DEFAULT 0,
   `delete_time` int(10) NOT NULL,
   PRIMARY KEY (`id`),
   KEY bis_id(`bis_id`),
   KEY username(`username`)
)ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

#商户门店表
DROP TABLE IF EXISTS `bis_location`;
CREATE TABLE `bis_location`(
   `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(50) NOT NULL DEFAULT '',
   `email` VARCHAR(50) NOT NULL DEFAULT '',
   `logo` VARCHAR(255) NOT NULL DEFAULT '',
   `address` VARCHAR(255) NOT NULL DEFAULT '',
   `tel` VARCHAR(20) NOT NULL DEFAULT '',
   `contact` VARCHAR(20) NOT NULL DEFAULT '',
   `xpoint` VARCHAR(20) NOT NULL DEFAULT '',
   `ypoint` VARCHAR(20) NOT NULL DEFAULT '',
   `bis_id` VARCHAR(11) NOT NULL DEFAULT 0,
   `open_time` int(11) NOT NULL DEFAULT 0,
   `content` text NOT NULL,
   `is_main` tinyint(1) NOT NULL DEFAULT 0,
   `api_address` VARCHAR(255) NOT NULL DEFAULT 0,
   `city_id` int(11) NOT NULL DEFAULT 0,
   `city_path` VARCHAR(50) NOT NULL DEFAULT '',
   `category_id` int(11) NOT NULL DEFAULT 0,
   `category_path` VARCHAR(50) NOT NULL DEFAULT '',
   `bank_info` VARCHAR(50) NOT NULL DEFAULT '',
   `listorder` int(8) NOT NULL DEFAULT 0,
   `status` tinyint(1) NOT NULL DEFAULT 0,
   `create_time` int(10) NOT NULL DEFAULT 0,
   `update_time` int(10) NOT NULL DEFAULT 0,
   `delete_time` int(10) NOT NULL,
   PRIMARY KEY (`id`),
   KEY city_id(`city_id`),
   KEY bis_id(`bis_id`),
   KEY category_id(`category_id`),
   KEY name(`name`)
)ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

#团购商品表
DROP TABLE IF EXISTS `bis_deal`;
CREATE TABLE `bis_deal`(
   `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(50) NOT NULL DEFAULT '',
   `category_id` int(11) NOT NULL DEFAULT 0,
   `se_category_id` int(11) NOT NULL DEFAULT 0,
   `bis_id` VARCHAR(11) NOT NULL DEFAULT 0,
   `location_ids` VARCHAR(100) NOT NULL DEFAULT '',
   `image` VARCHAR(255) NOT NULL DEFAULT '',
   `description` text NOT NULL,
   `start_time` int(10) NOT NULL DEFAULT 0,
   `end_time` int(10) NOT NULL DEFAULT 0,
   `origin_price` decimal(20,2) NOT NULL DEFAULT '0.00',
   `current_price` decimal(20,2) NOT NULL DEFAULT '0.00',
   `city_id` int(11) NOT NULL DEFAULT 0,
   `buy_count` int(11) unsigned NOT NULL DEFAULT 0,
   `total_count` int(11) unsigned NOT NULL DEFAULT 0,
   `coupons_begin_time` int(11) unsigned NOT NULL DEFAULT 0,
   `coupons_end_time` int(11) unsigned NOT NULL DEFAULT 0,
   `xpoint` VARCHAR(20) NOT NULL DEFAULT '',
   `ypoint` VARCHAR(20) NOT NULL DEFAULT '',
   `bis_account_id` int(11) unsigned NOT NULL DEFAULT 0,
   `balance_price` decimal(20,2) NOT NULL DEFAULT '0.00',
   `notes` text NOT NULL,
   `listorder` int(8) unsigned NOT NULL DEFAULT 0,
   `status` tinyint(1) NOT NULL DEFAULT 0,
   `create_time` int(10) NOT NULL DEFAULT 0,
   `update_time` int(10) NOT NULL DEFAULT 0,
   `delete_time` int(10) NOT NULL,
   PRIMARY KEY (`id`),
   KEY city_id(`city_id`),
   KEY se_category_id(`se_category_id`),
   KEY start_time(`start_time`),
   KEY category_id(`category_id`),
   KEY end_time(`end_time`)
)ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

#用户表
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`(
   `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
   `username` VARCHAR(50) NOT NULL DEFAULT '',
   `password` CHAR(32) NOT NULL DEFAULT '',
   `code` VARCHAR(10) NOT NULL DEFAULT '',
   `bis_id` int(11) unsigned NOT NULL DEFAULT 0,
   `last_login_ip` VARCHAR(30) NOT NULL DEFAULT '',
   `last_login_time` int(11) unsigned NOT NULL DEFAULT 0,
   `email` VARCHAR(50) NOT NULL DEFAULT '',
   `mobile` VARCHAR(20) NOT NULL DEFAULT '',
   `listorder` int(8) unsigned NOT NULL DEFAULT 0,
   `status` tinyint(1) NOT NULL DEFAULT 0,
   `create_time` int(10) NOT NULL DEFAULT 0,
   `update_time` int(10) NOT NULL DEFAULT 0,
   `delete_time` int(10) NOT NULL,
   PRIMARY KEY (`id`),
   UNIQUE KEY username(`username`),
   KEY email(`email`)
)ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

#推荐位表
DROP TABLE IF EXISTS `featurend`;
CREATE TABLE `featurend`(
   `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
   `type` tinyint(1) NOT NULL DEFAULT 0,
   `title` VARCHAR(50) NOT NULL DEFAULT '',
   `image` VARCHAR(20) NOT NULL DEFAULT '',
   `url` VARCHAR(255) NOT NULL DEFAULT '',
   `description` VARCHAR(255) NOT NULL DEFAULT '',
   `listorder` int(8) unsigned NOT NULL DEFAULT 0,
   `status` tinyint(1) NOT NULL DEFAULT 0,
   `create_time` int(10) NOT NULL DEFAULT 0,
   `update_time` int(10) NOT NULL DEFAULT 0,
   `delete_time` int(10) NOT NULL,
   PRIMARY KEY (`id`)
)ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;