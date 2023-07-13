CREATE DEFINER=`root`@`localhost` PROCEDURE `obtener_jugadores`()
BEGIN

	select nombre_jugador,apellido_jugador from jugadores;

END