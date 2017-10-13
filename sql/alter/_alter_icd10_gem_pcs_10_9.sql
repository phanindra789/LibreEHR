
ALTER TABLE `icd10_gem_pcs_10_9`
  ADD UNIQUE KEY `map_id` (`map_id`);
ALTER TABLE `icd10_gem_pcs_10_9`
  MODIFY `map_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;









