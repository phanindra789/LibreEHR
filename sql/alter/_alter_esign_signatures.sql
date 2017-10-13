
ALTER TABLE `esign_signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tid` (`tid`),
  ADD KEY `table` (`table`);
ALTER TABLE `esign_signatures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;












