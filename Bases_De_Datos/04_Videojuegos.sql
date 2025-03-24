Create Database Videojuegos;
Use Videojuegos;
-- Tabla Jugadores
Create Table Jugadores(
idJugador int primary key auto_increment,
Nombre VARCHAR(50) not null,
Habilidad VARCHAR(50) not null,
Descripcion text not null
);
-- Tabla Mapas
Create Table Mapas(
idMapa int primary key auto_increment,
Nombre VARCHAR(50) not null,
numNiveles int(20) not null,
Coleccionables int(50) not null
);
-- Tabla Usuario
Create Table Usuario(
idUsuario int primary key auto_increment,
Nombre VARCHAR(50),
Edad int(20) not null,
Contraseña VARCHAR(10) not null,
nivelesCompletados int(100) null,
Correo VARCHAR(20) not null,
idJugador int not null,
foreign key (idJugador) references Jugadores(idJugador)
);
-- Tabla Nivel
Create Table Nivel(
idNivel int primary key auto_increment,
idMapa int not null,
foreign key (idMapa) references Mapas(idMapa),
Nombre VARCHAR(50) not null,
Duracion VARCHAR(10) not null,
Coleccionables int (30) not null
);
-- Tabla Nivel_Usuario
Create Table Nivel_Usuario(
idNivel int not null,
foreign key (idNivel) references Nivel(idNivel),
idUsuario int not null,
foreign key (idUsuario) references Usuario(idUsuario)
);
-- Tabla Puntos
Create Table Puntos(
idPuntos int primary key auto_increment
);
-- Tabla Usuario_Puntos
Create Table Usuario_Puntos(
idUsuario int not null,
foreign key (idUsuario) references Usuario(idUsuario),
idPuntos int not null,
foreign key (idPuntos) references Puntos(idPuntos)
);
