SELECT art.artista AS 'artista', 
alb.album AS 'album'
FROM SpotifyClone.Artistas AS art
INNER JOIN SpotifyClone.Albuns AS alb
ON art.artista_id = alb.artista_id
WHERE artista LIKE 'Elis%'
ORDER BY album;