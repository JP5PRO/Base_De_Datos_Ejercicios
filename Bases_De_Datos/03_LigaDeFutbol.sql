Create DataBase LigaDeportiva;
USE LigaDeportiva;
-- Tabla Equipo
Create Table Equipo(
idEquipo int primary key auto_increment,
Nombre VARCHAR(100) not null,
numIntegrantes int(50) not null,
Ganadas int(20) null,
Perdidas int(20) null,
Empates int(20) null,
Puntos int(250) null
);
-- Tabla Arbitro
Create Table Arbitro(
idArbitro int primary key auto_increment,
Nombre VARCHAR(50) not null,
Edad INT(30) not null,
partidosJugados int(100) not null
);
-- Tabla Categoria
Create Table Categoria(
idCategoria int primary key auto_increment,
Nombre VARCHAR(50) not null,
Premio text null,
idEquipo int not null,
foreign key (idEquipo) references Equipo(idEquipo)
);
-- Tabla Clasificacion
Create Table Clasificacion(
idEquipo int not null,
foreign key (idEquipo) references Equipo(idEquipo),
Ganadas int(20) null,
Perdidas int(20) null,
Empates int(20) null,
Puntos int(250) null
);
-- Tabla Jugador
Create Table Jugador(
idJugador int primary key auto_increment,
Nombre VARCHAR(50) not null,
idEquipo int not null,
foreign key (idEquipo) references Equipo(idEquipo),
Edad INT(20) not null,
Rol text not null
);
-- Tabla Partido
Create Table Partido(
idPartido int primary key auto_increment,
idEquipoGanador int not null,
foreign key (idEquipoGanador) references Equipo(idEquipo),
idEquipoPerdedor int not null,
foreign key (idEquipoPerdedor) references Equipo(idEquipo),
Fecha date not null,
idArbitro int not null,
foreign key (idArbitro) references Arbitro(idArbitro)
);
