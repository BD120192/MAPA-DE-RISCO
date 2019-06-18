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

# INSERT BAIRRO
#Seleciona o nome do bairro e o id da cidade em que o bairro esta inserido.
SELECT ci.id,cb.bairro FROM crimebase cb INNER JOIN cidade ci ON cb.cidade = ci.nome_cidade GROUP BY cb.bairro,cb.cidade,ci.id;

#Insere na tabela bairro o select que foi feito dos bairros com seus respectivos id das cidade onde o bairro esta
INSERT INTO bairro (nome_bairro,id_cidade) SELECT cb.bairro,ci.id FROM crimebase cb
INNER JOIN cidade ci ON cb.cidade = ci.nome_cidade
GROUP BY cb.bairro,ci.id;



# INSERT VITIMA
#Seleciona a idade e o id_sexo da vitimas.
SELECT cb.idade,se.id FROM crimebase cb INNER JOIN sexo se ON cb.sexo = se.genero GROUP BY cb.idade,se.id;

#Insere na tabela vitima o select com as idades e id_sexo das vitimas
INSERT INTO vitima (idade,id_sexo) SELECT cb.idade,se.id FROM crimebase cb
INNER JOIN sexo se ON cb.sexo = se.genero
GROUP BY cb.idade,se.id;



# INSERT INTO BAIRRO (nome_bairro,id_cidade) VALUES ('MANGUINHOS',70),('JACARAIPE',70),('GOIABEIRAS',70),('COBILANDIA',77),('PRAIA DA COSTA',77),('SANTA LUCIA',78),('ITAPUA',77),('SANTA HELENA',78),('MORADA DE LARANJEIRAS',70),('MARUIPE',78),('JUCUTUQUARA',98),('LARANJEIRAS',99);


INSERT INTO RUA (nome_rua,quantidade_crimes,id_classificacao,id_bairro,id_cidade) VALUES

('AV JERONIMO MONTEIRO','0','1','21','78'),('AV DES JOSE A M FEU ROSA','0','1','87','70'),('RODOVIA ES 010','0','87','1'),('RUA E','0','1','89','70'),
('RUA CARIOCA','0','1','44','70'),('BR 101','0','1','44','70'),('AV FERNANDO FERRARI','0','1','90','78'),('RUA DONA MARIA ROSA','0','1','37','78'),('AV MARUIPE','0','1','97','78'),('AV PAULINHO MULLER','0','1','98','78'),('AV VITORIA','0','1','98','78'),
('RUA HENRIQUE NOVAES','0','1','21','78'),('AV REPUBLICA','0','1','21','78'),('AV CLETO NUNES','0','1','21','78'),('AV MARCOS DE AZEVEDO','0','1','8','78'),('AV DUARTE LEMOS','0','1','8','78'),
('AV NAIR DE AZEVEDO SILVA','0','1','8','78'),('AV ATERRO DA CONDUSA','0','1','8','78'),('AV ALEXANDRE BUAIZ','0','1','27','78'),('PONTE FLORENTINO AVIDOS','0','1','27','78'),('AV ROBERT KENNEDY','0','1','37','78'),('RUA MANOEL GILSON DA SILVA','0','1','16','77'),
('PRAÇA DE SAO TORQUATO','0','1','16','77'),('AV GRAÇA ARANHA','0','1','16','77'),('RUA MAGNO COUTINHO','0','1','16','77'),('AV CARLOS LINDENBERG','1','1','61','77'),
('AV TRECY CORTELIETE','0','1','61','77'),('AV ANA MEROTTO STEFANON','0','1','91',',77'),('AV JOÃO FRANCISCO GONÇALVES','0','1','91','77'),('RUA SÃO LUIZ','0','1','92','77'),('RUA D','0','1','4','70'),('RUA SÃO DOMINGOS','0','1','26','70'),
('AV NOSSA SENHORA DA PENHA','0','1','93','78'),('AV.GETULIO VARGAS','1','1','65','77'),('AV ELIAS MIGUEL','0','1','65','77'),('RUA GODOFREDO SHNEIDER','0','1','36','77'),('AV LUCIANO DAS NEVES','0','1','92','77'),('RUA JAGUARIPE','0','1','94','77'),
('RUA HUMBERTO MARTINS DE PAULA','0','1','95','78'),('RUA ALAOR DE QUEIROS ARAUJO','0','1','95','78'),('RUA JOSE TEIXEIRA','0','1','95','78'),('RUA SÃO DOMINGOS','0','1','4','70'),('RUA D','0','1','4','70'),('RUA DOS SABIAS','0','1','4','70'),
('AV PAULO PEREIRA GOMES','0','1','96','70'),('TREVO DE LARANJEIRAS II','0','1','99','70'),('RUA A2','0','1','99','70'),('AV CIVIT','0','1','99','70'),('RODOVIA NORTE SUL','0','1','99','70');

# INSERT LINHA
insert into linha (id,numero_linha,id_classificacao) values ('1','501',4) ('2','516',4),('3','860',2);

# INSERT LINHA_PASSA_RUA

insert into linha_passa_rua (id_rua,id_linha) values insert into linha_passa_rua (id_rua,id_linha) values ('16','2'),('103','2'),('104','2'),('105','2'),('106','2'),('107','2'),('108','2'),('109','2'),('110','2'),('111','2'),('112','2'),
('113','2'),('114','2'),('115','2'),('116','2'),('117','2'),('118','2'),('119','2'),('120','2'),('121','2'),('122','2'),('123','2'),('124','2'),('125','2'),('126','2'),('127','2'),
('128','2'),('129','2'),('130','2'),('131','2'),('132','2'),('133','2'),('134','2'),('135','2'),('136','2'),('137','2'),('138','2'),('139','2'),('140','2'),('141','2'),('142','2'),('143','2'),
('144','1'),('145','1'),('146','1'),('147','1'),('148','1'),('149','1'),('150','1'),('151','3'),('152','3'),('153','3'),('154','3'),('155','3'),('156','3')































































'















	






