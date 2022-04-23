SELECT
	AR.artista as artista,
	AL.album as album

FROM
	SpotifyClone.artista_tabela AS AR
    
    inner join SpotifyClone.album_tabela AS AL ON AL.artista_id = AR.artista_id

where
	AR.artista = 'Walter Phoenix'

group by AL.album_id
order by artista desc