
CREATE TABLE `clinical_rules` (
  `id` varchar(35) NOT NULL DEFAULT '',
  `pid` bigint(20) NOT NULL DEFAULT '0' COMMENT '0 is default for all patients, while > 0 is id from patient_data table',
  `active_alert_flag` tinyint(1) DEFAULT NULL COMMENT 'Active Alert Widget Module flag - note not yet utilized',
  `passive_alert_flag` tinyint(1) DEFAULT NULL COMMENT 'Passive Alert Widget Module flag',
  `patient_reminder_flag` tinyint(1) DEFAULT NULL COMMENT 'Clinical Reminder Module flag',
  `release_version` varchar(255) NOT NULL DEFAULT '' COMMENT 'Clinical Rule Release Version',
  `web_reference` varchar(255) NOT NULL DEFAULT '' COMMENT 'Clinical Rule Web Reference',
  `access_control` varchar(255) NOT NULL DEFAULT 'patients:med' COMMENT 'ACO link for access control',
  `pqrs_code` varchar(35) DEFAULT NULL COMMENT 'Measure number',
  `pqrs_individual_2016_flag` tinyint(4) DEFAULT NULL COMMENT 'Is MIPS flag',
  `pqrs_group_type` varchar(2) DEFAULT 'X' COMMENT 'XML output scheme type',
  `active` tinyint(4) DEFAULT NULL COMMENT 'Is this measure turned on?'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
