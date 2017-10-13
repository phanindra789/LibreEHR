
ALTER TABLE `icd10_pcs_order_code`
  ADD UNIQUE KEY `pcs_id` (`pcs_id`),
  ADD KEY `pcs_code` (`pcs_code`),
  ADD KEY `active` (`active`);
ALTER TABLE `icd10_pcs_order_code`
  MODIFY `pcs_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;









