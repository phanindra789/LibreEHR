
ALTER TABLE `eligibility_verification`
  ADD PRIMARY KEY (`verification_id`),
  ADD KEY `insurance_id` (`insurance_id`);
ALTER TABLE `eligibility_verification`
  MODIFY `verification_id` bigint(20) NOT NULL AUTO_INCREMENT;










