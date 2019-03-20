#BLIBLIOTECA PYTHON E MYSQL
import psycopg2

#INICIANDO CONEXÃO COM O BANCO DE DADOS
con = psycopg2.connect(host='localhost', database='postgres', user='postgres', password='postgres')
cur = con.cursor()

#CRIA TABELA 
#sql = "CREATE TABLE crime (numero INT,data DATE,hora TIME,tipo_crime VARCHAR(50),sexo CHAR(1),idade INT,cidade VARCHAR(50),bairro VARCHAR(50),rua VARCHAR(50))"
#cur.execute(sql)

#INSERE DADOS NA TABELA CRIME
def insere_linha_crime(lst_linhas):
	#INICIANDO CONEXÃO COM O BANCO DE DADOS
	con = psycopg2.connect(host='isilo.db.elephantsql.com', database='srdpapsh', user='srdpapsh', password='hvk59vXo_6OaxZl05YjY95pqpT7Ia0eX')
	cur = con.cursor()

	#IGNORA A PRIMEIRA LINHA
	lst_linhas = lst_linhas[1:-1]
	
	for linha in lst_linhas:
		numero = int(linha[0])
		data = linha[1]
		hora = linha[2]
		tipo_crime = linha[3]
		sexo = linha[4]
		idade = int(linha[5])
		cidade = linha[6]
		bairro = linha[7]
		rua = linha[8]

		sql = "INSERT INTO crime(numero,data,hora,tipo_crime,sexo,idade,cidade,bairro,rua) VALUES (numero,data,hora,tipo_crime,sexo,idade,cidade,bairro,rua)"
		cur.execute(sql)
		con.commit()

	return 0


cur.execute("SELECT * FROM crime")
recset = cur.fetchall()
for rec in recset:
	print(rec)

#FECHA CONEXÃO COM O BANCO DE DADOS
con.close()