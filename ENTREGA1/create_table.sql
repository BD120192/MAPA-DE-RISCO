#ARQUIVO DESTINADO A CRIAÇÃO DE TODAS AS TABELAS DO SISTEMA

CREATE TABLE usuario(login VARCHAR(30),senha VARCHAR(15),cpf VARCHAR(11),email VARCHAR(30));

CREATE TABLE onibus(id_onibus INT,num_linha INT,classificacao_linha CHAR(1),quant_crimes INT);

CREATE TABLE comentarios(id_comentario INT,nome_usuario VARCHAR(200),tipo_comentario VARCHAR(20),descricao VARCHAR(299),data_comentario DATE);

CREATE TABLE rua(id_rua INT,nome_rua VARCHAR(200),bairro VARCHAR(50),cidade VARCHAR(50),classificacao_rua CHAR(1),quant_crimes INT);

CREATE TABLE itinerario(id_onibus INT,num_linha INT,id_rua INT,nome_rua VARCHAR(200));

CREATE TABLE crimes(numero INT,data DATE,hora TIME,tipo_crime VARCHAR(50),sexo CHAR(1),idade INT,cidade VARCHAR(50),bairro VARCHAR(50),nome_rua VARCHAR(200));