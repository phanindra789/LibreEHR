
CREATE TABLE `notification_log` (
  `iLogId` int(11) NOT NULL,
  `pid` int(7) NOT NULL,
  `pc_eid` int(11) UNSIGNED DEFAULT NULL,
  `sms_gateway_type` varchar(50) NOT NULL,
  `smsgateway_info` varchar(255) NOT NULL,
  `message` text,
  `email_sender` varchar(255) NOT NULL,
  `email_subject` varchar(255) NOT NULL,
  `type` enum('SMS','Email') NOT NULL,
  `patient_info` text,
  `pc_eventDate` date NOT NULL,
  `pc_endDate` date NOT NULL,
  `pc_startTime` time NOT NULL,
  `pc_endTime` time NOT NULL,
  `dSentDateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
