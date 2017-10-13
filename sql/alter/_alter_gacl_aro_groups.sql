
ALTER TABLE `gacl_aro_groups`
  ADD PRIMARY KEY (`id`,`value`),
  ADD UNIQUE KEY `gacl_value_aro_groups` (`value`),
  ADD KEY `gacl_parent_id_aro_groups` (`parent_id`),
  ADD KEY `gacl_lft_rgt_aro_groups` (`lft`,`rgt`);








