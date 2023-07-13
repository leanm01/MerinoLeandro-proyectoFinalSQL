CREATE DEFINER=`root`@`localhost` FUNCTION `dinero_ganado_por_partidos`(partidos_dirijidos int, sueldo float) RETURNS float
    NO SQL
BEGIN
	
    declare resultado float;
    set resultado = (partidos_dirijidos * sueldo);
    
RETURN resultado;
END