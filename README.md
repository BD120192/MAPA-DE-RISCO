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

### 5.MODELO CONCEITUAL<br>

#### 5.1 VALIDAÇÃO DO MODELO CONCEITUAL

#### 5.2 DECISÕES DE PROJETO

#### 5.3 DESCRIÇÃO DOS DADOS

### 6.MODELO LÓGICO<br>

### 7.MODELO FÍSICO<br>

### 8.INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>

#### 8.1 DETALHAMENTO DAS INFORMAÇÕES

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS

#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS

#### 8.4 Principais fluxos de informação e principais tabelas do sistema

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas)
      select * from bairro;
      select * from cidade;
      select * from classificacao;
      select * from comentario;
      select * from crime;
      select * from descricao;
      select * from linha;
      select * from linha_passa_rua;
      select * from rua;
      select * from sexo;
      select * from tipo_comentario;
      select * from tipo_crime;
      select * from usuario;
      select * from vitima;
      
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)
      select id, numero_linha from linha where id_classificacao=1;
      select id, nome_rua from rua where id_classificacao=2;
      select id, numero_linha from linha where linha.id_classificacao=3;
      select id, numero_linha from linha where linha.id_classificacao=4;
      select id, numero_linha from linha where linha.id_classificacao=5;
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12)
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)
#### 9.10	SUBCONSULTAS (Mínimo 3)
#### 9.11 Relatórios e Gráficos

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

### 11 Backup completo do banco de dados postgres<br>

### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>

**5. DIAGRAMA DE CLASSES**
![Alt text](https://github.com/BD120192/MAPA-DE-RISCO/blob/master/ENTREGA%202/Diagrama_Classes.jpg?raw=true "Title")

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


