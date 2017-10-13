
CREATE TABLE `background_services` (
  `name` varchar(31) NOT NULL,
  `title` varchar(127) NOT NULL COMMENT 'name for reports',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `running` tinyint(1) NOT NULL DEFAULT '-1',
  `next_run` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execute_interval` int(11) NOT NULL DEFAULT '0' COMMENT 'minimum number of minutes between function calls,0=manual mode',
  `function` varchar(127) NOT NULL COMMENT 'name of background service function',
  `require_once` varchar(255) DEFAULT NULL COMMENT 'include file (if necessary)',
  `sort_order` int(11) NOT NULL DEFAULT '100' COMMENT 'lower numbers will be run first'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
