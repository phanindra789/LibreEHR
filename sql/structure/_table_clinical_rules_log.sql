
CREATE TABLE `clinical_rules_log` (
  `id` bigint(20) NOT NULL,
  `date` datetime DEFAULT NULL,
  `pid` bigint(20) NOT NULL DEFAULT '0',
  `uid` bigint(20) NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL DEFAULT '' COMMENT 'An example category is clinical_reminder_widget',
  `value` text NOT NULL,
  `new_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
