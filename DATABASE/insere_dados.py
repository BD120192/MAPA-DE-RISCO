import psycopg2
import select_table
from unicodedata import normalize
from pyUFbr.baseuf import ufbr

#INSERE DADOS NA TABELA CRIME_BASE - TABELA GERAL
def insere_crime_base(lst_linhas):
	#INICIANDO CONEXÃO COM O BANCO DE DADOS
	con = psycopg2.connect(host='localhost', database='bd1', user='postgres', password='postgres')
	cur = con.cursor()

	#IGNORA A PRIMEIRA LINHA
	lst_linhas = lst_linhas[1:-1]
	for linha in lst_linhas:
		#id = int(linha[0])
		data = linha[1]
		print(data)
		hora = linha[2]
		tipo_crime = linha[3]
		sexo = linha[4]
		if linha[5] == 'null':
			idade = 0
			
		else:
			idade = int(linha[5])
		cidade = linha[6]
		bairro = linha[7]
		rua = linha[8]

		sql = "INSERT INTO crimebase(data,hora,tipo_crime,sexo,idade,cidade,bairro,rua) VALUES (%s,%s,%s,%s,%s,%s,%s,%s)"
		sql_data = (data,hora,tipo_crime,sexo,idade,cidade,bairro,rua)
		cur.execute(sql,sql_data)
		con.commit()
	con.close()

	return 0

def insere_tipo_crime():
	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "INSERT INTO tipo_crime(descricao_crime) VALUES('HOMICÍDIO DOLOSO'),('LATROCÍNIO'),('LESÃO CORPORAL SEGUIDO DE MORTE')"
	cur.execute(sql)
	con.commit()
	con.close()

	return 0

def insere_descricao():
	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "INSERT INTO descricao(textopadrao) VALUES('ALTAMENTE SEGURO'),('SEGURO'),('INTERMEDIÁRIO'),('PERIGOSO'),('ALTAMENTE PERIGOSO')"
	cur.execute(sql)
	con.commit()
	con.close()

	return 0

def insere_usuario():
	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "INSERT INTO usuario (nome,login,senha,cpf,email) VALUES ('aroldo vargas','aroldovargas','123abc','14925798740','aroldovargas@gmail.com'),('alyson gustavo','agustavo','gusta2000','21425498740','alyson_g10@hotmail.com'),('warleson sales', 'wsales','w123','12587465210','warleson.sales@gmail.com'),('heitor dias','hdias','dias987','24312387650','heitordias@hotmail.com'),('moises omena','momena','987123moises','23654898780','moises_2019@hotmail.com'),('sergio vidigal','svidigal','sergio777','14520895470','vidigalsergio20@hotmail.com'),('juliana silva','jsilva','js1999','98520195773','ju_silva@gmail.com'),('amanda nunes','anunes','112358','45621487440','amandanunes@hotmail.com'),('barbara gomes','bgomes','barbara1997','43520875419','barbara_g2019@gmail.com'),('bruno moreto','bmoreto','bruno123','25013625741','brunomoreto@hotmail.com')"
	cur.execute(sql)
	con.commit()
	con.close()

	return 0

def insere_tipo_comentario():
	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "INSERT INTO tipo_comentario (descricao_tipo) VALUES ('SISTEMA'),('RUA'),('LINHA')"
	cur.execute(sql)
	con.commit()
	con.close()

	return 0

def insere_comentario():
	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "INSERT INTO comentario (comentario_usuario,id_usuario,id_tipo_comentario) VALUES ('Faltam serem incluídas as linhas de baldeação',1,1),('Acabei de ser assaltado, rua muito perigosa',4,2),('Incluír uma seção de ocorrências em tempo real',5,1),('Maior investimento nas linhas que fazem T.Cariacíca, T.Vila Velha',3,1),('A linha foi incendiada, muitas pessoas foram roubadas',6,3);"
	cur.execute(sql)
	con.commit()
	con.close()

	return 0

def insere_sexo():
	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "INSERT INTO sexo(genero) VALUES('M'),('F')"
	cur.execute(sql)
	con.commit()
	con.close()

	return 0

def insere_classificacao():
	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "INSERT INTO classificacao (tipo,id_descricao) VALUES ('A','1'),('B','2'),('C','3'),('D','4'),('E','5')"
	cur.execute(sql)
	con.commit()
	con.close()

	return 0

def insere_cidade():
	lst = get_cidades('ES')
	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	for cidade in lst:
		cidade = remover_acentos(cidade)
		sql = "INSERT INTO cidade(nome_cidade) VALUES (%s)"
		sql_data = (cidade,)
		cur.execute(sql,sql_data)
		con.commit()
	con.close()

	return 0

def insere_bairro():
	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()
	cur.execute("SELECT cb.bairro,ci.id FROM crimebase cb INNER JOIN cidade ci ON cb.cidade = ci.nome_cidade GROUP BY cb.bairro,ci.id")
	bairros = (cur.fetchall())

	for bairro in bairros:
		nome_bairro = bairro[0]
		if nome_bairro == '': 
			continue
		nome_bairro = remover_acentos(bairro[0])
		id_cidade = bairro[1]
		sql = "INSERT INTO bairro(nome_bairro,id_cidade) VALUES(%s,%s)"
		sql_data = (nome_bairro,id_cidade)
		cur.execute(sql,sql_data)
		con.commit()
	con.close()

	return 0

def insere_rua():
	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()
	cur.execute("SELECT cb.rua,COUNT(cb.rua),ba.id,ci.id FROM crimebase cb INNER JOIN cidade ci ON (cb.cidade = ci.nome_cidade) INNER JOIN bairro ba ON (cb.bairro = ba.nome_bairro) WHERE rua NOT LIKE '%NAO%' GROUP BY cb.rua,ba.id,ci.id;")
	ruas = (cur.fetchall())
	for rua in ruas:
		nome_rua = rua[0]
		if nome_rua == '': 
			continue
		nome_rua = remover_acentos(rua[0])
		qunt_crimes = rua[1]
		id_bairro = rua[2]
		id_cidade = rua[3]
		id_classificacao = select_table.verifica_classificacao(qunt_crimes)
		#Apos classificar a rua, insere os dados na tabela rua
		sql = "INSERT INTO rua(nome_rua,quantidade_crimes,id_classificacao,id_bairro,id_cidade) VALUES (%s,%s,%s,%s,%s)"
		sql_data = (nome_rua,qunt_crimes,id_classificacao,id_bairro,id_cidade)
		cur.execute(sql,sql_data)
		con.commit()

	con.close()

	return 0

def insere_vitima():
	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "INSERT INTO vitima (idade,id_sexo) SELECT cb.idade,se.id FROM crimebase cb INNER JOIN sexo se ON cb.sexo = se.genero GROUP BY cb.idade,se.id"
	cur.execute(sql)
	con.commit()
	con.close()

	return 0

def insere_crime(lst_linhas):

	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	lst_linhas = lst_linhas[1:-1]
	
	for linha in lst_linhas:
		data = linha[1]
		hora = linha[2]
		id_tipo_crime = select_table.verifica_tipo_crime(linha[3])
		id_sexo = select_table.verifica_sexo(linha[4])
		if linha[5] == 'null':
			idade = 0
		else:
			idade = int(linha[5])
		id_vitima = select_table.verifica_vitima(idade,id_sexo)
		id_cidade = select_table.verifica_cidade(linha[6])
		if id_cidade == []: continue

		id_bairro = select_table.verifica_bairro(linha[7])
		if linha[8] == '' or rua_nao_cadastrada(linha[8]): 
			continue
		id_rua = select_table.verifica_rua(linha[8])
		sql = "INSERT INTO crime(data,hora,id_vitima,id_rua,id_bairro,id_cidade,id_tipo_crime) VALUES (%s,%s,%s,%s,%s,%s,%s)"
		sql_data = (data,hora,id_vitima,id_rua,id_bairro,id_cidade,id_tipo_crime)
		cur.execute(sql,sql_data)
		con.commit()

	con.close()

	return 0

def rua_nao_cadastrada(rua):
	rua = str(rua).split(" ")
	if 'NAO' in rua:
		return True
	else:
		return False

#FAZER INSERE LINHA
def insere_linha():

	return 0

#FAZER INSERE LINHA_PASSA_RUA
def insere_linha_passa_rua():

	return 0

def get_cidades(estado):

	lst = ufbr.list_cidades(estado)

	return lst

def remover_acentos(txt):
    return normalize('NFKD', txt).encode('ASCII', 'ignore').decode('ASCII')