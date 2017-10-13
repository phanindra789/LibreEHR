
CREATE TABLE `report_results` (
  `report_id` bigint(20) NOT NULL,
  `field_id` varchar(31) NOT NULL DEFAULT '',
  `field_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
