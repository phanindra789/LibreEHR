
ALTER TABLE `immunizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`);
ALTER TABLE `immunizations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;






























