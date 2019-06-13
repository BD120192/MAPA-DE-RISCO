#BLIBLIOTECA PYTHON E MYSQL
import psycopg2
from unicodedata import normalize

def verifica_sexo(genero):
	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	cur.execute("SELECT id FROM sexo WHERE genero = %s",(genero,))
	tupla = (cur.fetchall())
	id_sexo = tupla[0]

	con.close()

	return int(id_sexo[0])

def verifica_vitima(idade,id_sexo):
	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	cur.execute("SELECT id FROM vitima WHERE idade = %s AND id_sexo = %s",(idade,id_sexo,))
	tupla = (cur.fetchall())
	id_vitima = tupla[0]

	con.close()

	return int(id_vitima[0])

def verifica_tipo_crime(crime):
	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	#crime = remover_acentos(crime)

	cur.execute("SELECT id FROM tipo_crime WHERE descricao_crime = %s",(crime,))
	tupla = (cur.fetchall())
	id_tipo_crime = tupla[0]

	con.close()

	return int(id_tipo_crime[0])

def verifica_rua(rua):
	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	rua = remover_acentos(rua)

	cur.execute("SELECT id FROM rua WHERE nome_rua = %s",(rua,))
	tupla = (cur.fetchall())
	print(tupla)
	id_rua = tupla[0]

	con.close()

	return int(id_rua[0])

def verifica_bairro(bairro):

	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	bairro = remover_acentos(bairro)

	cur.execute("SELECT id FROM bairro WHERE nome_bairro = %s",(bairro,))
	tupla = (cur.fetchall())
	id_bairro = tupla[0]

	con.close()

	return int(id_bairro[0])

def verifica_cidade(cidade):

	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	cidade = remover_acentos(cidade)

	cur.execute("SELECT id FROM cidade WHERE nome_cidade = %s",(cidade,))
	tupla = (cur.fetchall())
	if tupla == []:
		con.close()
		return []
	else:
		con.close()
		id_cidade = tupla[0]
		return int(id_cidade[0])

#Classifica a rua de acordo com a quantidade de crimes
def verifica_classificacao(qunt_crimes):
	con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')
	cur = con.cursor()

	qunt_crimes = int(qunt_crimes)
	if qunt_crimes == 0:
		tipo = "A"
	if qunt_crimes == 1:
		tipo = "B"
	if qunt_crimes == 2:
		tipo = "C"
	if qunt_crimes == 3:
		tipo = "D"
	if qunt_crimes > 3:
		tipo = "E"

	cur.execute("SELECT id FROM classificacao WHERE tipo = %s",(tipo,))
	tupla = (cur.fetchall())
	id_classificacao = tupla[0]

	return int(id_classificacao[0])

def remover_acentos(txt):
    return normalize('NFKD', txt).encode('ASCII', 'ignore').decode('ASCII')
