SELECT
	CONVERT(round(min(PL.plano_valor),2), CHAR) AS faturamento_minimo,
	CONVERT(round(max(PL.plano_valor),2), CHAR) AS faturamento_maximo,
	CONVERT(round(avg(PL.plano_valor),2), CHAR) AS faturamento_medio,
	CONVERT(round(sum(PL.plano_valor),2), CHAR) AS faturamento_total

FROM
	SpotifyClone.usuario_tabela AS US

inner join SpotifyClone.plano_tabela AS PL ON PL.plano_id = US.plano_id
