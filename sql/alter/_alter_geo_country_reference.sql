
ALTER TABLE `geo_country_reference`
  ADD PRIMARY KEY (`countries_id`),
  ADD KEY `IDX_COUNTRIES_NAME` (`countries_name`);
ALTER TABLE `geo_country_reference`
  MODIFY `countries_id` int(5) NOT NULL AUTO_INCREMENT;





