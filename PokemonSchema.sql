DROP SCHEMA IF EXISTS Pokemon;
CREATE DATABASE Pokemon;
USE Pokemon;

-- Creación de la tabla 'Player'
CREATE TABLE Player (
    id_Player INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Nivel INT,
    Contrasena VARCHAR(255),
    XP BIGINT
);

-- Creación de la tabla 'Carta'
CREATE TABLE Carta (
    id_Carta INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Vida INT,
    Dano INT,
    Energia INT,
    Tipo VARCHAR(255)
);

-- Mazo
CREATE TABLE Mazo (
    id_Mazo INT AUTO_INCREMENT PRIMARY KEY,
    id_Player INT,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT,
    numeroCartas INT DEFAULT 0,
    FOREIGN KEY (id_Player) REFERENCES Player(id_Player)
);

-- Inventario
CREATE TABLE Inventario (
    idInventario INT AUTO_INCREMENT PRIMARY KEY,
    id_Player INT,
    id_Mazo INT,
    id_Carta INT,
    FOREIGN KEY (id_Player) REFERENCES Player(id_Player),
    FOREIGN KEY (id_Mazo) REFERENCES Mazo(id_Mazo),
    FOREIGN KEY (id_Carta) REFERENCES Carta(id_Carta)
);


-- Creación de la tabla 'CartaMano'
CREATE TABLE CartaMano (
    id_Mano INT PRIMARY KEY,
    id_Mazo INT,
    id_Player INT,
    FOREIGN KEY (id_Mazo) REFERENCES Mazo(id_Mazo),
    FOREIGN KEY (id_Player) REFERENCES Player(id_Player)
);

-- Creación de la tabla 'Partida'
CREATE TABLE Partida (
    id_Partida INT PRIMARY KEY,
    id_Player1 INT,
    id_Player2 INT,
    Date DATE,
    Duracion INT,
    Winner INT,
    FOREIGN KEY (id_Player1) REFERENCES Player(id_Player),
    FOREIGN KEY (id_Player2) REFERENCES Player(id_Player)
);

-- Creación de la tabla 'Turno'
CREATE TABLE Turno (
    id_Turno INT PRIMARY KEY,
    id_Partida INT,
    id_Player INT,
    num_Turno INT,
    Pokemon_usado VARCHAR(255),
    damage INT,
    used_Energy INT,
    FOREIGN KEY (id_Partida) REFERENCES Partida(id_Partida),
    FOREIGN KEY (id_Player) REFERENCES Player(id_Player)
);

-- Creación de la tabla 'CartaJugada'
CREATE TABLE CartaJugada (
    id_Played INT PRIMARY KEY,
    id_Partida INT,
    id_Carta INT,
    id_Turno INT,
    Actions TEXT,
    FOREIGN KEY (id_Partida) REFERENCES Partida(id_Partida),
    FOREIGN KEY (id_Carta) REFERENCES Carta(id_Carta),
    FOREIGN KEY (id_Turno) REFERENCES Turno(id_Turno)
);

-- Creación de la tabla 'Efecto'
CREATE TABLE Efecto (
    id_Efecto INT PRIMARY KEY,
    Tipo VARCHAR(255),
    Duracion INT,
    Descripcion TEXT
);

-- Creación de la tabla 'Trigger'
CREATE TABLE Triger (
    id_Trigger INT PRIMARY KEY,
    id_Efecto INT,
    id_Carta INT,
    condicion BOOL,
    FOREIGN KEY (id_Efecto) REFERENCES Efecto(id_Efecto),
    FOREIGN KEY (id_Carta) REFERENCES Carta(id_Carta)
);
