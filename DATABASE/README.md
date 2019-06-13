## CRIAÇÂO E INSERÇÃO DA BASE DE DADOS - PASSO A PASSO<br>

**1. IMPORTAR BIBLIOTECAS PYTHON**
>pip install psycopg2<br>
>pip install xlrd<br>
>pip install pyufbr<br>

**2. EXECUTAR O SCRIPT NO POSTGRES PARA CRIAR UMA BASE DE DADOS COM O NOME bd1**
>CREATE DATABASE bd1

**3. VERIFICAR SE O USUARIO E A SENHA DO POSTGRES ESTÃO DE ACORDO COM O PADRÃO UTILIZADO PARA PODER REALIZAR A CONEXAO**
>con = psycopg2.connect(host='localhost', database='bd1',user='postgres', password='postgres')

**3. CASO O USUÁRIO OU A SENHA SEJAM DIFERENTES SERÁ NECESSÁRIO REALIZAR ALTERAÇÕES EM 3 ARQUIVOS**
>ABRIR e ALTERAR os arquivos create_table.py, insere_dados.py, select_table.py, substituindo a conexao padrão pela sua conexão.<br>
>con = psycopg2.connect(host='localhost', database='bd1',user='SEU_USUARIO', password='SUA_SENHA')<br>
>É necessário alterar em TODOS os lugares onde a função é utilizada.<br>

**4. EXECUTAR O ARQUIVO get_dados_excel.py**
>python get_dados_excel.py
