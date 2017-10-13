
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid_encounter` (`pid`,`encounter`),
  ADD KEY `form_id` (`form_id`);
ALTER TABLE `forms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;












