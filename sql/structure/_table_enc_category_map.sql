
CREATE TABLE `enc_category_map` (
  `rule_enc_id` varchar(31) NOT NULL DEFAULT '' COMMENT 'encounter id from rule_enc_types list in list_options',
  `main_cat_id` int(11) NOT NULL DEFAULT '0' COMMENT 'category id from event category in libreehr_postcalendar_categories'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
