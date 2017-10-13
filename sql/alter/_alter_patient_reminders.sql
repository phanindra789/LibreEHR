
ALTER TABLE `patient_reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `category` (`category`,`item`);
ALTER TABLE `patient_reminders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
















