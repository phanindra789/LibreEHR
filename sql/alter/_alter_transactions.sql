
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
