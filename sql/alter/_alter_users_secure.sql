
ALTER TABLE `users_secure`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `USERNAME_ID` (`id`,`username`);
