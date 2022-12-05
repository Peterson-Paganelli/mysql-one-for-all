SELECT DISTINCT usuario.usuario AS usuario,
COUNT(historico.historico_de_reproducoes) AS qt_de_musicas_ouvidas,
ROUND(SUM(cancoes.duracao_segundos / 60), 2) AS total_minutos
FROM SpotifyClone.historico AS historico
INNER JOIN SpotifyClone.cancoes AS cancoes
ON cancoes.cancao_id = historico.historico_de_reproducoes
INNER JOIN SpotifyClone.Usuarios AS usuario
ON historico.usuario_id =  usuario.usuario_id
GROUP BY usuario.usuario_id
ORDER BY usuario.usuario;