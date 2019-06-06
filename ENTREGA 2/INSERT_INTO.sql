#INSERÇÃO NA TABELA TIPO_CRIME
INSERT INTO tipo_crime(descricao_crime) VALUES('HOMICÍDIO DOLOSO'),('LATROCÍNIO'),('LESÃO CORPORAL SEGUIDO DE MORTE');

#INSERÇÃO NA TABELA DESCRICAO
INSERT INTO descricao(textopadrao) VALUES('ALTAMENTE SEGURO'),('SEGURO'),('INTERMEDIÁRIO'),('PERIGOSO'),('ALTAMENTE PERIGOSO');

#INSERÇÃO NA TABELA CIDADES
#EXECUTAR O ARQUIVO cidades.py

#INSERÇÃO NA TABELA USUARIO
insert into usuario (id,nome,login,senha,cpf,email) values ('1155','aroldo vargas','aroldovargas','123abc','14925798740','aroldovargas@gmail.com');
insert into usuario (id,nome,login,senha,cpf,email) values ('1166','alyson gustavo','agustavo','gusta2000','21425498740','alyson_g10@hotmail.com')
insert into usuario (id,nome,login,senha,cpf,email) values ('1177','warleson sales', 'wsales','w123','12587465210','warleson.sales@gmail.com');
insert into usuario (id,nome,login,senha,cpf,email) values ('1188','heitor dias','hdias','dias987','24312387650','heitordias@hotmail.com');
insert into usuario (id,nome,login,senha,cpf,email) values ('1200','moises omena','momena','987123moises','23654898780','moises_2019@hotmail.com');
insert into usuario (id,nome,login,senha,cpf,email) values ('1211','sergio vidigal','svidigal','sergio777','14520895470','vidigalsergio20@hotmail.com');
insert into usuario (id,nome,login,senha,cpf,email) values ('1222','juliana silva','jsilva','js1999','98520195773','ju_silva@gmail.com');
insert into usuario (id,nome,login,senha,cpf,email) values ('1233','amanda nunes','anunes','112358','45621487440','amandanunes@hotmail.com');
insert into usuario (id,nome,login,senha,cpf,email) values ('1244','barbara gomes','bgomes','barbara1997','43520875419','barbara_g2019@gmail.com');
insert into usuario (id,nome,login,senha,cpf,email) values ('1255','bruno moreto','bmoreto','bruno123','25013625741','brunomoreto@hotmail.com');

                                                                                                                                                        
  # INSERT TIPO_COMENTARIO 

insert into tipo_comentario (id, descricao_tipo) values ('12','Faltam serem incluídas as linhas de baldeação');
insert into tipo_comentario (id, descricao_tipo) values ('13','Incluír uma seção de ocorrências em tempo real');
insert into tipo_comentario (id, descricao_tipo) values ('14','Maior investimento nas linhas que fazem T.Cariacíca -> T.Vila Velha');
insert into tipo_comentario (id, descricao_tipo) values ('15','Incluír o Seletivo na lista de ônibus');

# INSERT SEXO

insert into sexo (id, genero) values ('1001','F');
insert into sexo (id, genero) values ('1002','M');
                                                 
insert into classificacao (id,tipo,id_descricao) values ('2001','A','1');
insert into classificacao (id,tipo,id_descricao) values ('2002','B','2');
insert into classificacao (id,tipo,id_descricao) values ('2003','C','3');
insert into classificacao (id,tipo,id_descricao) values ('2004','D','4');
insert into classificacao (id,tipo,id_descricao) values ('2005','E','5');