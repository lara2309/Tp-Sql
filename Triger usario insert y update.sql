DELIMITER //
CREATE TRIGGER `usuarios_insert` AFTER INSERT ON `usuarios`
FOR EACH ROW
BEGIN
 INSERT INTO `auditoria_usuarios` (`usuario_id`, `operacion`, `direccion`,`telefono`)usuarios_insert
 VALUES (NEW.id, 'INSERT', NEW.direccion, NEW.telefono);
END;

//
CREATE TRIGGER `usuarios_update` BEFORE UPDATE ON `usuarios`
FOR EACH ROW
BEGIN
 INSERT INTO `auditoria_usuarios` (`usuario_id`, `operacion`, `direccion`,
`telefono`, `email`)
 VALUES (OLD.id, 'UPDATE', OLD.direccion, OLD.telefono, NEW.direccion, NEW.telefono);
END;
//
DELIMITER ;