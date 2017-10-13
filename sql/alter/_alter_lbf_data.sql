
ALTER TABLE `lbf_data`
  ADD PRIMARY KEY (`form_id`,`field_id`);
ALTER TABLE `lbf_data`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'references forms.form_id';




