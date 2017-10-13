
CREATE TABLE `icd10_dx_order_code` (
  `dx_id` bigint(20) UNSIGNED NOT NULL,
  `dx_code` varchar(7) DEFAULT NULL,
  `formatted_dx_code` varchar(10) DEFAULT NULL,
  `valid_for_coding` char(1) DEFAULT NULL,
  `short_desc` varchar(60) DEFAULT NULL,
  `long_desc` varchar(300) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '0',
  `revision` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
