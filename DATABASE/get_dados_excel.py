#BLIBLIOTECA PYTHON E EXCEL
import xlrd
import insere_dados
import create_table

def main():

	#arq = input("Insira o nome do arquivo: ")
	arq = "janeiro2019.xlsx"
	planilha = get_planilha(arq)
	nome = get_nome_planilha(planilha)
	#imprime_planilha(planilha)
	lst = lista_linhas(planilha)
	
	#RECEBE OS DADOS DE UMA PLANILHA EXCEL E INSERE TUDO EM UMA UNICA TABELA
	create_table.cria_crime_base()
	insere_dados.insere_crime_base(lst)

	#CRIACAO DE TODAS AS TABELAS 
	create_table.cria_tabela_usuario()
	create_table.cria_tabela_tipo_comentario()
	create_table.cria_tabela_comentario()
	create_table.cria_tabela_descricao()
	create_table.cria_tabela_classificacao()
	create_table.cria_tabela_cidade()
	create_table.cria_tabela_bairro()
	create_table.cria_tabela_rua()
	create_table.cria_tabela_sexo()
	create_table.cria_tabela_vitima()
	create_table.cria_tabela_tipo_crime()
	create_table.cria_tabela_linha()
	create_table.cria_tabela_linha_passa_rua()
	create_table.cria_tabela_crime()

	#INSERÇÃO DE TODAS AS TABELAS
	insere_dados.insere_usuario()
	insere_dados.insere_tipo_comentario()
	insere_dados.insere_comentario()
	insere_dados.insere_descricao()
	insere_dados.insere_classificacao()
	insere_dados.insere_cidade()
	insere_dados.insere_bairro()
	insere_dados.insere_rua()
	insere_dados.insere_sexo()
	insere_dados.insere_vitima()
	insere_dados.insere_tipo_crime()
	#insere_dados.insere_linha() --- FAZER
	#insere_dados.insere_linha_passa_rua() --- FAZER
	insere_dados.insere_crime(lst)

	return 0

def lista_linhas(planilha):
	n_col = num_colunas(planilha)
	n_lin = num_linhas(planilha)
	
	linha = []
	lst_linhas = []
	col = 0

	for lin in range(n_lin):
		while col < n_col:
			cel = get_celula(planilha,lin,col)
			linha.append(cel)
			col = col + 1
		lst_linhas.append(linha)
		linha = []
		
		col = 0

	return lst_linhas

def imprime_planilha(planilha):
	n_col = num_colunas(planilha)
	n_lin = num_linhas(planilha)
	
	lst_linha = []
	col = 0

	for lin in range(n_lin):
		while col < n_col:
			cel = get_celula(planilha,lin,col)
			lst_linha.append(cel)
			col = col + 1
		print(lst_linha)
		lst_linha = []
		col = 0

	return 0

def get_nome_planilha(planilha):

	return planilha.name

def num_linhas(planilha):

	return planilha.nrows

def num_colunas(planilha):

	return planilha.ncols

def get_planilha(arq):

	book = xlrd.open_workbook(arq)
	planilha = book.sheet_by_index(0)

	return planilha

def get_celula(planilha,linha,coluna):

	celula = planilha.cell_value(rowx=linha, colx=coluna)

	return celula

main()
