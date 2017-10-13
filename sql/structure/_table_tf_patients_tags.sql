
CREATE TABLE `tf_patients_tags` (
  `id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `pid` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` datetime NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
