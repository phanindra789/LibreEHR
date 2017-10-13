
CREATE TABLE `tf_tags` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `tag_name` varchar(255) NOT NULL,
  `tag_color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
