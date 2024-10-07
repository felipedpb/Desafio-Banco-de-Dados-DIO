-- 1 
SELECT 
	Nome, Ano 
	FROM Filmes

-- 2 .

SELECT 
	Nome, Ano
	FROM Filmes
	ORDER BY Ano

-- 3 .

SELECT * FROM Filmes
WHERE Nome LIKE 'De V%'

-- 4 .

SELECT * FROM Filmes
WHERE Ano = '1997'

-- 5 .

SELECT * FROM Filmes
WHERE Ano > 2000

-- 6

SELECT * FROM Filmes
WHERE Duracao > 100  AND Duracao < 150
ORDER BY Duracao ASC

-- 7

SELECT 
	Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8 .

SELECT PrimeiroNome, UltimoNome, Genero 
FROM Atores
WHERE Genero = 'M'

-- 9 .

SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10 . 

SELECT 
	Nome, Genero
FROM 
	FilmesGenero
INNER JOIN Filmes ON Filmes.Id = IdFilme
INNER JOIN Generos ON Generos.Id = IdGenero

-- 11 .

SELECT 
	Nome, Genero
FROM 
	FilmesGenero
INNER JOIN Filmes ON Filmes.Id = IdFilme
INNER JOIN Generos ON Generos.Id = IdGenero
WHERE Genero = 'Mistério'

-- 12 .

SELECT 
	Nome, PrimeiroNome, UltimoNome, Papel
FROM ElencoFilme
INNER JOIN Atores ON Atores.Id = IdAtor
INNER JOIN Filmes ON Filmes.Id = IdFilme