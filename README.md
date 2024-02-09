# Biobyte Sistemas - Desafio Processo Seletivo
### _Samuel Luiz da Cunha Viana Cruz_

<br />

---
## Programação Web - Questão 1
### Acesso para a resolução: [Questão 1](web-questao1/questao1.json)
 
A representação em JSON do auto de infração contém todos os campos necessários conforme especificado no enunciado:
- `"id"`: Código de identificação do auto de infração;
- `"violation_type_id"`: Código referente ao tipo de autuação aplicada;
- `"officer_observation"`: Observação feita pelo agente que emitiu o auto;
- `"date_time_ticket"`: Data e hora em que o auto foi emitido;
- `"location"`: Endereço da ocorrência, contendo o nome do município, nome do logradouro e numeração;
- `"vehicle_info"`: Dados do veículo autuado, incluindo marca, modelo e placa.
  
<br />

---
## Programação Web - Questão 2
### Acesso para a resolução: [Questão 2](web-questao2)

### Print do site: ![web-questao2_1](assets/web-questao2_1.png)

### Pontos a destacar:
- O site conta com responsividade: <br /> ![web-questao2_2](assets/web-questao2_2.png)
  
<br />

- O input do e-mail não ultrapassa a *label* *"@gmail.com"*: <br /> ![web-questao2_3](assets/web-questao2_3.png)

<br />

- Não é possível selecionar/arrastar as imagens ou a *label* *"@gmail.com"*.

<br />

---
## Programação Web - Questão 3
### Acesso para a resolução: [Questão 3](web-questao3)

### Print de uma validação incorreta: ![web-questao3_1](assets/web-questao3_1.png)

### Print de uma validação correta: ![web-questao3_2](assets/web-questao3_2.png)

### Pontos a destacar:
- **Validação de <ins>Nome e Sobrenome</ins>:** RegEx + Mínimo de 3 dígitos;

<br />

- **Validação de <ins>E-mail</ins>:** RegEx + Mínimo de 3 dígitos + Aceita pontos finais (.) e hífens (-): <br /> ![web-questao3_3](assets/web-questao3_3.png)

<br />

- **Validação de <ins>Senha</ins>:** Mínimo de 8 dígitos + Validação da confirmação.

<br />

---
## Programação Web - Questão 4
### Acesso para a resolução: [Questão 4](web-questao4)

### Print dos inputs de exemplo: ![web-questao4_1](assets/web-questao4_1.png)
### Print da resposta do servidor: ![web-questao4_2](assets/web-questao4_2.png)
### Print dos dados cadastrados recebidos: ![web-questao4_3](assets/web-questao4_3.png)

<br />

---
## Teste de R - Questão 1
### Acesso para a resolução: [Questão 1](r-questao1)

A importação da base de dados IRIS, conforme especificado no enunciado, foi baixado localmente através do link [https://archive.ics.uci.edu/dataset/53/iris](https://archive.ics.uci.edu/dataset/53/iris).

A importação dos dados foi realizada em 4 etapas:
1. **Leitura dos dados:** O arquivo *iris.data* é importado;
2. **Definição dos atributos:** Os atributos foram associados a todos os registros, uma vez que o arquivo não possui cabeçalho;
3. **Estruturação dos dados:** Os dados foram preparados para análise e visualização.;
4. **Visualização dos dados**.

### Print do console: ![r-questao1_1](assets/r-questao1_1.png)

### Print dos dados do ambiente: <br /> ![r-questao1_2](assets/r-questao1_2.png)

### Print da tabela: <br /> ![r-questao1_3](assets/r-questao1_3.png)

<br />

---
## Teste de R - Questão 2
### Acesso para a resolução: [Questão 2](r-questao2)

Conforme o enunciado, a análise da base de dados foi realizada identificando:
1. **Quantidade** de atributos e registros;
2. **Tipos** de atributos;
3. **Sumário** da base;
4. **Transformação** de *Species* em *Factor*;
5. **Quantidade** de registros por espécie.

### Print do resultado da análise no console: ![r-questao2_2](assets/r-questao2_2.png)

### Print do código: ![r-questao2_1](assets/r-questao2_1.png)

<br />

---
## Teste de R - Questão 3
### Acesso para a resolução: [Questão 3](r-questao3)

As etapas seguidas para adicionar o novo registro ao dataframe foram:
1. **Cálculo dos valores médios dos atributos**, excluindo o atributo das espécies;
2. **Criação do novo registro**, adicionando o valor "NA" para o atributo das espécies;
3. **Adição do novo registro ao dataframe**;
4. **Visualização do novo registro**.




### Print do console: <br /> ![r-questao3_1](assets/r-questao3_1.png)

### Print do novo registro na tabela: <br /> ![r-questao3_2](assets/r-questao3_2.png)

<br />

---
## Teste de R - Questão 4
### Acesso para a resolução: [Questão 4](r-questao4)

Foi utilizada a função `ifelse` para atribuir valores numéricos às espécies, conforme especificado:
- **1** para Setosa;
- **2** para Versicolor;
- **3** para Virginica;
- **NA** para outros casos.


### Print do código: <br /> ![r-questao4_1](assets/r-questao4_1.png)

### Print da Setosa na tabela: ![r-questao4_2](assets/r-questao4_2.png)

### Print da Versicolor na tabela: ![r-questao4_3](assets/r-questao4_3.png)

### Print da Virginica na tabela: ![r-questao4_4](assets/r-questao4_4.png)

<br />

---
## Teste de R - Questão 5
### Acesso para a resolução: [Questão 5](r-questao5)

Etapas seguidas para a criação do gráfico de barras:
1. **Contagem** dos registros por espécie;
2. **Definição** das cores para cada espécie;
3. **Criação** do gráfico de barras, especificando título, rótulos dos eixos, limites do eixo y e cores das barras.
4. **Adição** da legenda na parte superior central do gráfico, especificando a orientação horizontal e as cores correspondentes.

### Resultado (exportado) do gráfico de barras: <br /> ![r-questao5_1](assets/r-questao5_1.png)

### Print do código: ![r-questao5_2](assets/r-questao5_2.png)

<br />

---
## Teste de R - Questão 6
### Acesso para a resolução: [Questão 6](r-questao6)

Etapas seguidas para a criação do gráfico de pizza:
1. **Contagem** dos registros por espécie;
2. **Criação** do gráfico de pizza, especificando título, tamanho da fonte, rótulos e cores das fatias.
3. **Adição** da legenda na parte inferior esquerda do gráfico, especificando a orientação horizontal, título e cores correspondentes.

### Resultado (exportado) do gráfico de pizza: <br /> ![r-questao6_1](assets/r-questao6_1.png)

### Print do código: ![r-questao6_2](assets/r-questao6_2.png)