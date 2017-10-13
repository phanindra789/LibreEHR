
ALTER TABLE `procedure_answers`
  ADD PRIMARY KEY (`answer_seq`,`procedure_order_id`,`procedure_order_seq`,`question_code`);
ALTER TABLE `procedure_answers`
  MODIFY `answer_seq` int(11) NOT NULL AUTO_INCREMENT COMMENT 'supports multiple-choice questions';







