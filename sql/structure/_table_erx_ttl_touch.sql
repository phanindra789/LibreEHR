
CREATE TABLE `erx_ttl_touch` (
  `patient_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Patient record Id',
  `process` enum('allergies','medications') NOT NULL COMMENT 'NewCrop eRx SOAP process',
  `updated` datetime NOT NULL COMMENT 'Date and time of last process update for patient'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Store records last update per patient data process';
