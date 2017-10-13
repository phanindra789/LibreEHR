
ALTER TABLE `form_encounter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid_encounter` (`pid`,`encounter`),
  ADD KEY `encounter_date` (`date`);
ALTER TABLE `form_encounter`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;






























