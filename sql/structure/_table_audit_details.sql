
CREATE TABLE `audit_details` (
  `id` bigint(20) NOT NULL,
  `table_name` varchar(100) NOT NULL COMMENT 'libreehr table name',
  `field_name` varchar(100) NOT NULL COMMENT 'libreehr table''s field name',
  `field_value` text COMMENT 'libreehr table''s field value',
  `audit_master_id` bigint(20) NOT NULL COMMENT 'Id of the audit_master table',
  `entry_identification` varchar(255) NOT NULL DEFAULT '1' COMMENT 'Used when multiple entry occurs from the same table.1 means no multiple entry'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
