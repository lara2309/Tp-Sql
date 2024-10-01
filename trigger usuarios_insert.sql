DELIMITER //
CREATE TRIGGER `usuarios_insert` AFTER INSERT ON `usuarios`
FOR EACH ROW
BEGIN
 INSERT INTO `auditoria_usuarios` (`usuario_id`, `operacion`, `nombre_nuevo`,
`apellido_nuevo`)
 VALUES (NEW.id, 'INSERT', NEW.nombre, NEW.apellido);
END;
// 

