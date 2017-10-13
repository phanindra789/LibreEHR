
ALTER TABLE `extended_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`);
ALTER TABLE `extended_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
ALTER 








