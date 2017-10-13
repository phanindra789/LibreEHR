
CREATE TABLE `product_warehouse` (
  `pw_drug_id` int(11) NOT NULL,
  `pw_warehouse` varchar(31) NOT NULL,
  `pw_min_level` float DEFAULT '0',
  `pw_max_level` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
