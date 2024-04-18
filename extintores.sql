CREATE TABLE salasdecomputo (
    ID_sala INT PRIMARY KEY,
    ubicacion VARCHAR(255),
    capacidad INT
    
);


CREATE TABLE extintores (
    ID_extintor INT PRIMARY KEY,
    ID_sala INT,
    ID_tipo_extintor INT,
    color VARCHAR(50),
    fecha_inicio DATE,
    fecha_caducidad DATE,
    FOREIGN KEY (ID_sala) REFERENCES salasdecomputo(ID_sala),
    FOREIGN KEY (ID_tipo_extintor) REFERENCES tipodeextintor(ID_tipo_extintor)
);


CREATE TABLE tipodeextintor (
    ID_tipo_extintor INT PRIMARY KEY,
    nombre_tipo_extintor VARCHAR(100)
);


CREATE TABLE colordeextintor (
    ID_color_extintor INT PRIMARY KEY,
    nombre_color VARCHAR(50)
);


CREATE TABLE historialmantenimiento (
    ID_mantenimiento INT PRIMARY KEY,
    ID_extintor INT,
    fecha_mantenimiento DATE,
    tipo_mantenimiento VARCHAR(100),
    
    FOREIGN KEY (ID_Extintor) REFERENCES Extintores(ID_Extintor)
);


CREATE TABLE usuariosresponsables (
    ID_usuario INT PRIMARY KEY,
    nombre VARCHAR(100),
    rol VARCHAR(50),
    informacion_Contacto VARCHAR(255)
);