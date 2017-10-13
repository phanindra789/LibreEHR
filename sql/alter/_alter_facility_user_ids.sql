
ALTER TABLE `facility_user_ids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`,`facility_id`,`field_id`);
ALTER TABLE `facility_user_ids`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;






