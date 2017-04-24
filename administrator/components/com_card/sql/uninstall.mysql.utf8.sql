DROP TABLE IF EXISTS `#__card`;

DELETE FROM `#__content_types` WHERE (type_alias LIKE 'com_card.%');