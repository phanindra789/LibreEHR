
ALTER TABLE `form_vitals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);
ALTER TABLE `form_vitals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

























