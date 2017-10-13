
CREATE TABLE `libreehr_module_vars` (
  `pn_id` int(11) UNSIGNED NOT NULL,
  `pn_modname` varchar(64) DEFAULT NULL,
  `pn_name` varchar(64) DEFAULT NULL,
  `pn_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
