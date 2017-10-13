
ALTER TABLE `gacl_acl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gacl_enabled_acl` (`enabled`),
  ADD KEY `gacl_section_value_acl` (`section_value`),
  ADD KEY `gacl_updated_date_acl` (`updated_date`);










