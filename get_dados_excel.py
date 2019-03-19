import xlrd

def main():
	arq = input("Insira o nome do arquivo: ")
	print(arq)
	planilha = get_planilha(arq)
	nome = get_nome_planilha(planilha)
	imprime_planilha(planilha)

	return 0

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