
CREATE TABLE `patient_tracker_element` (
  `pt_tracker_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'maps to id column in patient_tracker table',
  `start_datetime` datetime DEFAULT NULL,
  `room` varchar(20) NOT NULL DEFAULT '',
  `status` varchar(31) NOT NULL DEFAULT '',
  `seq` varchar(4) NOT NULL DEFAULT '' COMMENT 'This is a numerical sequence for this pt_tracker_id events',
  `user` varchar(255) NOT NULL DEFAULT '' COMMENT 'This is the user that created this element'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
