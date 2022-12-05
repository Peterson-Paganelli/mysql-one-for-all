SELECT DISTINCT Usuarios.usuario AS usuario,
	IF(MAX(historico.data_reproducao) >= '2021-01-01', 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.historico AS historico
INNER JOIN SpotifyClone.Usuarios AS Usuarios
ON historico.usuario_id = Usuarios.usuario_id
GROUP BY usuario
ORDER BY usuario;