
ALTER TABLE `libreehr_module_vars`
  ADD PRIMARY KEY (`pn_id`),
  ADD KEY `pn_modname` (`pn_modname`),
  ADD KEY `pn_name` (`pn_name`);
ALTER TABLE `libreehr_module_vars`
  MODIFY `pn_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;






