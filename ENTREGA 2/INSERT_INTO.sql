#INSERÇÃO NA TABELA TIPO_CRIME
INSERT INTO tipo_crime(descricao_crime) VALUES('HOMICÍDIO DOLOSO'),('LATROCÍNIO'),('LESÃO CORPORAL SEGUIDO DE MORTE');

#INSERÇÃO NA TABELA DESCRICAO
INSERT INTO descricao(textopadrao) VALUES('ALTAMENTE SEGURO'),('SEGURO'),('INTERMEDIÁRIO'),('PERIGOSO'),('ALTAMENTE PERIGOSO');

#INSERÇÃO NA TABELA CIDADES
#EXECUTAR O ARQUIVO cidades.py

#INSERÇÃO NA TABELA USUARIO
INSERT INTO usuario (nome,login,senha,cpf,email) VALUES ('aroldo vargas','aroldovargas','123abc','14925798740','aroldovargas@gmail.com'),('alyson gustavo','agustavo','gusta2000','21425498740','alyson_g10@hotmail.com'),
('warleson sales', 'wsales','w123','12587465210','warleson.sales@gmail.com'),('heitor dias','hdias','dias987','24312387650','heitordias@hotmail.com'),('moises omena','momena','987123moises','23654898780','moises_2019@hotmail.com'),
('sergio vidigal','svidigal','sergio777','14520895470','vidigalsergio20@hotmail.com'),('juliana silva','jsilva','js1999','98520195773','ju_silva@gmail.com'),('amanda nunes','anunes','112358','45621487440','amandanunes@hotmail.com'),
('barbara gomes','bgomes','barbara1997','43520875419','barbara_g2019@gmail.com'),('bruno moreto','bmoreto','bruno123','25013625741','brunomoreto@hotmail.com');

# INSERT TIPO_COMENTARIO 
INSERT INTO tipo_comentario (descricao_tipo) VALUES ('SISTEMA'),('RUA'),('LINHA');

# INSERT COMENTARIO 
insert into comentario (comentario_usuario,id_usuario,id_tipo_comentario) values ('Faltam serem incluídas as linhas de baldeação');
insert into comentario (id_usuario) values ('13','Incluír uma seção de ocorrências em tempo real');
insert into comentario (id, descricao_tipo) values ('14','Maior investimento nas linhas que fazem T.Cariacíca -> T.Vila Velha');
insert into comentario (id, descricao_tipo) values ('15','Incluír o Seletivo na lista de ônibus');

# INSERT SEXO
INSERT INTO sexo(genero) VALUES('M'),('F');

# INSERT CLASSIFICACAO
INSERT INTO classificacao (tipo,id_descricao) VALUES ('A','1'),('B','2'),('C','3'),('D','4'),('E','5');
