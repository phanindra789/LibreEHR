
CREATE TABLE `onsite_messages` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `message` longtext,
  `ip` varchar(15) NOT NULL,
  `date` datetime NOT NULL,
  `sender_id` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'who sent id',
  `recip_id` varchar(255) NOT NULL COMMENT 'who to id array'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Portal messages';
