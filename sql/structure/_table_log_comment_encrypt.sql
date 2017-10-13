
CREATE TABLE `log_comment_encrypt` (
  `id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `encrypt` enum('Yes','No') NOT NULL DEFAULT 'No',
  `checksum` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
