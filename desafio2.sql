SELECT
	COUNT(DISTINCT ca.cancoes_id) AS cancoes,
	COUNT(DISTINCT ar.artista_id) AS artistas,
    COUNT(DISTINCT al.album) as albuns
FROM SpotifyClone.cancoes_tabela as ca
INNER JOIN SpotifyClone.artista_tabela AS ar
ON ca.artista_id = ar.artista_id
INNER JOIN SpotifyClone.album_tabela AS al
ON ca.artista_id = al.artista_id;