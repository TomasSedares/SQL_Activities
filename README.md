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


TRANSLATED VERSION

# SQL_Activities

Exercise 1: Users with Loans and Age
Display the user's name, membership type, and the number of loans they have taken out. Include only users with 'Premium' or 'Student' membership who are over 25 years old. Sort by the number of loans in descending order.

Exercise 2: Books by Author with Stock
Display the author's name, the number of books they have, and the total stock of all their books. Include only authors who have published at least 2 books. Sort by total stock in descending order.

Exercise 3: Loans with Custom Status
Display the user's name, book title, and a custom loan status using CASE:
• If ActualReturnDate exists: "Returned"
• If Status is 'Overdue': "Overdue"
• If Status is 'Active': "On loan"
Include only loans from February 2024 and sort by user name.

Exercise 4: Book Analysis with Availability
Display the genre, the number of books per genre, and the average price. Additionally, add a column that states:
• "Very expensive" if the average price > $2500
• "Expensive" if it is between $2000 and $2500
• "Affordable" if it is less than $2000
Include only genres that have more than 1 book. Sort by average price in descending order.

Exercise 5: Authors and their Books (including those without books)
Display all authors along with the number of books they have (even if it is 0) and their nationality. Add a "Productivity" column that states:
• "Very productive" if they have 3 or more books
• "Productive" if they have 1-2 books
• "No publications" if they have 0 books
Sort by the number of books in descending order. Exercise 6: Users with and without Loans by Type
Display all users along with their membership type and loan count (including zero). Include only 'Premium' and 'Basic' membership types. Sort first by membership type and then by loan count in descending order.

Exercise 7: Book and Loan Analysis using RIGHT JOIN
Display all books along with the number of times they were borrowed (including those never borrowed). Include the book title and genre. Sort by loan count in descending order.

Exercise 8: Analysis by Book Genre
Display the book genre and the total number of loans made for that genre. Include only genres of books published after 1960. Sort by loan count in descending order.

Exercise 9: Users by Membership Type
Display the membership type and the number of users who have taken out loans for each type. Include only users who have made at least two loans. Sort by count in descending order.

Exercise 10: Loan Analysis by Month
Display the loan month (as a number) and the number of loans made in each month. Include only loans from 2024 with a status of 'Active' or 'Returned'. Sort by month.

Exercise 11: Generation Comparison
Create a report showing the following in a single query:
1. Users under 30 years old and their loans (display: 'Young', count)
2. Users aged 30 or older and their loans (display: 'Adults', count) Sort the results by loan count in descending order.

Exercise 12: Loan Return Status
Display the user's name, the book title, and whether the loan was returned "On time" or "Late". Include only loans that have already been returned (those with an `ActualReturnDate`). Sort by username.

Exercise 13: Users with Email Information
Display the user's name, membership type, and a column labeled "Email registered" if they have an email address, or "No email" if the email is NULL. Sort by membership type.

Exercise 14: Referential Integrity Test
Attempt to delete the author with ID = 1 (Gabriel García Márquez).
a) What happens? Note the error message.
b) Why cannot this record be deleted?
c) Which books by this author prevent the deletion?

Exercise 15: Modifying Structure for Cascading Deletes
Now modify the tables to allow cascading deletes. Then attempt to delete again and observe what happens.

Exercise 16: JOINS with Date Filters
Display users who have overdue loans (scheduled return date < today and status = 'Active').

Exercise 17: Average Loan Duration (using COALESCE)
Calculate the average number of days between the loan date and the actual return date for all returned loans. If there are no returned loans, display 0 instead of NULL.
