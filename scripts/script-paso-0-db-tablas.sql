CREATE DATABASE que_veo_hoy;

USE que_veo_hoy;

CREATE TABLE pelicula (
    id Int Not Null auto_increment,
    titulo varchar(100) Not Null,
    duracion smallint,
    director varchar(400),
    anio smallint,
    fecha_lanzamiento date,
    puntuacion tinyint,
    poster varchar(300),
    trama varchar(700),
    genero_id int,
    PRIMARY KEY (id),
    FOREIGN KEY (genero_id) REFERENCES genero(id)
    );

CREATE TABLE genero (
    id Int Not Null auto_increment,
    nombre varchar(30) Not Null,
    PRIMARY KEY (id)
    );
    
CREATE TABLE actor (
    id Int Not Null auto_increment,
    nombre varchar(30) Not Null,
    PRIMARY KEY (id)
    );
    
CREATE TABLE actor_pelicula (
    id Int Not Null auto_increment,
    actor_id int,
    pelicula_id int,
    PRIMARY KEY (id),
    FOREIGN KEY (actor_id) REFERENCES actor(id),
    FOREIGN KEY (pelicula_id) REFERENCES pelicula(id)
    );
    