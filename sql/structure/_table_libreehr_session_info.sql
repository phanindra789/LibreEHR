
CREATE TABLE `libreehr_session_info` (
  `pn_sessid` varchar(32) NOT NULL DEFAULT '',
  `pn_ipaddr` varchar(20) DEFAULT NULL,
  `pn_firstused` int(11) NOT NULL DEFAULT '0',
  `pn_lastused` int(11) NOT NULL DEFAULT '0',
  `pn_uid` int(11) NOT NULL DEFAULT '0',
  `pn_vars` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
