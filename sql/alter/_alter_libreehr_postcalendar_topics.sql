
ALTER TABLE `libreehr_postcalendar_topics`
  ADD PRIMARY KEY (`pc_catid`),
  ADD KEY `basic_cat` (`pc_catname`,`pc_catcolor`);
ALTER TABLE `libreehr_postcalendar_topics`
  MODIFY `pc_catid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;





