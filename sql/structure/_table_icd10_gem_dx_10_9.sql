
CREATE TABLE `icd10_gem_dx_10_9` (
  `map_id` bigint(20) UNSIGNED NOT NULL,
  `dx_icd10_source` varchar(7) DEFAULT NULL,
  `dx_icd9_target` varchar(5) DEFAULT NULL,
  `flags` varchar(5) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '0',
  `revision` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
