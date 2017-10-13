
ALTER TABLE `gacl_groups_axo_map`
  ADD PRIMARY KEY (`group_id`,`axo_id`),
  ADD KEY `gacl_axo_id` (`axo_id`);




