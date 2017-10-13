
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreign_id` (`owner`),
  ADD KEY `foreign_id_2` (`foreign_id`),
  ADD KEY `date` (`date`);









