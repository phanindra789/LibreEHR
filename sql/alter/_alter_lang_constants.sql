
ALTER TABLE `lang_constants`
  ADD UNIQUE KEY `cons_id` (`cons_id`),
  ADD KEY `constant_name` (`constant_name`(100));
ALTER TABLE `lang_constants`
  MODIFY `cons_id` int(11) NOT NULL AUTO_INCREMENT;





