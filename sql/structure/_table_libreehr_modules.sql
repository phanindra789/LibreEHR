
CREATE TABLE `libreehr_modules` (
  `pn_id` int(11) UNSIGNED NOT NULL,
  `pn_name` varchar(64) DEFAULT NULL,
  `pn_type` int(6) NOT NULL DEFAULT '0',
  `pn_displayname` varchar(64) DEFAULT NULL,
  `pn_description` varchar(255) DEFAULT NULL,
  `pn_regid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pn_directory` varchar(64) DEFAULT NULL,
  `pn_version` varchar(10) DEFAULT NULL,
  `pn_admin_capable` tinyint(1) NOT NULL DEFAULT '0',
  `pn_user_capable` tinyint(1) NOT NULL DEFAULT '0',
  `pn_state` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
