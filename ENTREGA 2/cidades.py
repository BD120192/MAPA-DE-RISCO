from pyUFbr.baseuf import ufbr
import psycopg2


def getCidades():
	lst = ufbr.list_cidades('ES')
	return lst

def insereCidades(lst):
	con = psycopg2.connect(host='localhost', database='maparisco',user='postgres', password='postgres')
	cur = con.cursor()

	for cidade in lst:
		sql = "INSERT INTO cidade(nome_cidade) VALUES (%s)"
		sql_data = (cidade,)
		cur.execute(sql,sql_data)
		con.commit()

	print("cheguei")
	con.close()


lst = getCidades()

insereCidades(lst)