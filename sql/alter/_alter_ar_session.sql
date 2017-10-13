
ALTER TABLE `ar_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `user_closed` (`user_id`,`closed`),
  ADD KEY `deposit_date` (`deposit_date`);
ALTER TABLE `ar_session`
  MODIFY `session_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;




















