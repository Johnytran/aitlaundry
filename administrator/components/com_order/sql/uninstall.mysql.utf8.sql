DROP TABLE IF EXISTS `#__order`;

DELETE FROM `#__content_types` WHERE (type_alias LIKE 'com_order.%');