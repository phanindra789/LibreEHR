
ALTER TABLE `clinical_rules_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `category` (`category`);
ALTER TABLE `clinical_rules_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;









