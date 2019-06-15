Select usuario.nome, comentario.comentario_usuario
	from usuario right join comentario
	on (comentario.id_usuario=usuario.id);
	
Select crime.id, tipo_crime.descricao_crime
	from crime left join tipo_crime
	on (crime.id_tipo_crime=tipo_crime.id);

Select numero_linha, comentario_usuario
	from linha left join comentario
	on (comentario.id_linha=linha.id);

Select  nome_rua, comentario_usuario
	from rua right join comentario
	on (comentario.id_rua=rua.id);

