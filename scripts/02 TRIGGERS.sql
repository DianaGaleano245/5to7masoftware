/*Interacción DOS*/
/*Antes de hacer un insert en tarea, si la calificación del empleado es menor a la complejidad del 
requerimiento no se tiene que permitir el Insert y se tiene que mostrar la leyenda “Calificación insuficiente”.*/
DELIMITER $$ 
INSERT INTO Tarea (IdRequerimiento , Cuil , Inicio , Fin)
					VALUES(unIdRequerimiento , unCuil , unInicio , unFin);
end $$

INSERT INTO Empleado (Cuil, Nombre, Apellido, Contratacion)
					VALUES(unCuil, unNombre, unApellido, UnaContratacion)
end $$
CREATE TRIGGER beforeCuil BEFORE INSERT ON Tarea 
FOR EACH ROW
BEGIN
-- GUARDARSE calificacion del Empleado
-- Guardarse requerimiento de la tarea


IF ( NEW.calificacion < 0) THEN
        SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'calificacion insuficiente';
    END IF;<
END


/*Realizar un trigger para que al ingresar un usuario, le asigne por defecto experiencia en todas las 
tecnologías disponibles con calificación igual a CERO.*/
DELIMITER $$
CREATE TRIGGER AfterInsertUsuario AFTER INSERT ON Empleado FOR EACH ROW
INSERT INTO Software.Experiencia (Cuil , IdTecnologia, calificación)
        	SELECT   NEW.Cuil , idTecnologia , 0
			FROM		 Tecnologia;
end $$


