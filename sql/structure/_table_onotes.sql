
CREATE TABLE `onotes` (
  `id` bigint(20) NOT NULL,
  `date` datetime DEFAULT NULL,
  `body` longtext,
  `user` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `activity` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
