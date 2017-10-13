
CREATE TABLE `ccda_components` (
  `ccda_components_id` int(11) NOT NULL,
  `ccda_components_field` varchar(100) DEFAULT NULL,
  `ccda_components_name` varchar(100) DEFAULT NULL,
  `ccda_type` int(11) NOT NULL COMMENT '0=>sections,1=>components'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
