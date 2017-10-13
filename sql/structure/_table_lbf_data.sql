
CREATE TABLE `lbf_data` (
  `form_id` int(11) NOT NULL COMMENT 'references forms.form_id',
  `field_id` varchar(31) NOT NULL COMMENT 'references layout_options.field_id',
  `field_value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='contains all data from layout-based forms';
