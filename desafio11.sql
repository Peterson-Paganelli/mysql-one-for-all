SELECT can.cancao AS 'nome_musica',
CASE
WHEN can.cancao LIKE '%Bard%' THEN REPLACE(can.cancao, 'Bard', 'QA')
WHEN can.cancao LIKE '%Amar%' THEN REPLACE(can.cancao, 'Amar', 'Code Review')
WHEN can.cancao LIKE '%Pais%' THEN REPLACE(can.cancao, 'Pais', 'Pull Requests')
WHEN can.cancao LIKE '%SOUL%' THEN REPLACE(can.cancao, 'SOUL', 'CODE')
WHEN can.cancao LIKE '%SUPERSTAR%' THEN REPLACE(can.cancao, 'SUPERSTAR', 'SUPERDEV')
END AS 'novo_nome'
FROM SpotifyClone.cancoes AS can
WHERE can.cancao IN ('The Bard’s Song', 
'O Medo de Amar é o Medo de Ser Livre', 
'Como nossos pais', 
'BREAK MY SOUL', 
'ALIEN SUPERSTAR')
ORDER BY novo_nome DESC;