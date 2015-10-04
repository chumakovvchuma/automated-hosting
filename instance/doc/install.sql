CREATE TABLE IF NOT EXISTS `lhc_instance_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request` int(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `suspended` int(11) NOT NULL,
  `terminate` int(11) NOT NULL,
  `address` varchar(30) NOT NULL,
  `email` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `time_zone` varchar(200) NOT NULL,
  `date_format` varchar(200) NOT NULL DEFAULT 'Y-m-d',
  `date_hour_format` varchar(200) NOT NULL DEFAULT 'H:i:s',
  `date_date_hour_format` varchar(200) NOT NULL DEFAULT 'Y-m-d H:i:s',
  `locale` varchar(10) NOT NULL,
  `siteaccess` varchar(3) NOT NULL,
  `is_reseller` tinyint(1) NOT NULL DEFAULT '0',
  `reseller_tite` varchar(50) NOT NULL,
  `reseller_max_instance_request` int(11) NOT NULL,
  `reseller_secret_hash` varchar(20) NOT NULL,
  `reseller_max_instances` int(11) NOT NULL,
  `reseller_id` int(11) NOT NULL,
  `reseller_request` int(11) NOT NULL,
  `reseller_suspended` int(11) NOT NULL,
  `files_supported` int(11) NOT NULL DEFAULT '1',
  `atranslations_supported` int(11) NOT NULL DEFAULT '1',
  `cobrowse_supported` int(11) NOT NULL DEFAULT '1',
  `cobrowse_forms_supported` int(11) NOT NULL DEFAULT '1',
  `forms_supported` int(11) NOT NULL DEFAULT '1',
  `cannedmsg_supported` int(11) NOT NULL DEFAULT '1',
  `faq_supported` int(11) NOT NULL DEFAULT '1',
  `feature_1_supported` int(11) NOT NULL,
  `feature_2_supported` int(11) NOT NULL,
  `feature_3_supported` int(11) NOT NULL,
  `reporting_supported` int(11) NOT NULL DEFAULT '1',
  `chatbox_supported` int(11) NOT NULL DEFAULT '1',
  `browseoffers_supported` int(11) NOT NULL DEFAULT '1',
  `questionnaire_supported` int(11) NOT NULL DEFAULT '1',
  `proactive_supported` int(11) NOT NULL DEFAULT '1',
  `screenshot_supported` int(11) NOT NULL DEFAULT '1',
  `blocked_supported` int(11) NOT NULL DEFAULT '1',
  `footprint_supported` int(11) NOT NULL DEFAULT '1',
  `previouschats_supported` int(11) NOT NULL DEFAULT '1',
  `chatremarks_supported` int(11) NOT NULL DEFAULT '1',
  `autoresponder_supported` int(11) NOT NULL DEFAULT '1',
  `geoadjustment_supported` int(11) NOT NULL DEFAULT '1',
  `onlinevisitortrck_supported` int(11) NOT NULL DEFAULT '1',
  `speech_supported` int(11) NOT NULL DEFAULT '1',
  `sugarcrm_supported` int(11) NOT NULL DEFAULT '1',
  `transfer_supported` int(11) NOT NULL DEFAULT '1',
  `operatorschat_supported` int(11) NOT NULL DEFAULT '1',
  `xmpp_supported` int(11) NOT NULL DEFAULT '1',
  `offline_supported` int(11) NOT NULL DEFAULT '1',
  `one_per_account` int(11) NOT NULL DEFAULT '0',
  `max_operators` int(11) NOT NULL DEFAULT '0',
  `client_title` varchar(250) NOT NULL,
  `phone_number_data` text NOT NULL,
  `phone_response_data` text NOT NULL,
  `phone_response_timeout_data` text NOT NULL,
  `sms_left` int(11) NOT NULL DEFAULT '0',
  `sms_plan` int(11) NOT NULL DEFAULT '0',
  `soft_limit_type` int(11) NOT NULL DEFAULT '0',
  `soft_limit` int(11) NOT NULL DEFAULT '0',
  `hard_limit_type` int(11) NOT NULL DEFAULT '0',
  `hard_limit` int(11) NOT NULL DEFAULT '0',
  `sms_processed` int(11) NOT NULL DEFAULT '0',
  `sms_supported` int(11) NOT NULL DEFAULT '0',
  `hard_warning_send` int(11) NOT NULL DEFAULT '0',
  `soft_warning_send` int(11) NOT NULL DEFAULT '0',
  `phone_default_department` int(11) NOT NULL,
  `chat_supported` int(11) NOT NULL DEFAULT '1',
  `custom_fields_1` text NOT NULL,
  `custom_fields_2` text NOT NULL,
  `custom_fields_3` text NOT NULL,
  `client_attributes` text NOT NULL,
  `attr_int_1` int(11) NOT NULL DEFAULT '0',
  `attr_int_2` int(11) NOT NULL DEFAULT '0',
  `attr_int_3` int(11) NOT NULL DEFAULT '0',
  `full_xmpp_chat_supported` int(11) NOT NULL DEFAULT '1',
  `full_xmpp_visitors_tracking` int(11) NOT NULL DEFAULT '1',
  `expire_inform_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `address` (`address`),
  KEY `reseller_id` (`reseller_id`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `lhc_instance_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txn_id` varchar(50) NOT NULL,
  `instance_id` int(11) NOT NULL,
  `order_item` varchar(10) NOT NULL,
  `odate` int(11) NOT NULL,
  `log` text NOT NULL,
  `currency` varchar(3) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `txn_id` (`txn_id`),
  KEY `instance_id` (`instance_id`)
) ENGINE=InnoDB;
