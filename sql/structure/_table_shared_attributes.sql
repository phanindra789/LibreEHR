
CREATE TABLE `shared_attributes` (
  `pid` bigint(20) NOT NULL,
  `encounter` bigint(20) NOT NULL COMMENT '0 if patient attribute, else encounter attribute',
  `field_id` varchar(31) NOT NULL COMMENT 'references layout_options.field_id',
  `last_update` datetime NOT NULL COMMENT 'time of last update',
  `user_id` bigint(20) NOT NULL COMMENT 'user who last updated',
  `field_value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
