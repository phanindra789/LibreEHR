
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;































