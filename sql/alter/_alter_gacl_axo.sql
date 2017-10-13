
ALTER TABLE `gacl_axo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gacl_section_value_value_axo` (`section_value`,`value`),
  ADD KEY `gacl_hidden_axo` (`hidden`);









