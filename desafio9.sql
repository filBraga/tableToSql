SELECT
	count(US.usuario) as quantidade_musicas_no_historico

FROM
	SpotifyClone.historico_tabela AS HI
    
inner join SpotifyClone.usuario_tabela AS US ON HI.usuario_id = US.usuario_id
    
where
	US.usuario = 'Bill'

