
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);
ALTER TABLE `payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;













