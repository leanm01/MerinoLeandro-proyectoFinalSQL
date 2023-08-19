use proyecto_final_merino;

CREATE TABLE Equipo_de_futbol(
id_equipo int not null primary key,
cantidad_copas int,
cantidad_socios int,
cantidad_jugadores int,
idSponsor int,
idPresidente int,
idResultados int,
idEstadio int,
idSocios int,
idDt int,
idJugadores int,
id_campeonatos_y_ligas_jugados int,
id_jugadores_sub_15 int,
id_jugadores_sub_17 int,
id_jugadores_sub_20 int,
id_dt_sub_de_la_20 int,
id_de_la_division_femenina int,
id_dt_de_seleccion int
);

INSERT Equipo_de_futbol VALUES (1,100,21,21,1,1,1,1,1,1,1,1,1,1,1,1,1,1); 
INSERT INTO Equipo_de_futbol VALUES 
(2,60,40,26,2,2,2,2,2,2,2,2,2,2,2,2,2,2),
(3,40,20,24,3,3,3,3,3,3,3,3,3,3,3,3,3,3),
(4,30,30,28,4,4,4,4,4,4,4,4,4,4,4,4,4,4),
(5,10,2,18,5,5,5,5,5,5,5,5,5,5,5,5,5,5);

select * from Equipo_de_futbol;



##################################################################


CREATE TABLE Sponsor (
id_sponsor INT,
nombre_sponsor VARCHAR(45),
dinero_disponible int,
PRIMARY KEY(id_sponsor)
);
INSERT Sponsor VALUES (1,'QATAR',50);
INSERT INTO Sponsor VALUES 
(2,'Corona',20),
(3,'QUILMES',26),
(4,'NISSAN',27),
(5,'BMG',19);

create view vista_sponsor as
select id_sponsor,nombre_sponsor from sponsor; 

select * from sponsor;
select * from vista_sponsor;

alter table Equipo_de_futbol add foreign key (idSponsor) references Sponsor(id_sponsor);

##################################################################

CREATE TABLE Presidente_del_club (
id_presidente INT,
nombre_presidente VARCHAR(45),
apellido_presidente VARCHAR(45),
sueldo int,
PRIMARY KEY(id_presidente)
);
INSERT Presidente_del_club VALUES (1,'pepe','merlo',200);
INSERT INTO Presidente_del_club VALUES 
(2,'socrates','seco',20),
(3,'julian','rosa',26),
(4,'nik','nok',27),
(5,'ibarra','hugo',19);

create view vista_Presidente as
select id_presidente,apellido_presidente from Presidente_del_club; 

select * from Presidente_del_club;
select * from vista_Presidente;

alter table Equipo_de_futbol add foreign key (idPresidente) references Presidente_del_club(id_presidente);

##################################################################

CREATE TABLE resultados (
id_resultados INT,
goles_marcados_total int,
partidos_ganados_total int,
PRIMARY KEY(id_resultados)
);
INSERT resultados VALUES (1,100,40);
INSERT INTO resultados VALUES 
(2,50,71),
(3,15,50),
(4,32,41),
(5,14,28);

create view vista_resultados as
select id_resultados,partidos_ganados_total from resultados; 

select * from resultados;
select * from vista_resultados;

alter table Equipo_de_futbol add foreign key (idResultados) references resultados(id_resultados);

##################################################################

CREATE TABLE director_tecnico (
id_director_tecnico INT,
nombre_dt varchar(50),
apellido_dt varchar(50),
edad int,
equipos_dirigidos int,
copas_ganadas_individual int,
PRIMARY KEY(id_director_tecnico)
);

INSERT director_tecnico VALUES (1,'roberto','carlos',40,3,4);
INSERT INTO director_tecnico VALUES 
(2,'marcelo','tarcio',64,5,7),
(3,'almiron','juan',47,4,5),
(4,'demileche','perro',36,3,0),
(5,'coco','basile',78,9,10);

create view vista_tecnico as
select id_director_tecnico,apellido_dt,copas_ganadas_individual from director_tecnico; 

select * from director_tecnico;
select * from vista_tecnico;

alter table Equipo_de_futbol add foreign key (idDt) references director_tecnico(id_director_tecnico);

select dinero_ganado_por_partidos(50,500000);

##################################################################

CREATE TABLE estadio (
id_estadio INT,
nombre_estadio varchar(50),
nombre_fundador varchar(50),
edad_estadio int,
cantidad_butacas int,
PRIMARY KEY(id_estadio)
);

INSERT estadio VALUES (1,'bombonera','alberto',83,80000);
INSERT INTO estadio VALUES 
(2,'libertadores de america','jose',80,60000),
(3,'sola','roman',54,40000),
(4,'vicente lopez','flora',74,30000),
(5,'15 de abril','robert',78,40000);

select * from estadio;

alter table Equipo_de_futbol add foreign key (idEstadio) references estadio(id_estadio);


##################################################################

CREATE TABLE jugadores (
id_jugadores INT,
dinero_ganado int,
nombre_jugador varchar(50),
apellido_jugador varchar(50),
edad_jugador int,
equipo_anterior varchar(50),
PRIMARY KEY(id_jugadores)
);

INSERT jugadores VALUES (1,200,'alberto','carlo',20,'boca');
INSERT INTO jugadores VALUES 
(2,600,'messi','riquelme',26,'chacarita'),
(3,400,'tobias','leon',22,'manchester city'),
(4,150,'martin','godermo',36,'boca'),
(5,420,'emiliano','neuer',34,'bayern munich');

create view vista_jugadores as
select id_jugadores,apellido_jugador,edad_jugador from jugadores; 

select * from jugadores;
select * from vista_jugadores;

alter table Equipo_de_futbol add foreign key (idJugadores) references jugadores(id_jugadores);

select eficacia_goles_por_partido(50,9);

##################################################################

CREATE TABLE socios (
id_socios INT,
dinero_gastado int,
nombre_socio varchar(50),
apellido_socio varchar(50),
PRIMARY KEY(id_socios)
);

INSERT socios VALUES (1,2000,'juan','rosario');
INSERT INTO socios VALUES 
(2,6000,'vicente','sopra'),
(3,4000,'domingo','sion'),
(4,1550,'san','juan'),
(5,4720,'antonio','romero');

select * from socios;

alter table Equipo_de_futbol add foreign key (idSocios) references socios(id_socios);


##################################################################

call obtener_jugadores;
call obtener_presidente;

##################################################################

start transaction;

savepoint guardado_1;

update socios
set
	dinero_gastado = '8000'
where
	id_socios = 1 and
    nombre_socio = 'juan';

insert into socios(id_socios,dinero_gastado,nombre_socio,apellido_socio) 
values(7,5008,'marce','lo');

commit;

select * from socios;

savepoint guardado_2;

rollback to guardado_1;

##########################

start transaction;

savepoint guardadoDos_1;

update jugadores
set
	dinero_ganado = '900'
where
	id_jugadores = 1 and
    nombre_jugador = 'alberto';

insert into jugadores(id_jugadores,dinero_ganado,nombre_jugador,apellido_jugador,edad_jugador,equipo_anterior) 
values(7,500,'meme','deto',31,'barracas central');

commit;

select * from jugadores;

savepoint guardadoDos_2;

rollback to guardadoDos_1;

#########################################################

create user 'presidente@localhost' identified by 'presi23';

grant all on proyecto_final_merino.estadio to 'presidente@localhost';

#########

create user 'messi@localhost' identified by 'messigoat';

grant all on proyecto_final_merino.jugadores to 'messi@localhost';

############################################################ x

CREATE TABLE campeonatos_y_ligas_jugados (
id_campeonatos_y_ligas INT,
nombre_campeonatos_ligas varchar(50),
PRIMARY KEY(id_campeonatos_y_ligas)
);

INSERT campeonatos_y_ligas_jugados VALUES (1,'primera division argentina');
INSERT INTO campeonatos_y_ligas_jugados VALUES 
(2,'libertadores'),
(3,'supercopa'),
(4,'copa argentina'),
(5,'trofeo de campeones');

alter table Equipo_de_futbol add foreign key (id_campeonatos_y_ligas_jugados) references campeonatos_y_ligas_jugados(id_campeonatos_y_ligas);


############################################################ x

CREATE TABLE jugadores_sub_15 (
id_sub_15 INT,
nombre_jugador_sub_15 varchar(50),
edad_sub_15 int,
equipo_sub_15 varchar(50),
PRIMARY KEY(id_sub_15)
);

INSERT jugadores_sub_15 VALUES (1,'ricardo',14,'sacachispa');
INSERT INTO jugadores_sub_15 VALUES 
(2,'pedro',15,'brown de adrogue'),
(3,'juan',15,'almirante brown'),
(4,'tobias',15,'chaco forever'),
(5,'ayrton',15,'almagro');

alter table Equipo_de_futbol add foreign key (id_jugadores_sub_15) references jugadores_sub_15(id_sub_15);


######################################################### x


CREATE TABLE jugadores_sub_17 (
id_sub_17 INT,
nombre_jugador_sub_17 varchar(50),
edad_sub_17 int,
equipo_sub_17 varchar(50),
PRIMARY KEY(id_sub_17)
);

INSERT jugadores_sub_17 VALUES (1,'leandro',16,'boca');
INSERT INTO jugadores_sub_17 VALUES 
(2,'jose',17,'river'),
(3,'richard',16,'boca'),
(4,'manuel',17,'arsenal'),
(5,'alvaro',17,'colon');

alter table Equipo_de_futbol add foreign key (id_jugadores_sub_17) references jugadores_sub_17(id_sub_17);

######################################################## x 


CREATE TABLE jugadores_sub_20 (
id_sub_20 INT,
nombre_jugador_sub_20 varchar(50),
edad_sub_20 int,
equipo_sub_20 varchar(50),
PRIMARY KEY(id_sub_20)
);

INSERT jugadores_sub_20 VALUES (1,'juan manuel',20,'independiente');
INSERT INTO jugadores_sub_20 VALUES 
(2,'juan cruz',19,'boca'),
(3,'peter',20,'racing'),
(4,'medina',17,'platense'),
(5,'zeballos',17,'sarmiento');

alter table Equipo_de_futbol add foreign key (id_jugadores_sub_20) references jugadores_sub_20(id_sub_20);

######################################################## x 


CREATE TABLE dt_sub_20 (
id_dt_sub_20 INT,
nombre_dt_sub_20 varchar(50),
edad_dt_sub_20 int,
equipo_dt_sub_20 varchar(50),
PRIMARY KEY(id_dt_sub_20)
);

INSERT dt_sub_20 VALUES (1,'mascherano',52,'talleres');
INSERT INTO dt_sub_20 VALUES 
(2,'luis',43,'banfield'),
(3,'gustavo',60,'racing'),
(4,'tomas',56,'tucuman'),
(5,'hernan',46,'huracan');

alter table Equipo_de_futbol add foreign key (id_dt_sub_de_la_20) references dt_sub_20(id_dt_sub_20);

######################################################## x 


CREATE TABLE division_femenina (
id_division_femenina INT,
nombre_jugadora varchar(50),
edad_jugadora int,
equipo_jugadora varchar(50),
PRIMARY KEY(id_division_femenina)
);

INSERT division_femenina VALUES (1,'laurina',32,'boca');
INSERT INTO division_femenina VALUES 
(2,'gabriela',25,'velez'),
(3,'cecilia',26,'newells'),
(4,'vanina',24,'santa fe'),
(5,'agustina',21,'river');

alter table Equipo_de_futbol add foreign key (id_de_la_division_femenina) references division_femenina(id_division_femenina);

######################################################## x 


CREATE TABLE dt_de_seleccion (
id_dt_seleccion INT,
nombre_dt_de_seleccion varchar(50),
edad_dt_de_seleccion int,
PRIMARY KEY(id_dt_seleccion)
);

INSERT dt_de_seleccion VALUES (1,'scaloni',41);
INSERT INTO dt_de_seleccion VALUES 
(2,'basile',52),
(3,'maradona',64),
(4,'dalic',56),
(5,'tite',48);

alter table Equipo_de_futbol add foreign key (id_dt_de_seleccion) references dt_de_seleccion(id_dt_seleccion);













