
CREATE TABLE `amendments_history` (
  `amendment_id` int(11) NOT NULL COMMENT 'Amendment ID',
  `amendment_note` text COMMENT 'Amendment requested from',
  `amendment_status` varchar(50) DEFAULT NULL COMMENT 'Amendment Request Status',
  `created_by` int(11) NOT NULL COMMENT 'references users.id for session owner',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'created time'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
