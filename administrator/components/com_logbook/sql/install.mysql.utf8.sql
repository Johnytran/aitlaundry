CREATE TABLE IF NOT EXISTS `#__logbook` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,

`logid` INT(11)  NOT NULL ,
`note` TEXT NOT NULL ,
`status` TINYINT(1)  NOT NULL ,
`datetimemodify` DATETIME NOT NULL ,
`ordering` INT(11)  NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL ,
`created_by` INT(11)  NOT NULL ,
`modified_by` INT(11)  NOT NULL ,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT COLLATE=utf8mb4_unicode_ci;


INSERT INTO `#__content_types` (`type_title`, `type_alias`, `table`, `content_history_options`)
SELECT * FROM ( SELECT 'Logbook','com_logbook.logbook','{"special":{"dbtable":"#__logbook","key":"id","type":"Logbook","prefix":"LogbookTable"}}', '{"formFile":"administrator\/components\/com_logbook\/models\/forms\/logbook.xml", "hideFields":["checked_out","checked_out_time","params","language" ,"note"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"group_id","targetTable":"#__usergroups","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}') AS tmp
WHERE NOT EXISTS (
	SELECT type_alias FROM `#__content_types` WHERE (`type_alias` = 'com_logbook.logbook')
) LIMIT 1;
