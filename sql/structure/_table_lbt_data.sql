
CREATE TABLE `lbt_data` (
  `form_id` bigint(20) NOT NULL COMMENT 'references transactions.id',
  `field_id` varchar(31) NOT NULL COMMENT 'references layout_options.field_id',
  `field_value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='contains all data from layout-based transactions';
