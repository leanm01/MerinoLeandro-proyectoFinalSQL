CREATE DEFINER=`root`@`localhost` PROCEDURE `obtener_presidente`()
BEGIN

	select nombre_presidente,apellido_presidente from Presidente_del_club;

END