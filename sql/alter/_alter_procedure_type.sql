ALTER TABLE `procedure_type`
  ADD PRIMARY KEY (`procedure_type_id`),
  ADD KEY `parent` (`parent`);
ALTER TABLE `procedure_type`
  MODIFY `procedure_type_id` bigint(20) NOT NULL AUTO_INCREMENT;




















