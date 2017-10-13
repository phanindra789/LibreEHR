
CREATE TABLE `batchcom` (
  `id` bigint(20) NOT NULL,
  `patient_id` int(11) NOT NULL DEFAULT '0',
  `sent_by` bigint(20) NOT NULL DEFAULT '0',
  `msg_type` varchar(60) DEFAULT NULL,
  `msg_subject` varchar(255) DEFAULT NULL,
  `msg_text` mediumtext,
  `msg_date_sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
