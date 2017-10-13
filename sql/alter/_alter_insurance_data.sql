
ALTER TABLE `insurance_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pid_type_date_inactivetime` (`pid`,`type`,`date`,`inactive_time`);
ALTER TABLE `insurance_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;




































