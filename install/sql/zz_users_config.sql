--



DROP TABLE IF EXISTS `zz_users_config`;

CREATE TABLE `zz_users_config` (

  `id` int(3) NOT NULL,

  `key` varchar(64) NOT NULL,

  `value` text NOT NULL,

  UNIQUE KEY `id` (`id`,`key`),

  KEY `id_2` (`id`),

  KEY `key` (`key`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;





-- Dump completed on 2013-05-20 13:35:31

