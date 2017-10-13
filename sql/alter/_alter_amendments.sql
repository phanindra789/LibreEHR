
ALTER TABLE `amendments`
  ADD PRIMARY KEY (`amendment_id`),
  ADD KEY `amendment_pid` (`pid`);
ALTER TABLE `amendments`
  MODIFY `amendment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Amendment ID';












