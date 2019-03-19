#BLIBLIOTECA PYTHON E MYSQL
import psycopg2

#INICIANDO CONEXÃO COM O BANCO DE DADOS
con = psycopg2.connect(host='isilo.db.elephantsql.com', database='srdpapsh', user='srdpapsh', password='hvk59vXo_6OaxZl05YjY95pqpT7Ia0eX')
cur = con.cursor()

#CRIA TABELA 
sql = "CREATE TABLE crime (id INT, nome VARCHAR(100), uf VARCHAR(2))"
cur.execute(sql)

#INSERE DADOS NA TABELA
sql = "INSERT INTO cidade(id,nome,uf) VALUES (1,'São Paulo','SP')"
cur.execute(sql)

con.commit()

cur.execute("SELECT * FROM cidade")
recset = cur.fetchall()
for rec in recset:
	print (rec)


#FECHA CONEXÃO COM O BANCO DE DADOS
con.close()