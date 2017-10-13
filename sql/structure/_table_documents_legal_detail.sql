
CREATE TABLE `documents_legal_detail` (
  `dld_id` int(10) UNSIGNED NOT NULL,
  `dld_pid` int(10) UNSIGNED DEFAULT NULL,
  `dld_facility` int(10) UNSIGNED DEFAULT NULL,
  `dld_provider` int(10) UNSIGNED DEFAULT NULL,
  `dld_encounter` int(10) UNSIGNED DEFAULT NULL,
  `dld_master_docid` int(10) UNSIGNED NOT NULL,
  `dld_signed` smallint(5) UNSIGNED NOT NULL COMMENT '0-Not Signed or Cannot Sign(Layout),1-Signed,2-Ready to sign,3-Denied(Pat Regi),4-Patient Upload,10-Save(Layout)',
  `dld_signed_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dld_filepath` varchar(75) DEFAULT NULL,
  `dld_filename` varchar(45) NOT NULL,
  `dld_signing_person` varchar(50) NOT NULL,
  `dld_sign_level` int(11) NOT NULL COMMENT 'Sign flow level',
  `dld_content` varchar(50) NOT NULL COMMENT 'Layout sign position',
  `dld_file_for_pdf_generation` blob NOT NULL COMMENT 'The filled details in the fdf file is stored here.Patient Registration Screen',
  `dld_denial_reason` longtext,
  `dld_moved` tinyint(4) NOT NULL DEFAULT '0',
  `dld_patient_comments` text COMMENT 'Patient comments stored here'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
