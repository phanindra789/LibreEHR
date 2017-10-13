
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revision` (`revision`),
  ADD KEY `foreign_id` (`foreign_id`),
  ADD KEY `owner` (`owner`);
























