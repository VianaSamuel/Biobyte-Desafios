# LEITURA DOS DADOS
iris_path <- "./iris/iris.data"
iris_data <- read.table(iris_path, header = FALSE, sep = ",") # (o conjunto de dados não possui um cabeçalho, será necessário realizar a atribuição)

# Segundo o arquivo "iris.names":
# 7. Attribute Information:
#    1. sepal length in cm
#    2. sepal width in cm
#    3. petal length in cm
#    4. petal width in cm
#    5. class: 
#       -- Iris Setosa
#       -- Iris Versicolour
#       -- Iris Virginica
# DEFINIÇÃO DOS ATRIBUTOS (COLUNAS) PARA O CONJUNTO DE DADOS
colnames(iris_data) <- c("sepal_length", "sepal_width", "petal_length", "petal_width", "species")

# ESTRUTURAÇÃO DOS DADOS
data_list <- list(iris = iris_data)

# REGISTROS POR ESPECIES
rec_per_species <- table(iris$Species)

# DEFINIÇÃO DE CORES PRO GRÁFICO
clr <- c("setosa" = "lightblue", "versicolor" = "lightgreen", "virginica" = "lightpink")

# CRIAÇÃO DO GRÁFICO
barplot(rec_per_species,
        main = "Quantidade de Registros por Espécie",   # título
        xlab = "Espécie",                               # label do eixo x
        ylab = "Quantidade de Registros",               # label do eixo y
        ylim = c(0, 160),                               # limites do eixo y
        col = clr)                                      # vinculação das cores

# ADIÇÃO DA LEGENDA
legend("top",                      # posição da legenda
       horiz = TRUE,               # direção da legenda
       legend = rec_per_species,   # texto da legenda
       fill = clr)                 # vinculação das cores

# VISUALIZAÇÃO DA NOVA COLUNA
print(iris)