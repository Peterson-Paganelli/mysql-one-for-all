SELECT COUNT(*) AS cancoes,
(SELECT COUNT(artista) FROM SpotifyClone.Artistas) AS artistas,
(SELECT COUNT(album) FROM SpotifyClone.Albuns) AS albuns
FROM SpotifyClone.Usuarios;