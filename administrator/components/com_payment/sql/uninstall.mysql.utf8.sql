DROP TABLE IF EXISTS `#__payment`;

DELETE FROM `#__content_types` WHERE (type_alias LIKE 'com_payment.%');