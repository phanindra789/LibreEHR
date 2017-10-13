
ALTER TABLE `libreehr_postcalendar_events`
  ADD PRIMARY KEY (`pc_eid`),
  ADD KEY `basic_event` (`pc_catid`,`pc_aid`,`pc_eventDate`,`pc_endDate`,`pc_eventstatus`,`pc_sharing`,`pc_topic`),
  ADD KEY `pc_eventDate` (`pc_eventDate`);
ALTER TABLE `libreehr_postcalendar_events`
  MODIFY `pc_eid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;







































