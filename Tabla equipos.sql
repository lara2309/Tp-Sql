CREATE TABLE `Equipo` (
	`codigo` VARCHAR(2) NOT NULL COLLATE 'utf8_unicode_ci',
	`nombre_pais` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_unicode_ci',
	PRIMARY KEY (`codigo`) USING BTREE
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB
;