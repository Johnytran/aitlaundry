DROP TABLE IF EXISTS `#__logbook`;

DELETE FROM `#__content_types` WHERE (type_alias LIKE 'com_logbook.%');