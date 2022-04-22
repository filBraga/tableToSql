SELECT
	AR.artista as artista,
	AL.album as album,
  count(SE.artista_id) as seguidores

FROM
	SpotifyClone.artista_tabela AS AR

inner join SpotifyClone.album_tabela AS AL ON AL.artista_id = AR.artista_id
inner join SpotifyClone.seguindo_tabela AS SE ON SE.artista_id = AR.artista_id

group by AL.album_id
order by seguidores desc, artista, album