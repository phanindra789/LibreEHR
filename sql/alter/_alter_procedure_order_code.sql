
ALTER TABLE `procedure_order_code`
  ADD PRIMARY KEY (`procedure_order_seq`,`procedure_order_id`);
ALTER TABLE `procedure_order_code`
  MODIFY `procedure_order_seq` int(11) NOT NULL AUTO_INCREMENT COMMENT 'supports multiple tests per order';












