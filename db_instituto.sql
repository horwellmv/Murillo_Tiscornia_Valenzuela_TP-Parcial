
CREATE DATABASE db_Instituto;
USE db_Instituto;

CREATE TABLE turnos
(
id_turno int not null primary key,
turno varchar(10) not null
);

CREATE TABLE alumnos
(
id_alumno int not null primary key AUTO_INCREMENT,
dni int not null, 
nombre varchar(50) not null, 
apellido varchar(50) not null,  
email varchar(100) not null,
fk_turno int not null,
FOREIGN KEY (fk_turno) references turnos (id_turno)
);

CREATE TABLE comentarios
(
id_comentario int not null primary key AUTO_INCREMENT,
comentario varchar(700) not  null,
fk_alumno int not null,
FOREIGN KEY (fk_alumno) references alumnos (id_alumno)
);

INSERT INTO `db_instituto`.`turnos` (`id_turno`,`turno`) VALUES(1,'Mañana');
INSERT INTO `db_instituto`.`turnos` (`id_turno`,`turno`) VALUES(2,'Tarde');
INSERT INTO `db_instituto`.`turnos` (`id_turno`,`turno`) VALUES(3,'Noche');

INSERT INTO `db_instituto`.`alumnos` (`dni`, `nombre`, `apellido`, `email`, `fk_turno`) VALUES ('94979433', 'Horwell', 'Murillo', 'horwellmv@gmail.com', '1');
