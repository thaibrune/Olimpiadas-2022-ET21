DROP DATABASE if exists DBMuseo;
CREATE DATABASE DBMuseo;

USE DBMuseo;
SET FOREIGN_key_checks=0;

CREATE TABLE Museo(
id_museo INT (50) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nombre TEXT (200) NOT NULL,
ubicacion INT (200) NOT NULL,
descripcion TEXT (250) NOT NULL
);

CREATE TABLE Plano_Museo(
Id_PlanoMuseo INT (50) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Id_museo INT (50) NOT NULL,
Plano INT (50) NOT NULL,
FOREIGN KEY (Id_museo) REFERENCES Museo(Id_museo)
);

-- DROP TABLE if EXISTS Visita_guiada;
CREATE TABLE Visita_Guiada(
Id_VisitaGuiada INT (50) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Id_Museo INT (50) NOT NULL,
Nombre TEXT NOT NULL,
Descripcion TEXT NOT NULL,
Horario VARCHAR (50) NOT NULL,
Guia TEXT NOT NULL,
Capacidad INT (50) NOT NULL,
Idioma TEXT NOT NULL,
FOREIGN KEY (Id_Museo) REFERENCES Museo(Id_Museo)
);

CREATE TABLE Tema(
Id_Tema INT (50) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Descripcion TEXT NOT NULL
);

-- DROP TABLE if EXISTS autor;
CREATE TABLE Autor(
Id_Autor INT (50) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR (200) NOT NULL,
Nacimiento VARCHAR (50) NOT NULL,
Fallecimiento VARCHAR (50) NOT NULL 
);

CREATE TABLE Sala(
Id_Sala INT (50) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Id_Museo INT (50) NOT NULL,
Descripcion TEXT (250) NOT NULL,
Url VARCHAR (200) NOT NULL,
FOREIGN KEY (Id_museo) REFERENCES Museo(Id_Museo)
);

CREATE TABLE Obra(
Id_Obra INT (50) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Id_Sala INT (50) NOT NULL,
Id_Tema INT (50) NOT NULL,
Id_Autor INT (50) NOT NULL,
Imagen VARCHAR (200) NOT NULL,
Fecha VARCHAR (50) NOT NULL,
Descripcion TEXT NOT NULL,
FOREIGN KEY (Id_Sala) REFERENCES Sala(Id_Sala),
FOREIGN KEY (Id_Tema) REFERENCES Tema(Id_Tema),
FOREIGN KEY (Id_Autor) REFERENCES Autor(Id_Autor)
);

CREATE TABLE Sala_Obra(
Id_Obra INT (50) NOT NULL,
Id_Sala INT (50) NOT NULL, 
PRIMARY KEY (Id_Obra, Id_Sala),
FOREIGN KEY (Id_Sala) REFERENCES Sala(Id_Sala),
FOREIGN KEY (Id_Obra) REFERENCES Obra(Id_Obra)
);

CREATE TABLE Tipo_Accesibilidad(
Id_TipoAccesibilidad INT (50) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Descripcion TEXT NOT NULL
);

CREATE TABLE Obra_Accesibilidad(
Id_Obra INT (50) NOT NULL,
Id_TipoAccesibilidad INT (50) NOT NULL,
accesibilidad TEXT NOT NULL,
PRIMARY KEY (Id_Obra, Id_TipoAccesibilidad),
FOREIGN KEY (Id_Obra) REFERENCES Obra(Id_Obra),
FOREIGN KEY (Id_TipoAccesibilidad) REFERENCES Tipo_Accesibilidad(Id_TipoAccesibilidad)
);

CREATE TABLE Usuario(
Id_Usuario INT (50) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Id_TipoAccesibilidad INT (50) NOT NULL,
Nombre VARCHAR (200) NOT NULL,
FOREIGN KEY (Id_TipoAccesibilidad) REFERENCES Tipo_Accesibilidad(Id_TipoAccesibilidad)
);

CREATE TABLE Turno(
Id_Turno INT (50) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Id_Usuario INT (50) NOT NULL,
Id_VisitaGuiada INT (50) NOT NULL,
Aceptado TEXT NOT NULL,
FOREIGN KEY (Id_Usuario) REFERENCES Usuario(Id_Usuario),
FOREIGN KEY (Id_VisitaGuiada) REFERENCES Visita_Guiada(Id_VisitaGuiada)
);