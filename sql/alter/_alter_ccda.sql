
ALTER TABLE `ccda`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_key` (`pid`,`encounter`,`time`);
ALTER TABLE `ccda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

















