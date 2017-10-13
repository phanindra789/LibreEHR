
ALTER TABLE `gacl_aco`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gacl_section_value_value_aco` (`section_value`,`value`),
  ADD KEY `gacl_hidden_aco` (`hidden`);










