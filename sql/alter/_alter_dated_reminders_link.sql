
ALTER TABLE `dated_reminders_link`
  ADD PRIMARY KEY (`dr_link_id`),
  ADD KEY `to_id` (`to_id`),
  ADD KEY `dr_id` (`dr_id`);
ALTER TABLE `dated_reminders_link`
  MODIFY `dr_link_id` int(11) NOT NULL AUTO_INCREMENT;






