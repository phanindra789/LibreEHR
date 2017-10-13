
CREATE TABLE `documents_legal_categories` (
  `dlc_id` int(10) UNSIGNED NOT NULL,
  `dlc_category_type` int(10) UNSIGNED NOT NULL COMMENT '1 category 2 subcategory',
  `dlc_category_name` varchar(45) NOT NULL,
  `dlc_category_parent` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
