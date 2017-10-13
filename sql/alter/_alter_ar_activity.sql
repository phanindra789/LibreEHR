
ALTER TABLE `ar_activity`
  ADD PRIMARY KEY (`sequence_no`,`pid`,`encounter`),
  ADD KEY `session_id` (`session_id`);
ALTER TABLE `ar_activity`
  MODIFY `sequence_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;





















