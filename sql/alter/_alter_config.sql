
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`),
  ADD KEY `lft` (`lft`,`rght`);










