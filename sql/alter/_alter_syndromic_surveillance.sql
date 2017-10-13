
ALTER TABLE `syndromic_surveillance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lists_id` (`lists_id`);
ALTER TABLE `syndromic_surveillance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;