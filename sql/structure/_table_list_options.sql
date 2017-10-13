
CREATE TABLE `list_options` (
  `list_id` varchar(31) NOT NULL DEFAULT '',
  `option_id` varchar(31) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `seq` int(11) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `option_value` float NOT NULL DEFAULT '0',
  `mapping` varchar(31) NOT NULL DEFAULT '',
  `notes` varchar(255) NOT NULL DEFAULT '',
  `codes` varchar(255) NOT NULL DEFAULT '',
  `toggle_setting_1` tinyint(1) NOT NULL DEFAULT '0',
  `toggle_setting_2` tinyint(1) NOT NULL DEFAULT '0',
  `activity` tinyint(4) NOT NULL DEFAULT '1',
  `subtype` varchar(31) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
