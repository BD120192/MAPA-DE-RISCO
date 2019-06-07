# As tabelas devem ser criadas nessa sequencia, para que seja possivel criar as chaves estrangeiras e os relacionamentos.


#CRIAÇÃO DA TABELA USUARIO
CREATE TABLE usuario(id serial NOT NULL,nome varchar(100),login varchar(50),senha varchar(16),cpf varchar(11),email varchar(50),PRIMARY KEY(id));

#CRIAÇÃO DA TABELA TIPO_COMENTARIO
CREATE TABLE tipo_comentario(id serial NOT NULL,descricao_tipo varchar(50),PRIMARY KEY(id));

#CRIAÇÃO DA TABELA COMENTARIO
CREATE TABLE comentario (id serial NOT NULL,comentario_usuario varchar(100),id_usuario serial NOT NULL,id_tipo_comentario serial NOT NULL, PRIMARY KEY(id),
FOREIGN KEY(id_usuario) REFERENCES usuario(id),FOREIGN KEY(id_tipo_comentario) REFERENCES tipo_comentario(id));

#CRIAÇÃO DA TABELA DESCRIÇÃO
CREATE TABLE descricao (id serial NOT NULL, textopadrao varchar(100) NOT NULL,PRIMARY KEY(id));

#CRIAÇÃO DA TABELA CLASSIFICAÇÃO
CREATE TABLE classificacao (id serial NOT NULL, tipo char(1) NOT NULL,id_descricao serial NOT NULL, PRIMARY KEY(id),FOREIGN KEY (id_descricao) REFERENCES descricao(id));

#CRIAÇÃO DA TABELA CIDADE
CREATE TABLE cidade (id serial NOT NULL, nome varchar(50),PRIMARY KEY(id));

#CRIAÇÃO DA TABELA BAIRRO
CREATE TABLE bairro (id serial NOT NULL, nome_bairro varchar(100) NOT NULL,id_cidade serial NOT NULL,PRIMARY KEY(id),FOREIGN KEY (id_cidade) REFERENCES cidade(id));

#CRIAÇÃO DA TABELA RUA
CREATE TABLE rua (id serial NOT NULL, nome_rua varchar(100) NOT NULL,quantidade_crimes integer,id_classificacao serial NOT NULL,id_bairro serial NOT NULL,id_cidade serial NOT NULL, PRIMARY KEY(id),
FOREIGN KEY (id_cidade) REFERENCES cidade(id),FOREIGN KEY (id_bairro) REFERENCES bairro(id),FOREIGN KEY (id_classificacao) REFERENCES classificacao(id));

#CRIAÇÃO DA TABELA SEXO
CREATE TABLE sexo(id serial NOT NULL,genero varchar(1),PRIMARY KEY(id));

#CRIAÇÃO DA TABELA VITIMA
CREATE TABLE vitima(id serial NOT NULL,idade int,id_sexo serial NOT NULL,PRIMARY KEY(id),FOREIGN KEY (id_sexo) REFERENCES sexo(id));

#CRIAÇÃO DA TABELA TIPO_CRIME
CREATE TABLE tipo_crime(id serial NOT NULL,descricao_crime varchar (100) NOT NULL,PRIMARY KEY(id));

#CRIAÇÃO DA TABELA LINHA
CREATE TABLE linha(id serial NOT NULL,numero_linha integer NOT NULL,id_classificacao serial NOT NULL,PRIMARY KEY(id),FOREIGN KEY (id_classificacao) REFERENCES classificacao(id));

#CRIAÇÃO DA TABELA LINHA_PASSA_RUA
CREATE TABLE linha_passa_rua(id serial NOT NULL,id_rua serial NOT NULL, id_linha serial NOT NULL,PRIMARY KEY(id),FOREIGN KEY (id_rua) REFERENCES rua(id),FOREIGN KEY (id_linha) REFERENCES linha(id));

#CRIAÇÃO DA TABELA CRIME
CREATE TABLE crime(id integer NOT NULL,data date,hora time,id_vitima serial,id_rua serial,id_bairro serial,id_cidade serial, id_tipo_crime serial,PRIMARY KEY(id),
FOREIGN KEY (id_vitima) REFERENCES vitima(id), FOREIGN KEY (id_rua) REFERENCES rua(id), FOREIGN KEY (id_bairro) REFERENCES bairro(id), FOREIGN KEY (id_cidade) REFERENCES cidade(id), FOREIGN KEY (id_tipo_crime) REFERENCES tipo_crime(id));
