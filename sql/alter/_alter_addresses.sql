
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreign_id` (`foreign_id`);