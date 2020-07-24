--PARTE II
USE Control_de_Libros_RG180141
/*a.Se desea mostrar los datos de los autores junto con los títulos de libros que han escrito.
Ordenarlos en forma descendente por el nombre del autor.*/
SELECT Autor.Nombres, Autor.Apellidos, Libro.Titulo FROM Autor 
INNER JOIN Autor_Libro ON Autor.Codigo = Autor_Libro.Cod_Autor 
INNER JOIN Libro ON Autor_Libro.Cod_Libro = Libro.Codigo ORDER BY Autor.Nombres DESC

--b.Se desea conocer todos los autores que tienen libros que han sido publicados por la editorial “Omega”.
SELECT Autor.Nombres FROM Autor INNER JOIN Autor_Libro ON Autor.Codigo = Autor_Libro.Cod_Autor
INNER JOIN Libro ON Autor_Libro.Cod_Libro = Libro.Codigo 
INNER JOIN Editorial ON Libro.Cod_editorial = Editorial.Codigo WHERE Editorial.Nombre='Omega'

--c. Mostrar cuántos ejemplares hay por cada libro. Titulo, ejemplar
SELECT Libro.Titulo, COUNT(Ejemplar.Estado) AS Ejemplares FROM Libro INNER JOIN Ejemplar ON Libro.Codigo = Ejemplar.Cod_Libro
WHERE Ejemplar.Estado = 'Disponible' GROUP BY Libro.Titulo

--d. Mostrar los títulos de los libros donde el estado sea “Prestado”.
SELECT Libro.Titulo FROM Libro INNER JOIN Ejemplar ON Libro.Codigo = Ejemplar.Cod_Libro
WHERE Ejemplar.Estado = 'Prestado'

--e. Se desea mostrar los libros que se han editados entre el 2000 y 2007. Ordenarlos enforma ascendente
SELECT Libro.Titulo FROM Libro WHERE Año_edicion BETWEEN 2000 AND 2007

--f. Mostrar cuántos libros que se han prestado y agruparlos por el estante
SELECT Ejemplar.Ubicacion, COUNT(Ejemplar.Ubicacion) AS Libros_prestados FROM Ejemplar WHERE Estado ='Prestado'
GROUP BY Ubicacion

--PARTE III
CREATE TABLE Autores_España(
Codigo varchar(5) NOT NULL,
Nombres varchar(40),
Apellidos varchar(40),
CONSTRAINT PK_Cod_Aut PRIMARY KEY(Codigo))

INSERT INTO Autores_España VALUES('AU01','Jose Pedro','Alvarado')
USE library
SELECT isbn, copy_no, on_loan, cover, translation, title FROM View_1 WHERE isbn = 1 OR isbn = 500 OR  isbn= 1000 ORDER BY isbn