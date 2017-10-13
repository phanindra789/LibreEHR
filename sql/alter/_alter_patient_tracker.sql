
ALTER TABLE `patient_tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eid` (`eid`),
  ADD KEY `pid` (`pid`);
ALTER TABLE `patient_tracker`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;












