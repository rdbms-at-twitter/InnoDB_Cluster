create database demodb;
use demodb;
 
 
CREATE TABLE `t_demo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `memo` varchar(100) CHARACTER SET utf8mb4,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;
 
 
INSERT INTO t_demo(memo) values ("LoadBalancing Test");


create user router_user identified by 'password';
grant all on demodb.* to router_user@'%';

