

CREATE DATABASE db_instituto;
GO

USE db_instituto;
GO

CREATE TABLE Turnos
(
id_turno int not null primary key,
turno varchar(10) not null
);

CREATE TABLE Alumnos
(
id_alumno int not null primary key identity,
dni varchar(20) not null, 
nombre varchar(50) not null, 
apellido varchar(50) not null,
email varchar (100) not null,
fk_turno int not null,
FOREIGN KEY (fk_turno) references Turnos (id_turno)
);

CREATE TABLE Comentarios
(
id_comentario int not null primary key identity,
comentario varchar(700) not  null,
fk_alumno int not null,
FOREIGN KEY (fk_alumno) references Alumnos (id_alumno)
);

INSERT INTO Turnos (id_turno , turno) VALUES(0,'Mañana');
INSERT INTO Turnos (id_turno , turno) VALUES(1,'Tarde');
INSERT INTO Turnos (id_turno , turno) VALUES(2,'Noche');


INSERT INTO Alumnos (dni, nombre, apellido, email, fk_turno) VALUES ('94979433', 'Horwell', 'Murillo', 'horwellmv@gmail.com', '1');

INSERT INTO Comentarios (comentario, fk_alumno) VALUES ('Un primer comentario de ejemplo', '1');
INSERT INTO Comentarios (comentario, fk_alumno) VALUES ('Un segundo comentario de ejemplo', '1');
