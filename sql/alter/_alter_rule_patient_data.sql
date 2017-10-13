
ALTER TABLE `rule_patient_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `category` (`category`,`item`);
ALTER TABLE `rule_patient_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
