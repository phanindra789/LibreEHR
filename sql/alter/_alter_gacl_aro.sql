
ALTER TABLE `gacl_aro`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gacl_section_value_value_aro` (`section_value`,`value`),
  ADD KEY `gacl_hidden_aro` (`hidden`);









