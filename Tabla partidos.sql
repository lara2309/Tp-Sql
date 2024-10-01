CREATE TABLE `Partido` (
	`nro` INT(10) NOT NULL,
	`cod_local` VARCHAR(2) NULL DEFAULT NULL COLLATE 'utf8_unicode_ci',
	`gol_local` INT(2) NULL DEFAULT NULL,
	`cod_visitante` VARCHAR(2) NULL DEFAULT NULL COLLATE 'utf8_unicode_ci',
	`gol_visitante` INT(2) NULL DEFAULT NULL,
	PRIMARY KEY (`nro`) USING BTREE,
	INDEX `cod_local` (`cod_local`) USING BTREE,
	INDEX `cod_visitante` (`cod_visitante`) USING BTREE,
	CONSTRAINT `Partido_ibfk_1` FOREIGN KEY (`cod_local`) REFERENCES `Equipo` (`codigo`) ON UPDATE RESTRICT ON DELETE RESTRICT,
	CONSTRAINT `Partido_ibfk_2` FOREIGN KEY (`cod_visitante`) REFERENCES `Equipo` (`codigo`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB
;