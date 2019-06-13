#BLIBLIOTECA PYTHON E MYSQL
import psycopg2

#CRIA TABELA CRIME BASE
def cria_crime_base():
	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "CREATE TABLE crimebase (id SERIAL,data DATE,hora TIME,tipo_crime VARCHAR(50),sexo CHAR(1),idade INT,cidade VARCHAR(50),bairro VARCHAR(50),rua VARCHAR(50),PRIMARY KEY(id))"
	cur.execute(sql)
	con.commit()

	con.close()

	return 0

def cria_tabela_usuario():

	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "CREATE TABLE usuario(id serial NOT NULL,nome varchar(100),login varchar(50),senha varchar(16),cpf varchar(11),email varchar(50),PRIMARY KEY(id))"
	cur.execute(sql)
	con.commit()

	con.close()

	return 0

def cria_tabela_tipo_comentario():

	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "CREATE TABLE tipo_comentario(id serial NOT NULL,descricao_tipo varchar(50),PRIMARY KEY(id))"
	cur.execute(sql)
	con.commit()

	con.close()

	return 0

def cria_tabela_comentario():

	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "CREATE TABLE comentario (id serial NOT NULL,comentario_usuario varchar(100),id_usuario serial NOT NULL,id_tipo_comentario serial NOT NULL, PRIMARY KEY(id),FOREIGN KEY(id_usuario) REFERENCES usuario(id),FOREIGN KEY(id_tipo_comentario) REFERENCES tipo_comentario(id))"
	cur.execute(sql)
	con.commit()

	con.close()

	return 0

def cria_tabela_descricao():

	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "CREATE TABLE descricao (id serial NOT NULL, textopadrao varchar(100) NOT NULL,PRIMARY KEY(id))"
	cur.execute(sql)
	con.commit()

	con.close()

	return 0

def cria_tabela_classificacao():

	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "CREATE TABLE classificacao (id serial NOT NULL, tipo char(1) NOT NULL,id_descricao serial NOT NULL, PRIMARY KEY(id),FOREIGN KEY (id_descricao) REFERENCES descricao(id))"
	cur.execute(sql)
	con.commit()

	con.close()

	return 0

def cria_tabela_cidade():

	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "CREATE TABLE cidade (id serial NOT NULL, nome_cidade varchar(50),PRIMARY KEY(id))"
	cur.execute(sql)
	con.commit()

	con.close()

	return 0

def cria_tabela_bairro():

	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "CREATE TABLE bairro (id serial NOT NULL, nome_bairro varchar(100) NOT NULL,id_cidade serial NOT NULL,PRIMARY KEY(id),FOREIGN KEY (id_cidade) REFERENCES cidade(id));"
	cur.execute(sql)
	con.commit()

	con.close()

	return 0

def cria_tabela_rua():

	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "CREATE TABLE rua (id serial NOT NULL, nome_rua varchar(100) NOT NULL,quantidade_crimes integer,id_classificacao serial NOT NULL,id_bairro serial NOT NULL,id_cidade serial NOT NULL, PRIMARY KEY(id),FOREIGN KEY (id_cidade) REFERENCES cidade(id),FOREIGN KEY (id_bairro) REFERENCES bairro(id),FOREIGN KEY (id_classificacao) REFERENCES classificacao(id))"
	cur.execute(sql)
	con.commit()

	con.close()

	return 0

def cria_tabela_sexo():

	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "CREATE TABLE sexo(id serial NOT NULL,genero varchar(1),PRIMARY KEY(id))"
	cur.execute(sql)
	con.commit()

	con.close()

	return 0

def cria_tabela_vitima():

	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "CREATE TABLE vitima(id serial NOT NULL,idade int,id_sexo serial NOT NULL,PRIMARY KEY(id),FOREIGN KEY (id_sexo) REFERENCES sexo(id))"
	cur.execute(sql)
	con.commit()

	con.close()

	return 0

def cria_tabela_tipo_crime():

	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "CREATE TABLE tipo_crime(id serial NOT NULL,descricao_crime varchar (100) NOT NULL,PRIMARY KEY(id))"
	cur.execute(sql)
	con.commit()

	con.close()

	return 0

def cria_tabela_linha():

	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "CREATE TABLE linha(id serial NOT NULL,numero_linha integer NOT NULL,id_classificacao serial NOT NULL,PRIMARY KEY(id),FOREIGN KEY (id_classificacao) REFERENCES classificacao(id))"
	cur.execute(sql)
	con.commit()

	con.close()

	return 0

def cria_tabela_linha_passa_rua():

	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "CREATE TABLE linha_passa_rua(id serial NOT NULL,id_rua serial NOT NULL, id_linha serial NOT NULL,PRIMARY KEY(id),FOREIGN KEY (id_rua) REFERENCES rua(id),FOREIGN KEY (id_linha) REFERENCES linha(id))"
	cur.execute(sql)
	con.commit()

	con.close()

	return 0

def cria_tabela_crime():

	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "CREATE TABLE crime(id serial NOT NULL,data date,hora time,id_vitima serial,id_rua serial,id_bairro serial,id_cidade serial, id_tipo_crime serial,PRIMARY KEY(id),FOREIGN KEY (id_vitima) REFERENCES vitima(id), FOREIGN KEY (id_rua) REFERENCES rua(id), FOREIGN KEY (id_bairro) REFERENCES bairro(id), FOREIGN KEY (id_cidade) REFERENCES cidade(id), FOREIGN KEY (id_tipo_crime) REFERENCES tipo_crime(id))"
	cur.execute(sql)
	con.commit()

	con.close()

	return 0



