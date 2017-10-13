
ALTER TABLE `gacl_acl_sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gacl_value_acl_sections` (`value`),
  ADD KEY `gacl_hidden_acl_sections` (`hidden`);







