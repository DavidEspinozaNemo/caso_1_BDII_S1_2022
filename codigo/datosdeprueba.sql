-- insertar datos
-- se necesita: 4 partidos con un plan, 3 acciones de plan, 
--              3 a 7 entregables en cantones diferentes.

-- Tablas dependientes
INSERT INTO type_user (nametype, descriptiontype)
VALUES ('Encargado de Campaña','Son las personas que administran la campaña politica.'),
('Ciudadano','Son las personas que estan interesados en el plan de gobierno.');

INSERT INTO province (nameprovince) 
VALUES ('San José'),('Alajuela'),('Cartago'),
('Heredia'),('Guanacaste'),('Puntarenas'),('Limón');

INSERT INTO party (nameparty, registdate, urlflag, urllogo) 
VALUES ('Partido Unión por el Mañana','2020-05-18','https://docs.mycompania.com/example-bandera','https://docs.mycompania.com/example-logo'),
('Partido Cofradia Este','2020-06-20','https://docs.mycompania.com/example-bandera','https://docs.mycompania.com/example-logo'),
('Partido Liveración Independentista','2020-12-14','https://docs.mycompania.com/example-bandera','https://docs.mycompania.com/example-logo'),
('Partido Sol Naciente','2020-09-17','https://docs.mycompania.com/example-bandera','https://docs.mycompania.com/example-logo');

-- Tablas independientes
INSERT INTO userr (nameuser, lastname, urlimage, registdate, typeuser) 
VALUES ('Andres', 'Soto Valverde', 'https://docs.mycompania.com/example-perfil', '2021-02-06', 1),
('David', 'Albarado Fanito', 'https://docs.mycompania.com/example-perfil', '2021-02-16', 1),
('Daniel', 'Salazar Montenegro', 'https://docs.mycompania.com/example-perfil', '2021-02-20', 1),
('Andres', 'Sotomonte Lopez', 'https://docs.mycompania.com/example-perfil', '2021-02-09', 1);

INSERT INTO password_user (iduser, passworduser)
VALUES (1,'1234'),(2,'5678'),(3,'9123'),(4,'4567');

INSERT INTO government_plan (title, descriptiongov, idparty, initialdate, finishdate)
VALUES ('Plan por la union del mañana', 'Este plan trata de...', 1, '2022-01-10', '2026-01-10'),
('Plan de la cofradia este', 'Este plan trata de...', 2, '2022-01-10', '2026-01-10'),
('Plan independentista liveral', 'Este plan trata de...', 3, '2022-01-10', '2026-01-10'),
('Plan por la salida del sol naciente', 'Este plan trata de...', 4, '2022-01-10', '2026-01-10');

INSERT INTO action_gov (idgovplan, idprovince, deliverable_description, finishdate, kpi_value, kpi_entity)
VALUES (1,1,'Asfaltar calle 20 por baches', '2023-07-10','23', 'kilomentros'),
(1,3,'Asfaltar calle 13 por baches', '2024-02-11','65', 'metros'),
(1,5,'Asfaltar calle 76 por baches', '2023-03-12','32', 'metros'),
(1,2,'Asfaltar calle 93 por baches', '2024-02-13','63', 'kilomentros'),
(1,7,'Asfaltar calle 56 por baches', '2023-05-14','87', 'metros'),
(1,4,'Asfaltar calle 34 por baches', '2024-07-15','12', 'metros'),
(1,6,'Asfaltar calle 67 por baches', '2023-11-16','34', 'metros'),
(2,4,'Asfaltar calle 28 por baches', '2024-10-17','76', 'metros'),
(2,2,'Asfaltar calle 25 por baches', '2023-03-18','91', 'kilomentros'),
(2,5,'Asfaltar calle 32 por baches', '2024-02-20','10', 'metros'),
(2,5,'Asfaltar calle 67 por baches', '2023-07-21','20', 'metros'),
(3,1,'Asfaltar calle 01 por baches', '2024-03-22','54', 'metros'),
(3,2,'Asfaltar calle 09 por baches', '2023-07-01','72', 'kilomentros'),
(3,3,'Asfaltar calle 10 por baches', '2024-09-02','80', 'metros'),
(3,6,'Asfaltar calle 32 por baches', '2023-04-05','12', 'kilomentros'),
(3,7,'Asfaltar calle 45 por baches', '2025-03-14','41', 'metros'),
(4,3,'Asfaltar calle 26 por baches', '2024-07-07','54', 'metros'),
(4,1,'Asfaltar calle 34 por baches', '2025-05-13','76', 'kilomentros'),
(4,2,'Asfaltar calle 12 por baches', '2024-10-09','84', 'kilomentros'),
(4,7,'Asfaltar calle 11 por baches', '2025-11-12','23', 'metros'),
(4,4,'Asfaltar calle 22 por baches', '2024-05-13','54', 'metros'),
(4,5,'Asfaltar calle 33 por baches', '2025-07-14','87', 'kilomentros');

-- Tablas de transición
INSERT INTO party_manager (iduser, idparty, active) 
VALUES (1,2,1),(2,3,1),(3,4,1),(4,1,1);