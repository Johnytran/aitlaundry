CREATE TABLE IF NOT EXISTS `#__order` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,

`orderid` INT(11)  NOT NULL ,
`ordernote` TEXT NOT NULL ,
`comboid` INT(11)  NOT NULL ,
`paymentid` INT(11)  NOT NULL ,
`datetimecreated` DATETIME NOT NULL ,
`addresspickup` VARCHAR(255)  NOT NULL ,
`date_timepickup` DATETIME NOT NULL ,
`addressdelivery` VARCHAR(255)  NOT NULL ,
`date_timedelivery` DATETIME NOT NULL ,
`deliverynote` TEXT NOT NULL ,
`status` TINYINT(1)  NOT NULL ,
`ordering` INT(11)  NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL ,
`userid` INT(11)  NOT NULL ,
`created_by` INT(11)  NOT NULL ,
`modified_by` INT(11)  NOT NULL ,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT COLLATE=utf8mb4_unicode_ci;


INSERT INTO `#__content_types` (`type_title`, `type_alias`, `table`, `content_history_options`)
SELECT * FROM ( SELECT 'Order','com_order.order','{"special":{"dbtable":"#__order","key":"id","type":"Order","prefix":"RderTable"}}', '{"formFile":"administrator\/components\/com_order\/models\/forms\/order.xml", "hideFields":["checked_out","checked_out_time","params","language" ,"deliverynote"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"group_id","targetTable":"#__usergroups","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}') AS tmp
WHERE NOT EXISTS (
	SELECT type_alias FROM `#__content_types` WHERE (`type_alias` = 'com_order.order')
) LIMIT 1;
