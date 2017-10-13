
ALTER TABLE `gacl_groups_aro_map`
  ADD PRIMARY KEY (`group_id`,`aro_id`),
  ADD KEY `gacl_aro_id` (`aro_id`);




