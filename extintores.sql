CREATE TABLE SalasDeComputo (
    ID_Sala INT PRIMARY KEY,
    Ubicacion VARCHAR(255),
    Capacidad INT,
    Descripcion TEXT
);


CREATE TABLE Extintores (
    ID_Extintor INT PRIMARY KEY,
    ID_Sala INT,
    ID_Tipo_Extintor INT,
    Color VARCHAR(50),
    Fecha_Inicio DATE,
    Fecha_Caducidad DATE,
    FOREIGN KEY (ID_Sala) REFERENCES SalasDeComputo(ID_Sala),
    FOREIGN KEY (ID_Tipo_Extintor) REFERENCES TipoDeExtintor(ID_Tipo_Extintor)
);


CREATE TABLE TipoDeExtintor (
    ID_Tipo_Extintor INT PRIMARY KEY,
    Nombre_Tipo_Extintor VARCHAR(100)
);


CREATE TABLE ColorDeExtintor (
    ID_Color_Extintor INT PRIMARY KEY,
    Nombre_Color VARCHAR(50)

CREATE TABLE UbicacionExtintor (
    ID_Ubicacion INT PRIMARY KEY,
    ID_Extintor INT,
    Piso INT,
    Seccion VARCHAR(50),
    Numero_Serie VARCHAR(100),
    Otros_Detalles_Ubicacion TEXT,
    FOREIGN KEY (ID_Extintor) REFERENCES Extintores(ID_Extintor)
);


CREATE TABLE HistorialMantenimiento (
    ID_Mantenimiento INT PRIMARY KEY,
    ID_Extintor INT,
    Fecha_Mantenimiento DATE,
    Tipo_Mantenimiento VARCHAR(100),
    Detalles_Mantenimiento TEXT,
    FOREIGN KEY (ID_Extintor) REFERENCES Extintores(ID_Extintor)
);


CREATE TABLE UsuariosResponsables (
    ID_Usuario INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Rol VARCHAR(50),
    Informacion_Contacto VARCHAR(255)
);