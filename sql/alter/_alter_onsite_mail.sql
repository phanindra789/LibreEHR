
ALTER TABLE `onsite_mail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`owner`);
ALTER TABLE `onsite_mail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;























