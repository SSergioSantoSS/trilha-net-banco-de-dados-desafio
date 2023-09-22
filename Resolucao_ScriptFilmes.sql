--1
SELECT nome, ano 
FROM filmes

--2

SELECT nome, ano 
FROM filmes 
ORDER BY ano ASC

--3

SELECT nome, ano, duracao
FROM filmes
WHERE nome = 'De Volta para o Futuro'

--4

SELECT nome, ano, duracao
FROM filmes
WHERE ano = 1997

--5

SELECT nome, ano, duracao
FROM filmes
WHERE ano > 2000

--6

SELECT nome, ano, duracao
FROM filmes
WHERE duracao > 100 and duracao < 150
ORDER BY duracao ASC


--7

SELECT ano, COUNT(*) AS quantidade
FROM filmes
GROUP BY ano
ORDER BY quantidade	 DESC;


--8

SELECT id, PrimeiroNome, UltimoNome, genero
FROM atores
WHERE genero = 'M'


--9

SELECT id, PrimeiroNome, UltimoNome, genero
FROM atores
WHERE genero = 'F'
ORDER BY PrimeiroNome

--10

SELECT F.nome AS Nome, G.genero AS Genero
FROM FilmesGenero FG
INNER JOIN filmes F ON FG.idfilme = F.id
INNER JOIN generos G ON FG.idgenero = G.id

--11

SELECT F.nome AS Nome, G.genero AS Genero
FROM FilmesGenero FG
INNER JOIN filmes F ON FG.idfilme = F.id
INNER JOIN generos G ON FG.idgenero = G.id
WHERE genero = 'Mist rio'

--12

SELECT 
    F.nome AS NomeDoFilme,
    A.PrimeiroNome,
    A.UltimoNome,
    PF.Papel
FROM filmes F
INNER JOIN ElencoFilme PF ON F.id = PF.idfilme
INNER JOIN atores A ON PF.idator = A.id;
