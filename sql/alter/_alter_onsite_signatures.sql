
ALTER TABLE `onsite_signatures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pid` (`pid`,`user`),
  ADD KEY `encounter` (`encounter`);
ALTER TABLE `onsite_signatures`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

















