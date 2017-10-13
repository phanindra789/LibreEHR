
ALTER TABLE `supported_external_dataloads`
  ADD UNIQUE KEY `load_id` (`load_id`);
ALTER TABLE `supported_external_dataloads`
  MODIFY `load_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
  