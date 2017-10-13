
ALTER TABLE `amendments_history`
  ADD KEY `amendment_history_id` (`amendment_id`);
ALTER TABLE `amendments_history`
  MODIFY `amendment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Amendment ID';







