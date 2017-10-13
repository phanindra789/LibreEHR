
CREATE TABLE `facility_user_ids` (
  `id` bigint(20) NOT NULL,
  `uid` bigint(20) DEFAULT NULL,
  `facility_id` bigint(20) DEFAULT NULL,
  `field_id` varchar(31) NOT NULL COMMENT 'references layout_options.field_id',
  `field_value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
