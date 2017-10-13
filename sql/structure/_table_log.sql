
CREATE TABLE `log` (
  `id` bigint(20) NOT NULL,
  `date` datetime DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `comments` longtext,
  `user_notes` longtext,
  `patient_id` bigint(20) DEFAULT NULL,
  `success` tinyint(1) DEFAULT '1',
  `checksum` longtext,
  `crt_user` varchar(255) DEFAULT NULL,
  `log_from` varchar(20) DEFAULT 'LibreEHR',
  `menu_item_id` int(11) DEFAULT NULL,
  `ccda_doc_id` int(11) DEFAULT NULL COMMENT 'CCDA document id from ccda'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
