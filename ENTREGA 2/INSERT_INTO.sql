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


#INSERT RUA, AS RUAS NÃO TEM INSERIDAS.
INSERT INTO rua (nome_rua,id_classificacao) values ('AV DES JOSE A M FEU ROSA',2),('RODOVIA ES 010',2),('RUA E',2),
('RUA CARIOCA',2),('BR 101',2),('AV FERNANDO FERRARI',2),('RUA DONA MARIA ROSA',2),('AV MARUIPE',2),('AV PAULINHO MULLER',2),('AV VITORIA',2),
('RUA HENRIQUE NOVAES',2),('AV JERONIMO MONTEIRO',2),('AV REPUBLICA',2),('AV CLETO NUNES',2),('AV MARCOS DE AZEVEDO',2),('AV DUARTE LEMOS',2),
('AV NAIR DE AZEVEDO SILVA',2),('AV ATERRO DA CONDUSA',2),('AV ALEXANDRE BUAIZ',2),('PONTE FLORENTINO AVIDOS',2),('AV ROBERT KENNEDY',2),
('RUA MANOEL GILSON DA SILVA',2),('PRAÇA DE SAO TORQUATO',2),('AV GRAÇA ARANHA',2),('RUA MAGNO COUTINHO',2),('RODOVIA CARLOS LINDENBERG',2),
('AV TRECY CORTELIETE',2),('AV ANA MEROTTO STEFANON',2),('AV JOÃO FRANCISCO GONÇALVES',2),('RUA SÃO LUIZ',2),('RUA D',2),('RUA SÃO DOMINGOS',2),
('AV NOSSA SENHORA DA PENHA',2),('AV.GETULIO VARGAS',2),('AV ELIAS MIGUEL',2),('RUA GODOFREDO SHNEIDER',2),('AV LUCIANO DAS NEVES',2),('RUA JAGUARIPE',2),
('RUA HUMBERTO MARTINS DE PAULA',2),('RUA ALAOR DE QUEIRÓS ARAUJO',2),('RUA JOSE TEIXEIRA',2),('RUA SÃO DOMINGOS',2),('RUA D',2),('RUA DOS SABIAS',2),
('AV.PAULO PEREIRA GOMES',2),('TREVO DE LARANJEIRAS II',2),('RUA A2',2),('AV CIVIT',2),('RODOVIA NORTE SUL',2); 

# INSERT LINHA
insert into linha (id,numero_linha,id_classificacao) values ('1','501',4) ('2','516',4),('3','860',2);

# INSERT LINHA_PASSA_RUA

insert into linha_passa_rua (id_rua,id_linha) values ('106','2'),('107','2'),('108','2'),('16','2'),('109','2'),('110','2'),('111','2'),('112','2'),('113','2'),('114','2'),('115','2'),
('116','2'),('117','2'),('118','2'),('119','2'),('120','2'),('121','2'),('122','2'),('123','2'),('124','2'),('125','2'),('126','2'),('127','2'),('128','2'),('129','2'),('130','2'),
('130','2'),('131','2'),('132','2'),('133','2'),('134','2'),('135','2'),('135','2'),('136','2'),('137','2'),('138','2'),('139','2'),('140','2'),('141','2'),('142','2'),('143','2'),('144','2'),
('145','1'),('146','1'),('147','1'),('148','1'),('149','1'),('150','1'),('151','1'),('152','3'),('153','3'),('154','3'),('155','3'),('156','3'),('157','3')
