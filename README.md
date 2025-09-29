# SQL_Activities

Ejercicio 1: Usuarios con Préstamos y Edad
Muestra el nombre del usuario, su tipo de membresía y la cantidad de préstamos que ha realizado. Solo incluye usuarios que tengan membresía 'Premium' o 'Estudiante' y que tengan más de 25 años. Ordena por cantidad de préstamos descendente.

Ejercicio 2: Libros por Autor con Stock
Muestra el nombre del autor, la cantidad de libros que tiene y el stock total de todos sus libros. Solo incluye autores que tengan al menos 2 libros publicados. Ordena por stock total descendente.

Ejercicio 3: Préstamos con Estado Personalizado
Muestra el nombre del usuario, título del libro y un estado personalizado del préstamo usando CASE:
• Si FechaDevolucionReal existe: "Devuelto"
• Si Estado es 'Vencido': "Vencido"
• Si Estado es 'Activo': "En préstamo"
Solo incluye préstamos de febrero 2024 y ordena por nombre de usuario.

Ejercicio 4: Análisis de Libros con Disponibilidad
Muestra el género, la cantidad de libros por género y el precio promedio. Además, agrega una columna que diga:
• "Muy caro" si el precio promedio > $2500
• "Caro" si está entre $2000 y $2500
• "Accesible" si es menor a $2000
Solo incluye géneros que tengan más de 1 libro. Ordena por precio promedio descendente.

Ejercicio 5: Autores y sus Libros (incluyendo sin libros)
Muestra todos los autores con la cantidad de libros que tienen (incluso si es 0) y su nacionalidad. Agrega una columna "Productividad" que diga:
• "Muy productivo" si tiene 3 o más libros
• "Productivo" si tiene 1-2 libros
• "Sin publicaciones" si tiene 0 libros
Ordena por cantidad de libros descendente.

Ejercicio 6: Usuarios con y sin Préstamos por Tipo
Muestra todos los usuarios con su tipo de membresía y cantidad de préstamos (incluso 0). Solo incluye tipos de membresía 'Premium' y 'Básica'. Ordena primero por tipo de membresía y luego por cantidad de préstamos descendente.

Ejercicio 7: Análisis de Libros y Préstamos con RIGHT JOIN
Muestra todos los libros con la cantidad de veces que fueron prestados (incluso si nunca fueron prestados). Incluye el título del libro y su género. Ordena por cantidad de préstamos descendente

Ejercicio 8: Análisis por Género de Libro
Muestra el género del libro y la cantidad total de préstamos realizados por género. Solo incluye géneros de libros publicados después de 1960. Ordena por cantidad de préstamos descendente.

Ejercicio 9: Usuarios por Tipo de Membresía
Muestra el tipo de membresía y la cantidad de usuarios que han realizado préstamos por cada tipo. Solo incluye usuarios que hayan hecho al menos 2 préstamos. Ordena por cantidad descendente.

Ejercicio 10: Análisis de Préstamos por Mes
Muestra el mes de préstamo (como número) y la cantidad de préstamos realizados en cada mes. Solo incluye préstamos de 2024 con estado 'Activo' o 'Devuelto'. Ordena por mes.

Ejercicio 11: Comparación de Generaciones
Crea un reporte que muestre en una sola consulta:
1. Usuarios menores de 30 años con sus préstamos (mostrar: 'Jóvenes', cantidad)
2. Usuarios de 30 años o más con sus préstamos (mostrar: 'Adultos', cantidad) Ordena todo por cantidad de préstamos descendente.

Ejercicio 12: Estado de Devolución de Préstamos
Muestra el nombre del usuario, título del libro y si el préstamo fue devuelto "A tiempo" o "Con retraso". Solo incluye préstamos que ya fueron devueltos (tienen FechaDevolucionReal). Ordena por nombre de usuario.

Ejercicio 13: Usuarios con Información de Email
Muestra el nombre del usuario, su tipo de membresía y una columna que diga "Email registrado" si tiene email, o "Sin email" si el email es NULL. Ordena por tipo de membresía.

Ejercicio 14: Prueba de Integridad Referencial
Intenta eliminar el autor con ID = 1 (Gabriel García Márquez)
a) ¿Qué sucede? Anota el mensaje de error.
b) ¿Por qué no se puede eliminar este registro?
c) ¿Qué libros tiene este autor que impiden su eliminación?

Ejercicio 15: Modificación de Estructura para Borrado en Cascada
Ahora modifique las tablas para permitir borrado en cascada. Luego intente borrar nuevamente y observe que sucede.

Ejercicio 16: JOINS con Filtros de Fecha
Muestra los usuarios que tienen préstamos vencidos (fecha de devolución prevista < hoy y estado = 'Activo')

Ejercicio 17: Promedio de días de préstamo (con COALESCE)
Calcula el promedio de días entre préstamo y devolución real para todos los préstamos devueltos. Si no hay préstamos devueltos, mostrar 0 en lugar de NULL.
