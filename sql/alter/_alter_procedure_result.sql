
ALTER TABLE `procedure_result`
  ADD PRIMARY KEY (`procedure_result_id`),
  ADD KEY `procedure_report_id` (`procedure_report_id`);
ALTER TABLE `procedure_result`
  MODIFY `procedure_result_id` bigint(20) NOT NULL AUTO_INCREMENT;
















