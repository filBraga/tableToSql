SELECT 
	CA.cancoes as nome, 
    count(HI.cancoes_id) as reproducoes 

FROM  SpotifyClone.usuario_tabela AS US      

inner join SpotifyClone.historico_tabela AS HI ON HI.usuario_id = US.usuario_id 
inner join SpotifyClone.cancoes_tabela AS CA ON CA.cancoes_id = HI.cancoes_id
       

where  plano_id in (1,3)

group by nome
