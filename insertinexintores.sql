INSERT INTO salasdecomputo (ID_sala, ubicacion, capacidad)
VALUES 
(1, 'Edificio Principal, Piso 2, Sala A', 50),
(2, 'Edificio Principal, Piso 2, Sala B', 40),
(3, 'Edificio Principal, Piso 2, Sala C', 35),
(4, 'Edificio Principal, Piso 2, Sala D', 30);
SELECT * FROM salasdecomputo;


INSERT INTO extintores(ID_extintor, ID_sala, ID_tipo_extintor, color, fecha_inicio, fecha_caducidad)
VALUES
(1, 1, 1, 'Rojo', '2023-01-01', '2026-01-01'),
(2, 2, 2, 'Amarillo', '2023-02-01', '2026-02-01');

SELECT * FROM  extintores;


INSERT INTO tipodeextintor (ID_tipo_extintor, nombre_Tipo_Extintor)
VALUES

(1, 'CO2 (Dióxido de carbono)'),
(2, 'Polvo Químico seco');

SELECT * FROM tipodeextintor;



INSERT INTO ID_color_extintor (ID_color_extintor, nombre_color)
VALUES
(1, 'Rojo'),
(2, 'Amarillo');

SELECT * FROM colordeextintor;


INSERT INTO historialmantenimiento (ID_mantenimiento, ID_extintor, fecha_mantenimiento, tipo_mantenimiento)
VALUES 
(1, 1, '2024-04-18', 'Mantenimiento preventivo');

SELECT * FROM historialmantenimiento;


INSERT INTO usuariosresponsables (ID_usuario, nombre, rol, informacion_Contacto)
VALUES
 (1, 'Juan Pérez', 'Técnico de mantenimiento', 'juan.perez@example.com');

SELECT *  FROM usuariosresponsables;





