
CREATE TABLE `tf_filters` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `requesting_action` varchar(255) NOT NULL COMMENT 'allow or deny',
  `requesting_type` varchar(255) NOT NULL COMMENT 'user or group',
  `requesting_entity` varchar(255) NOT NULL COMMENT 'the group name or username of the source',
  `object_type` varchar(255) NOT NULL COMMENT 'patient or tag',
  `object_entity` bigint(20) NOT NULL COMMENT 'tag id of tag',
  `note` text NOT NULL,
  `gacl_aro` int(11) NOT NULL COMMENT 'placeholder',
  `gacl_acl` int(11) NOT NULL COMMENT 'placeholder',
  `effective_datetime` datetime NOT NULL,
  `expiration_datetime` datetime NOT NULL,
  `priority` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
