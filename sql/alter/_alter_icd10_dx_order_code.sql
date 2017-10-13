
ALTER TABLE `icd10_dx_order_code`
  ADD UNIQUE KEY `dx_id` (`dx_id`),
  ADD KEY `formatted_dx_code` (`formatted_dx_code`),
  ADD KEY `active` (`active`);
ALTER TABLE `icd10_dx_order_code`
  MODIFY `dx_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;









