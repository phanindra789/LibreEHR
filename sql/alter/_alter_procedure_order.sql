
ALTER TABLE `procedure_order`
  ADD PRIMARY KEY (`procedure_order_id`),
  ADD KEY `datepid` (`date_ordered`,`patient_id`),
  ADD KEY `patient_id` (`patient_id`);
 ALTER TABLE `procedure_order`
  MODIFY `procedure_order_id` bigint(20) NOT NULL AUTO_INCREMENT;






















