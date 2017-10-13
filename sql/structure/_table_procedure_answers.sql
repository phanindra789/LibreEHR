
CREATE TABLE `procedure_answers` (
  `procedure_order_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'references procedure_order.procedure_order_id',
  `procedure_order_seq` int(11) NOT NULL DEFAULT '0' COMMENT 'references procedure_order_code.procedure_order_seq',
  `question_code` varchar(31) NOT NULL DEFAULT '' COMMENT 'references procedure_questions.question_code',
  `answer_seq` int(11) NOT NULL COMMENT 'supports multiple-choice questions',
  `answer` varchar(255) NOT NULL DEFAULT '' COMMENT 'answer data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
