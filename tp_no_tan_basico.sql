-- PUNTO 1
/*
SELECT
	u.Nombre,
    u.TipoMembresía,
    count(p.ID) as prestamos
FROM
	usuarios as u inner join prestamos as p
    on p.UsuarioID = u.ID
WHERE
	u.TipoMembresía in ('Premium','Estudiante') and
	timestampdiff(year,u.FechaNacimiento,curdate()) >= 25
GROUP BY
	u.Nombre,
    u.TipoMembresía
ORDER BY 
	prestamos desc
*/

-- PUNTO 2 	
/*
SELECT 
	a.Nombre,
    count(l.ID) as cantidad_libros,
    sum(l.Stock) as stock_total
FROM
	libros as l inner join autores as a
    on l.AutorID = a.ID
group by
    a.Nombre 
having 
	cantidad_libros >= 2
order by
	stock_total desc 
*/

-- PUNTO 3
/*
SELECT 
	u.Nombre,
    l.Titulo,
    case
		when p.FechaDevolucionReal is not null then 'DEVUELTO'
        when p.Estado in ('Vencido') then 'VENCIDO'
        when p.Estado in ('Activo') then 'EN PRESAMO'
	end as Estado
FROM 
	usuarios as u join prestamos as p 
    on u.ID = p.UsuarioID join libros as l 
    on p.LibroID = l.ID
WHERE
    year(p.FechaPrestamo) = 2024 and month(p.FechaPrestamo) = 02
*/

-- PUNTO 4
/*
select 
	l.genero,
    count(l.id) as cantindad,
    avg(l.precio) as precio_promedio,
    case
		when avg(l.precio) > 2500 then 'muy caro'
        when avg(l.precio) <= 2500 and avg(l.precio) >= 2000 then 'caro'
        when avg(l.preico) < 2000 then 'Accesible'
	end as precio_subjetivo
from
	libros as l
group by
	l.genero
having 
	l.cantidad > 1
order by
	precio_promedio desc
*/

-- PUNTO 5
/*
SELECT
    a.Nombre,
    COUNT(l.AutorID) AS CantidadDeLibros,
    a.Nacionalidad,
    CASE
        WHEN COUNT(l.AutorID) >= 2 THEN 'Muy Productivo'
        WHEN COUNT(l.AutorID) = 0 THEN 'Sin Publicaciones'
        ELSE 'Productivo'
    END AS Productividad
FROM 
	Autores AS a LEFT JOIN Libros AS l
    ON a.ID = l.AutorID
GROUP BY 
	a.AutorID
ORDER BY 
	CantidadDeLibros DESC;
*/

-- PUNTO 6
/*
SELECT
    U.Nombre,
    U.TipoMembresia,
    COUNT(p.Prestamo_Id) AS CantidadPrestamos
FROM 
	Usuarios AS U LEFT JOIN Prestamos AS P
    ON U.Id = P.UsuarioId
WHERE 
	U.TipoMembresia IN ('Premium', 'Basico')
GROUP BY 
	U.Nombre, U.TipoMembresia
ORDER BY 
	CantidadPrestamos;
*/

-- PUNTO 7
/*
SELECT
    COUNT(P.FechaPrestamo) AS CantidadPrestamos,
    L.Titulo,
    L.Genero
FROM 
	Prestamos AS P RIGHT JOIN Libros AS L
    ON P.LibroID = L.ID
GROUP BY 
	L.Titulo, 
    L.Genero
ORDER BY 
	CantidadPrestamos DESC;
*/

-- punto 8 
/*
SELECT 
	count(p.LibroID) as cantidad_vendida,
    l.Genero,
    l.Stock
FROM
	libros AS l INNER JOIN prestamos AS p
    ON p.LibroID = l.ID
WHERE
	l.FechaPublicacion > 1960
GROUP BY
	l.Genero,
    l.Stock
ORDER BY
	cantidad_vendida DESC
*/

-- puno 9 
/*
SELECT
    U.TipoMembresía AS Membresía,
    COUNT(U.ID) AS CantUsuarios
FROM 
	Usuarios AS U	INNER JOIN Prestamos AS P
    ON U.ID = P.UsuarioID
GROUP BY 
	U.TipoMembresía
HAVING 
	CantUsuarios >= 2
ORDER BY 
	CantUsuarios DESC;
*/

-- punto 10 
/*
SELECT
    MONTH(FechaPrestamo) AS MesPrestamo,
    COUNT(*) AS CantPrestamosXMes2024
FROM 
	Prestamos
WHERE 
	YEAR(FechaPrestamo) = 2024
	AND (Estado = 'Activo' OR Estado = 'Devuelto')
GROUP BY 
	MesPrestamo
ORDER BY 
	MesPrestamo;
*/

-- punto 11 
/*
SELECT
    CASE
        WHEN TIMESTAMPDIFF(YEAR, U.FechaNacimiento, CURDATE()) < 30 THEN 'Jovenes'
        ELSE 'Adultos'
    END AS Categoria_Edad,
    COUNT(P.ID) AS Cantidad_de_Prestamos
FROM 
	Usuarios AS U INNER JOIN Prestamos AS P
    ON P.UsuarioID = U.ID
GROUP BY 
	Categoria_Edad
ORDER BY 
	Cantidad_de_Prestamos DESC;
*/

-- punto 12
/*
SELECT
    U.Nombre,
    L.Titulo AS Libro,
    IF(FechaDevolucionReal != 'null', 'a tiempo', 'Con retraso') AS Prestamo
FROM 
	Usuarios AS U INNER JOIN Prestamos AS P
    ON U.ID = P.UsuarioID INNER JOIN Libros AS L
    ON P.LibroID = L.ID
ORDER BY 
	U.Nombre;
*/

-- punto 13
/*
SELECT
    U.Nombre,
    U.TipoMembresia,
    IFNULL(U.Email, 'sin email') AS Email
FROM 
	Usuarios AS U
ORDER BY 
	U.TipoMembresia;
*/

-- PUNTO 16
/*
select 
	u.Nombre,
    l.Titulo,
    p.FechaDevolucionPrevista
from
	usuarios as u join prestamos as p
    on u.ID = p.UsuarioID join libros as l
    p.LibroID = l.ID
where
	p.FechaDevolucionPrevista < curdate() and
    p.Estado in ('Activo')
*/    

