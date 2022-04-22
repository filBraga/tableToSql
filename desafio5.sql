SELECT
	CA.cancoes as cancao,
	count(HI.historico_de_reproducoes) AS reproducoes

FROM
	SpotifyClone.cancoes_tabela AS CA

inner join SpotifyClone.historico_tabela AS HI ON CA.cancoes_id = HI.cancoes_id

GROUP BY cancoes
ORDER BY reproducoes DESC, CA.cancoes
limit 2;
