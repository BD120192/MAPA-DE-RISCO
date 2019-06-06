#BLIBLIOTECA PYTHON E MYSQL
import psycopg2


def cria_tabela():

	con = psycopg2.connect(host='localhost', database='maparisco',user='postgres', password='postgres')
	cur = con.cursor()

	sql = "CREATE TABLE crimebase (id SERIAL,data DATE,hora TIME,tipo_crime VARCHAR(50),sexo CHAR(1),idade INT,cidade VARCHAR(50),bairro VARCHAR(50),rua VARCHAR(50))"
	cur.execute(sql)
	con.commit()

	con.close()

	return 0


def insere_tabela(lst_linhas):

	con = psycopg2.connect(host='localhost', database='maparisco',user='postgres', password='postgres')
	cur = con.cursor()

	lst_linhas = lst_linhas[1:-1]
	
	
	for linha in lst_linhas:

		id = int(linha[0])
		data = linha[1]
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

		sql = "INSERT INTO crimebase(id,data,hora,tipo_crime,sexo,idade,cidade,bairro,rua) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s)"
		sql_data = (id,data,hora,tipo_crime,sexo,idade,cidade,bairro,rua)
		cur.execute(sql,sql_data)
		con.commit()

	con.close()

	return 0
