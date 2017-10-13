
ALTER TABLE `gprelations`
  ADD PRIMARY KEY (`type1`,`id1`,`type2`,`id2`),
  ADD KEY `key2` (`type2`,`id2`);






