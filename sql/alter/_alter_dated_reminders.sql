
ALTER TABLE `dated_reminders`
  ADD PRIMARY KEY (`dr_id`),
  ADD KEY `dr_from_ID` (`dr_from_ID`,`dr_message_due_date`);
ALTER TABLE `dated_reminders`
  MODIFY `dr_id` int(11) NOT NULL AUTO_INCREMENT;











