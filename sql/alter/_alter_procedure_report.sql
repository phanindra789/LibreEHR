
ALTER TABLE `procedure_report`
  ADD PRIMARY KEY (`procedure_report_id`),
  ADD KEY `procedure_order_id` (`procedure_order_id`);
ALTER TABLE `procedure_report`
  MODIFY `procedure_report_id` bigint(20) NOT NULL AUTO_INCREMENT;













