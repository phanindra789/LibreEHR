
ALTER TABLE `lang_definitions`
  ADD UNIQUE KEY `def_id` (`def_id`),
  ADD KEY `cons_id` (`cons_id`);
ALTER TABLE `lang_definitions`
  MODIFY `def_id` int(11) NOT NULL AUTO_INCREMENT;
  







