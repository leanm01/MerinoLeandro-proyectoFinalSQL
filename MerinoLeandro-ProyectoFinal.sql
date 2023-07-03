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
idJugadores int
);

INSERT Equipo_de_futbol VALUES (1,100,21,21,1,1,1,1,1,1,1); 
INSERT INTO Equipo_de_futbol VALUES 
(2,60,40,26,2,2,2,2,2,2,2),
(3,40,20,24,2,2,2,2,2,2,2),
(4,30,30,28,2,2,2,2,2,2,2),
(5,10,2,18,2,2,2,2,2,2,2);

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

select * from sponsor;

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

select * from Presidente_del_club;

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

select * from resultados;

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

select * from director_tecnico;

alter table Equipo_de_futbol add foreign key (idDt) references director_tecnico(id_director_tecnico);

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

select * from jugadores;

alter table Equipo_de_futbol add foreign key (idJugadores) references jugadores(id_jugadores);


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



