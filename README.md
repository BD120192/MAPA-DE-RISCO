# TRABALHO 1 - MAPA DE RISCO - BANCO DE DADOS 1
### 1. COMPONENTES<br>
>Integrantes do grupo<br>
>Aroldo Vargas: aroldovneto@gmail.com<br>
>Bruno Moreto: brunomoretodeoliveira2@gmail.com<br>
>Heitor Dias: heitor-mnz@hotmail.com<br>
>Warleson: warleson.sales@gmail.com<br> 

### 2. INTRODUÇÃO E MOTIVAÇÃO<br>
> O projeto pretende ranquear ruas do Espirito Santo e linhas de onibus da rede Transcol de acordo com a quantidade de crimes que ocorreram previamente. A violência no estado do Espirito Santo é notável. A cidade da Serra recentemente estava listada entre as 30 mais violentas do Brasil. Tendo isso em vista, pretende-se disponibilizar uma alternativa para prevenção de crimes violentos, para que o cidadão do nosso estado se sinta confortável ao fazer a escolha de qual caminho tomar para ir ao serviço, ou qual linha de ônibus pegar para voltar pra casa. 

### 3. MINI-MUNDO<br>
> A ideia do projeto é determinar uma rota de deslocamento ou uma linha mais segura para usuário, baseando-se nos índices de criminalidade de uma determinada região. O sistema analisará o horário e o local de menor criminalidade das ruas nas rotas existentes até o destino inserido pelo usuário, e determinará, baseado em dados estatísticos, a melhor rota de deslocamento. Os dados estatísticos serão oriundos da Secretaria de Estado de Segurança Pública e Defesa Social (SESP) e o sistema atuará somente com ruas e linhas válidas no estado do Espírito Santo. O sistema realiza dois tipos de pesquisa, pela rua ou atraves da linha de onibus, depois retorna uma classificação de acordo com o numero de crimes encontrados em determinada rua ou no itinerario da linha de onibus.

### 4. MOCKUPS<br>
>Protótipo das telas: https://balsamiq.com<br><br>
![Alt text](https://github.com/BD120192/MAPA-DE-RISCO/blob/master/TELAS/menu_inicial.JPG?raw=true "Title")
![Alt text](https://github.com/BD120192/MAPA-DE-RISCO/blob/master/TELAS/pesquisa_rua.JPG?raw=true "Title")
![Alt text](https://github.com/BD120192/MAPA-DE-RISCO/blob/master/TELAS/pesquisa_linha.JPG?raw=true "Title")
![Alt text](https://github.com/BD120192/MAPA-DE-RISCO/blob/master/TELAS/resultado_rua.JPG?raw=true "Title")
![Alt text](https://github.com/BD120192/MAPA-DE-RISCO/blob/master/TELAS/resultado_linha.JPG?raw=true "Title")
![Alt text](https://github.com/BD120192/MAPA-DE-RISCO/blob/master/TELAS/descricao_crimes.JPG?raw=true "Title")
![Alt text](https://github.com/BD120192/MAPA-DE-RISCO/blob/master/TELAS/comentario.JPG?raw=true "Title")
![Alt text](https://github.com/BD120192/MAPA-DE-RISCO/blob/master/TELAS/comentario_enviado.JPG?raw=true "Title")

#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?

#### 4.2 TABELA DE DADOS DO SISTEMA
> https://github.com/BD120192/MAPA-DE-RISCO/blob/master/ENTREGA1/Normalizacao1.xlsx

### 5.MODELO CONCEITUAL<br>
![Alt text](https://github.com/BD120192/MAPA-DE-RISCO/blob/master/modeloconceitualFonteGrande.jpg?raw=true "Title")

#### 5.1 VALIDAÇÃO DO MODELO CONCEITUAL

#### 5.2 DECISÕES DE PROJETO

#### 5.3 DESCRIÇÃO DOS DADOS
> https://github.com/BD120192/MAPA-DE-RISCO/blob/master/ENTREGA%202/Descricao_Dados.txt

### 6.MODELO LÓGICO<br>
![Alt text](https://github.com/BD120192/MAPA-DE-RISCO/blob/master/ENTREGA%202/L%C3%B3gico_2.png?raw=true "Title")

### 7.MODELO FÍSICO<br>
> https://github.com/BD120192/MAPA-DE-RISCO/blob/master/DATABASE/modelofisico.txt

### 8.INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>


#### 8.1 DETALHAMENTO DAS INFORMAÇÕES


#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS

> https://github.com/BD120192/MAPA-DE-RISCO/blob/master/ENTREGA%202/CREATE_TABLE.sql
> https://github.com/BD120192/MAPA-DE-RISCO/blob/master/ENTREGA%202/INSERT_INTO.sql

#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS

#### 8.4 PRINCIPAIS FLUXOS DE INFORMAÇÃO E PRINCIPAIS TABELAS DO SISTEMA

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas)
      SELECT * from bairro;
      SELECT * FROM cidade;
      SELECT * FROM classificacao;
      SELECT * FROM comentario;
      SELECT * FROM crime;
      SELECT * FROM descricao;
      SELECT * FROM linha;
      SELECT * FROM linha_passa_rua;
      SELECT * FROM rua;
      SELECT * FROM sexo;
      SELECT * FROM tipo_comentario;
      SELECT * FROM tipo_crime;
      SELECT * FROM usuario;
      SELECT * FROM vitima;
      
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4) - AROLDO
      SELECT id, nome_rua FROM rua WHERE id_classificacao=3;
      SELECT id, nome_rua, quantidade_crimes, id_classificacao FROM rua WHERE id_cidade = 77;
      SELECT * FROM crime WHERE id_tipo_crime = 2;
      SELECT * FROM vitima WHERE id_sexo = 2;
      SELECT * FROM vitima WHERE idade < 21;
      SELECT id, numero_linha FROM linha WHERE id_classificacao = 4;
      
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11) - BRUNO
      SELECT ID FROM CRIME WHERE ID_VITIMA = 31 AND ID_RUA = 63
      SELECT NOME_RUA,AVG(QUANTIDADE_CRIMES) FROM RUA
      GROUP BY NOME_RUA
      SELECT NOME_RUA,QUANTIDADE_CRIMES*100 FROM RUA
      GROUP BY NOME_RUA
      SELECT NOME_RUA FROM RUA WHERE QUANTIDADE_CRIMES = 10 OR QUANTIDADE_CRIMES = 1
      SELECT NOME_RUA FROM RUA WHERE NOT QUANTIDADE_CRIMES = 0; 
      ALTER TABLE RUA ALTER COLUMN  NOMEDARUA TO NOME_RUA
      ALTER TABLE RUA ALTER COLUMN  QUANTIDADE_CRIME TO QUANTIDADE_CRIMES
      ALTER TABLE LINHA ALTER COLUMN  NUMERODALINHA TO NUMERO_LINHA
      SELECT NOME_RUA,MAX(QUANTIDADE_CRIMES) FROM RUA
      SELECT COUNT(QUANTIDADE_CRIMES) FROM RUA
      GROUP BY NOME_RUA
      SELECT MAX(QUANTIDADE_CRIMES) FROM RUA
      GROUP BY NOME_RUA


#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) - WALERSON

	SELECT * FROM BAIRRO WHERE NOME_BAIRRO LIKE '%JARDIM LIMOEIRO%'
	SELECT * FROM BAIRRO WHERE NOME_BAIRRO LIKE '%PEDRA AZUL%'
	SELECT * FROM BAIRRO WHERE NOME_BAIRRO LIKE '%SAO GERALDO%'
	SELECT * FROM CIDADE WHERE NOME LIKE '%SERRA%'
	SELECT * FROM CIDADE WHERE NOME LIKE '%ALEGRE%'
	SELECT * FROM CIDADE WHERE NOME LIKE '%VITORIA%'
	SELECT * FROM CIDADE WHERE NOME LIKE '%LINHARES%'
	SELECT * FROM RUA WHERE NOME_RUA LIKE '%CARLOS%'
	SELECT * FROM RUA WHERE NOME_RUA LIKE '%RUA D%'
	SELECT * FROM RUA WHERE NOME_RUA LIKE '%AV MARUIPE%'
	SELECT * FROM RUA WHERE NOME_RUA LIKE '%AV FERNANDO FERRARI%' 
	SELECT * FROM RUA WHERE NOME_RUA LIKE '%RUA CARIOCA%'
	SELECT * FROM RUA WHERE NOME_RUA LIKE '% RUA MAGNO%'
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6) - BRUNO

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6) - AROLDO
      SELECT cr.id_cidade,ci.nome_cidade,COUNT(cr.id_cidade) FROM crime cr 
	INNER JOIN cidade ci ON(cr.id_cidade = ci.id)
	GROUP BY cr.id_cidade,ci.nome_cidade ORDER BY COUNT(*) DESC LIMIT(5);
			
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6) 
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) - HEITOR
	SELECT usuario.nome, comentario.comentario_usuario
		FROM usuario RIGHT JOIN comentario
		ON(comentario.id_usuario=usuario.id);

	SELECT crime.id, tipo_crime.descricao_crime
		FROM crime LEFT JOIN tipo_crime
		ON(crime.id_tipo_crime=tipo_crime.id);

	SELECT numero_linha, comentario_usuario
		FROM linha LEFT JOIN comentario
		ON(comentario.id_linha=linha.id);

	SELECT nome_rua, comentario_usuario
		FROM rua RIGHT JOIN comentario
		ON(comentario.id_rua=rua.id);


#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6) - HEITOR
#### 9.10	SUBCONSULTAS (Mínimo 3) - AROLDO
    SELECT * FROM crime WHERE id_vitima IN(SELECT id FROM vitima WHERE idade < 21)
      
    SELECT cr.id,cr.data,cr.hora,vi.idade,se.genero,tc.descricao_crime FROM crime cr 
	INNER JOIN vitima vi ON(cr.id_vitima =vi.id)
	INNER JOIN tipo_crime tc ON(cr.id_tipo_crime = tc.id)
	INNER JOIN sexo se ON(se.id = vi.id_sexo)
	WHERE id_vitima IN(SELECT id FROM vitima WHERE id_sexo = 2
			   
    SELECT cr.id,cr.data,cr.hora,vi.idade,se.genero,tc.descricao_crime FROM crime cr 
	INNER JOIN vitima vi ON(cr.id_vitima =vi.id)
	INNER JOIN tipo_crime tc ON(cr.id_tipo_crime = tc.id)
	INNER JOIN sexo se ON(se.id = vi.id_sexo)
	WHERE id_vitima IN(SELECT id FROM vitima WHERE idade > 60  
			    
#### 9.11 RELATÓRIOS e GRÁFICOS - GRUPO
> https://github.com/BD120192/MAPA-DE-RISCO/tree/master/RELATORIO

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

### 11 BACKUP COMPLETO DO BANCO DE DADOS POSTGRESQL<br>

### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
> https://github.com/BD120192/MAPA-DE-RISCO/tree/master/DATABASE


### 13 DIFICULDADES ENCONTRADAS PELO GRUPO<br>
>	Inicialmente a principal dificuldade encontrada pelo o grupo foi descobrir como iriamos baixar e armarzenar no nosso banco de dados postgresql a base de dados do governo referente aos registros de crimes registrados nas ruas da cidade. Então tivemos que correr atras de soluções que nos ajudasse a ter isso rápido pois são muitos registros. Conseguimos usando uma solução em python trabalhando com a manipulação de arquivos e conexão com o banco.<br> 
>	Após esse passo começamos a construir nosso diagrama de classes que foi bem complexo pois os dados se espalhavam em muitas tabelas e tornaram as consultas longas o que também foi outra dificuldade. Alguns integrantes do grupo não tinham muita intimidade com a linguagem de programação python e também sql. O horarário para realizar o trabalho foi complexo pois só alguns componentes podiam estar presente em alguns momentos.

**LINK DAS ESTATÍSTICAS CRIMINAIS:**

>https://sesp.es.gov.br/estatisticas-criminais-2

**LINK DOS ITINERÁRIOS DAS LINHAS DE ÔNIBUS**

>https://ceturb.es.gov.br/Itinerarios

**SOFTWARES UTILIZADOS**

>Banco de Dados: https://www.postgresql.org <br>
>Protótipo das telas: https://balsamiq.com

**BIBLIOTECAS PYTHON UTILIZADAS**
>Banco de Dados e Python: https://pypi.org/project/psycopg2/ <br>
>Excel e Python: https://pypi.org/project/xlrd/ <br>
>Lista com cidades: https://github.com/Sidon/py-ufbr <br>


