SELECT cancoes.cancao AS cancao,
COUNT(historico.historico_de_reproducoes) AS reproducoes 
FROM SpotifyClone.historico AS historico
INNER JOIN SpotifyClone.cancoes AS cancoes
ON historico.historico_de_reproducoes = cancoes.cancao_id
GROUP BY cancao
HAVING COUNT(cancao) > 2
ORDER BY reproducoes DESC, cancao ASC;