
ALTER TABLE `direct_message_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `msg_id` (`msg_id`),
  ADD KEY `patient_id` (`patient_id`);
ALTER TABLE `direct_message_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;












