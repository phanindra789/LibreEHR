
ALTER TABLE `gacl_axo_groups`
  ADD PRIMARY KEY (`id`,`value`),
  ADD UNIQUE KEY `gacl_value_axo_groups` (`value`),
  ADD KEY `gacl_parent_id_axo_groups` (`parent_id`),
  ADD KEY `gacl_lft_rgt_axo_groups` (`lft`,`rgt`);









