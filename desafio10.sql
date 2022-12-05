SELECT can.cancao AS 'nome', 
COUNT(hist.historico_de_reproducoes) AS 'reproducoes' 
FROM SpotifyClone.Usuarios AS users
INNER JOIN SpotifyClone.Planos AS plans
ON users.plano_id = plans.plano_id
INNER JOIN SpotifyClone.historico AS hist
ON users.usuario_id = hist.usuario_id
INNER JOIN SpotifyClone.cancoes AS can
ON hist.historico_de_reproducoes = can.cancao_id
WHERE plans.plano_id = 1 OR plans.plano_id = 2
GROUP BY nome
ORDER BY nome;