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

# CRIAÇÃO DA NOVA COLUNA COM BASE NA ESPÉCIE
iris$Species_Num <- ifelse(iris$Species == "setosa", 1, # SETOSA = 1
                           ifelse(iris$Species == "versicolor", 2, # VERSICOLOR = 2
                                  ifelse(iris$Species == "virginica", 3, NA))) # VIRGINICA = 3 e NA = NA

# VISUALIZAÇÃO DA NOVA COLUNA
print(iris)


















