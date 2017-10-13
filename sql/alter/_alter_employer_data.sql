
ALTER TABLE `employer_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);
ALTER TABLE `employer_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;












