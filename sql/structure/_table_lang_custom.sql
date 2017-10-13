
CREATE TABLE `lang_custom` (
  `lang_description` varchar(100) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `constant_name` mediumtext,
  `definition` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
