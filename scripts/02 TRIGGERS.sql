/*Interacción DOS*/
/*Antes de hacer un insert en tarea, si la calificación del empleado es menor a la complejidad del 
requerimiento no se tiene que permitir el Insert y se tiene que mostrar la leyenda “Calificación insuficiente”.*/
INSERT INTO Tarea (IdRequerimiento , Cuil , Inicio , Fin)
					VALUES(unIdRequerimiento , unCuil , unInicio , unFin);



/*Realizar un trigger para que al ingresar un usuario, le asigne por defecto experiencia en todas las 
tecnologías disponibles con calificación igual a CERO.*/
DELIMITER $$
CREATE TRIGGER AfterInsertUsuario AFTER INSERT ON Empleado FOR EACH ROW
INSERT INTO Software.Experiencia (Cuil , Tecnologia, calificación)
        	SELECT   NEW.Cuil , NEW.Tecnologia , 0
			FROM		 Tecnologia;
end $$


