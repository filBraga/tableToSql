SELECT
	US.usuario,
  COUNT(HI.cancoes_id) AS qtde_musicas_ouvidas,
	ROUND	(SUM(CA.duracao_segundos) / 60, 2) AS total_minutos
FROM
	SpotifyClone.usuario_tabela AS US
    
inner join SpotifyClone.historico_tabela AS HI ON US.usuario_id = HI.usuario_id
inner join SpotifyClone.cancoes_tabela AS CA ON HI.cancoes_id = CA.cancoes_id

GROUP BY usuario
ORDER BY usuario;
