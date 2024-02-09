# LEITURA DOS DADOS
iris_path <- "../iris/iris.data"
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

# CRIAÇÃO DO GRÁFICO
pie(rec_per_species,
    main = "Quantidade de Registros por Espécie",                   # título
    cex = 0.9,                                                      # tamanho da fonte
    col = rainbow(length(rec_per_species)),                         # vinculação das cores
    labels = paste(names(rec_per_species), ": ", rec_per_species))  # labels com a quantidade

# ADIÇÃO DA LEGENDA
legend(-3.5, -1.1,                               # posição da legenda
       title = "Espécies",                       # título da legenda
       horiz = TRUE,                             # direção da legenda
       legend = names(rec_per_species),          # texto da legenda
       fill = rainbow(length(rec_per_species)),  # vinculação das cores
       xpd = TRUE)                               # permite plotar fora da área

# VISUALIZAÇÃO DA NOVA COLUNA
print(iris)