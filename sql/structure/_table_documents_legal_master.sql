
CREATE TABLE `documents_legal_master` (
  `dlm_category` int(10) UNSIGNED DEFAULT NULL,
  `dlm_subcategory` int(10) UNSIGNED DEFAULT NULL,
  `dlm_document_id` int(10) UNSIGNED NOT NULL,
  `dlm_document_name` varchar(75) NOT NULL,
  `dlm_filepath` varchar(75) NOT NULL,
  `dlm_facility` int(10) UNSIGNED DEFAULT NULL,
  `dlm_provider` int(10) UNSIGNED DEFAULT NULL,
  `dlm_sign_height` double NOT NULL,
  `dlm_sign_width` double NOT NULL,
  `dlm_filename` varchar(45) NOT NULL,
  `dlm_effective_date` datetime NOT NULL,
  `dlm_version` int(10) UNSIGNED NOT NULL,
  `content` varchar(255) NOT NULL,
  `dlm_savedsign` varchar(255) DEFAULT NULL COMMENT '0-Yes 1-No',
  `dlm_review` varchar(255) DEFAULT NULL COMMENT '0-Yes 1-No',
  `dlm_upload_type` tinyint(4) DEFAULT '0' COMMENT '0-Provider Uploaded,1-Patient Uploaded'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of Master Docs to be signed';
