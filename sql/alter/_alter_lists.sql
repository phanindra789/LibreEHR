
ALTER TABLE `lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `type` (`type`);
ALTER TABLE `lists`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

































