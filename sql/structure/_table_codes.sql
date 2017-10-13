
CREATE TABLE `codes` (
  `id` int(11) NOT NULL,
  `code_text` varchar(255) NOT NULL DEFAULT '',
  `code_text_short` varchar(24) NOT NULL DEFAULT '',
  `code` varchar(10) NOT NULL DEFAULT '',
  `code_type` smallint(6) DEFAULT NULL,
  `modifier` varchar(12) NOT NULL DEFAULT '',
  `units` tinyint(3) DEFAULT NULL,
  `fee` decimal(12,2) DEFAULT NULL,
  `superbill` varchar(31) NOT NULL DEFAULT '',
  `related_code` varchar(255) NOT NULL DEFAULT '',
  `taxrates` varchar(255) NOT NULL DEFAULT '',
  `cyp_factor` float NOT NULL DEFAULT '0' COMMENT 'quantity representing a years supply',
  `active` tinyint(1) DEFAULT '1' COMMENT '0 = inactive, 1 = active',
  `reportable` tinyint(1) DEFAULT '0' COMMENT '0 = non-reportable, 1 = reportable',
  `financial_reporting` tinyint(1) DEFAULT '0' COMMENT '0 = negative, 1 = considered important code in financial reporting'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
