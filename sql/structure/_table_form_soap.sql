
CREATE TABLE `form_soap` (
  `id` bigint(20) NOT NULL,
  `date` datetime DEFAULT NULL,
  `pid` bigint(20) DEFAULT '0',
  `user` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `authorized` tinyint(4) DEFAULT '0',
  `activity` tinyint(4) DEFAULT '0',
  `subjective` text,
  `objective` text,
  `assessment` text,
  `plan` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
