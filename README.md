# Curso de Bases de Datos II, Semestre 1, 2022

## Caso 1
Objetivo: Retomar lecciones aprendidas sobre diseño normalizado de base de datos relacional del curso anterior y poner en práctica “corner cases” relacionados a threading, performance, cache, pooling y orms.
A saber, Aseni es una plataforma social para el enriquecimiento de la democracia y la información relacionada a los planes de gobierno. Existen dos tipos de usuario, encargados de campaña y ciudadanos. 
Los encargados de campaña pueden hacer las siguientes acciones:

• Para el perfil del usuario, agregar un bio personal, una foto, bandera y nombre del partido. 

• Plan de gobierno, el plan de gobierno se compone de N acciones no mayores a 120 palabras. Para cada afirmación el usuario deberá cantón por cantón escribir un entregable específico de esa acción en ese cantón, especificar la fecha en que eso estará listo y el kpi “key performance indicator”, esto es el número entero que se quiere alcanzar de un ente abstracto. Pueden quedar cantones en blanco y podría ser que un cantón reciba K entregables. Por ejemplo:

o Asfaltado de la carretera barrio nuevo, 10/05/2023, 20, kilómetros (entregable, fecha, valor de kpi, ente del kpi)

o Apertura de startups de alta tecnología, 01/01/2023, 4, startups

Proceda por el momento a diseñar una base de datos en SQL Server para Aseni, solo tomando en cuenta  lo de arriba, posteriormente se extenderá el modelo en otro caso. Luego de eso proceda a llenar la data de tal forma que existan mínimo 4 partidos, 3 acciones de plan y para cada acción entre 3 a 7 entregables en cantones diferentes, esto último aleatoriamente.

## Puntos extra
Debo hacer un ejemplo programado donde se pueda ver como se meten objetos en una cache, como recuperarlas basados en la llave, como meter objetos que expiran y confirmar que expiran.
Si la cache tiene algun hook para cuando haya expired poder hacer un update del contenido mucho mejor.
