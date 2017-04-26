CREATE TABLE IF NOT EXISTS `#__userextra_` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,

`username` VARCHAR(255)  NOT NULL ,
`password` VARCHAR(255)  NOT NULL ,
`firstname` VARCHAR(255)  NOT NULL ,
`lastname` VARCHAR(255)  NOT NULL ,
`name` VARCHAR(255)  NOT NULL ,
`homephone` VARCHAR(255)  NOT NULL ,
`mobilephone` VARCHAR(255)  NOT NULL ,
`address` VARCHAR(255)  NOT NULL ,
`email` VARCHAR(255)  NOT NULL ,
`ordering` INT(11)  NOT NULL ,
`state` TINYINT(1)  NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL ,
`created_by` INT(11)  NOT NULL ,
`modified_by` INT(11)  NOT NULL ,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT COLLATE=utf8mb4_unicode_ci;


INSERT INTO `#__content_types` (`type_title`, `type_alias`, `table`, `content_history_options`)
SELECT * FROM ( SELECT 'User','com_userextra.user','{"special":{"dbtable":"#__userextra_","key":"id","type":"User","prefix":"UserextraTable"}}', '{"formFile":"administrator\/components\/com_userextra\/models\/forms\/user.xml", "hideFields":["checked_out","checked_out_time","params","language"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"group_id","targetTable":"#__usergroups","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}') AS tmp
WHERE NOT EXISTS (
	SELECT type_alias FROM `#__content_types` WHERE (`type_alias` = 'com_userextra.user')
) LIMIT 1;
