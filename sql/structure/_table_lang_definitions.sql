
CREATE TABLE `lang_definitions` (
  `def_id` int(11) NOT NULL,
  `cons_id` int(11) NOT NULL DEFAULT '0',
  `lang_id` int(11) NOT NULL DEFAULT '0',
  `definition` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
