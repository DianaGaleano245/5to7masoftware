/*Interacción DOS*/
/*Antes de hacer un insert en tarea, si la calificación del empleado es menor a la complejidad del requerimiento no se tiene que permitir el Insert y se tiene que mostrar la leyenda “Calificación insuficiente”.*/

/*Realizar un trigger para que al ingresar un usuario, le asigne por defecto experiencia en todas las tecnologías disponibles con calificación igual a CERO.*/
CREATE TRIGGER BeforeInsertUsuario BEFORE INSERT ON Tecnologia FOR EACH ROW
begin
		if(new. Tecnologia = 0) THEN
        SIGNAL SQLSTATE ''
		SET MESSAGE_TEXT = '';
        end if;
end





