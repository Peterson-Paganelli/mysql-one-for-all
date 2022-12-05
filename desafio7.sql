SELECT art.artista AS 'artista', 
alb.album AS 'album',
COUNT(seg.usuario_id) AS 'seguidores'
FROM SpotifyClone.Artistas AS art 
INNER JOIN SpotifyClone.Albuns AS alb
ON art.artista_id = alb.artista_id
INNER JOIN SpotifyClone.Seguindo AS seg
ON art.artista_id = seg.artista_id
GROUP BY art.artista, alb.album
ORDER BY seguidores DESC, artista ASC;