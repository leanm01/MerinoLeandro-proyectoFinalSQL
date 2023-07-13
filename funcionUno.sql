CREATE DEFINER=`root`@`localhost` FUNCTION `eficacia_goles_por_partido`(goles int, partidos int) RETURNS int
    NO SQL
BEGIN
	
    declare resultado int;
    set resultado = (goles / partidos);

RETURN resultado;
END