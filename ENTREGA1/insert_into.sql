#INSERINDO DADOS DO SISTEMA NO BANCO


#INSERIRINDO USUARIOS: 

INSERT INTO usuario (login,senha,cpf,email) VALUES ('aroldovargas','123abc',14925798740,'aroldovargas@gmail.com'),
('alysongustavo','gusta2000',21425498740,'alyson_g10@hotmail.com'),
('brunomoreto','bruno123',14820849750,'brunomoreto@hotmail.com'),
('heitordias','dias987',24312387650,'heitordias@hotmail.com'),
('warlersonsales','w_sales19',12498245128,'warlesonsales@gmail.com'),
('moisesomena','987123moises',23654898780,'moises_2019@hotmail.com'),
('sergiovidigal','sergio777',14520895470,'vidigalsergio20@hotmail.com'),
('julianasilva','js1999',98520195773,'ju_silva@gmail.com'),
('amandanunes','112358',45621487440,'amandanunes@hotmail.com'),
('barbaragomes','barbara1997',43520875419,'barbara_g20190@hotmail.com');

#INSERINDO LINHAS DOS ONIBUS:

INSERT INTO onibus (id_onibus,num_linha,classificacao_linha,quant_crimes) VALUES (1,501,'B',6),
(2,860,'A',1),(3,503,'D',25),(3,525,'B',8),(4,507,'E',31),(6,516,'C',18),(7,831,'E',36),(8,606,'C',19),(9,510,'B',9),(10,505,'B',7);


#INSERINDO OS CRIMES:

INSERT INTO crimes (numero,data,hora,tipo_crime,sexo,idade,cidade,bairro,rua) VALUES (1,'2019/01/01','20:49','HOMICIDIO DOLOSO','M',27,'MUNIZ FREIRE','SOSSEGO','CORREGO DO SOSSEGO'),
(2,'2019/01/02','11:03','LATROCINIO','M',47,'LINHARES','NOVA ESPERANCA','RUA CACHOEIRAS'),
(3,'2019/01/04','20:03','HOMICIDIO DOLOSO','M',19,'VILA VELHA','GLORIA','RUA JOAO BONICENHA'),
(4,'2019/01/10','00:48','LATROCINIO','M',49,'SERRA','COLINA','RUA DA CONSOLACAO'),
(5,'2019/01/24','00:13','HOMICIDIO DOLOSO','F',36,'SERRA','SAO GERALDO','AV PRESIDENTE GETULIO VARGAS'),
(6,'2019/01/27','07:22','HOMICIDIO DOLOSO','M',22,'VITORIA','ITARARE','RUA MARINS DE ALVARINO'),
(7,'2019/01/30','08:10','HOMICIDIO DOLOSO','M',19,'CARIACICA','ALZIRA RAMOS','RUA DO TANQUE'),
(8,'2019/01/30','18:46','HOMICIDIO DOLOSO','M',17,'CARIACICA','PADRE GABRIEL','RUA QUILOMBO DOS PALMARES'),
(9,'2019/01/31','20:34','HOMICIDIO DOLOSO','M',40,'VILA VELHA','RESIDENCIAL JABAETE','RUA NAO CADASTRADA'),
(10,'2019/01/31','22:34','HOMICIDIO DOLOSO','M',22,'SERRA','SAO MARCOS II','RUA NAO CADASTRADA');

