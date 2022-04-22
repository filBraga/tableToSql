SELECT
	US.usuario,
    if(
		year(max(HI.historico_de_reproducoes)) < 2021,
        "Usuário inativo",
        "Usuário ativo"
	) AS condicao_usuario

FROM
	SpotifyClone.usuario_tabela AS US

inner join SpotifyClone.historico_tabela AS HI ON US.usuario_id = HI.usuario_id

GROUP BY usuario
ORDER BY usuario;
