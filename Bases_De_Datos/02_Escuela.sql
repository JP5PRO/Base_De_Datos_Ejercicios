Create DataBase Escuela;
Use Escuela;
-- Tabla Grupo
Create table Grupo(
idGrupo int primary key auto_increment,
Grado int(10) not null,
numEstudiantes int(100) not null
);
-- Tabla Maestro
Create Table Maestro(
idMaestro int primary key auto_increment,
Nombre VARCHAR (100) not null,
Edad Int(20) not null,
idGrupo int not null,
foreign key (idGrupo) references Grupo(idGrupo)
);
-- Tabla Materia
Create table Materia(
idMateria int primary key auto_increment,
Nombre VARCHAR(20) not null,
Descripcion text
);
-- Tabla Estudiante
Create table Estudiante(
idEstudiante int primary key auto_increment,
Nombre VARCHAR(100) not null,
numMaterias int(10) not null,
direccion VARCHAR(100) not null,
correo VARCHAR(100) not null,
idGrupo int not null,
foreign key (idGrupo) references Grupo(idGrupo)
);
-- Tabla Direccion
Create table Direccion(
NumEncargados int(20) not null,
idGrupo int not null,
foreign key (idGrupo) references Grupo(idGrupo)
);
-- Tabla Horarios
Create table Horarios(
idGrupo int not null,
foreign key (idGrupo) references Grupo(idGrupo),
idMateria int not null,
foreign key (idMateria) references Materia(idMateria),
idMaestro int not null,
foreign key (idMaestro) references Maestro(idMaestro),
Dia int(30) not null,
hora datetime null
);
-- Tabla Maestro_Materia
Create table Maestro_Materia(
idMateria int not null,
foreign key (idMateria) references Materia(idMateria),
idMaestro int not null,
foreign key (idMaestro) references Maestro(idMaestro)
);
