SELECT COUNT(*) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.Usuarios AS users
INNER JOIN SpotifyClone.historico AS hist
ON users.usuario_id = hist.usuario_id
WHERE usuario LIKE 'Barbara%';