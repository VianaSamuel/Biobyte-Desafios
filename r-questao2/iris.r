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

# VISUALIZAÇÃO DOS DADOS
print(iris)
print("")

# QUANTIDADE DE ATRIBUTOS E REGISTROS
n_attributes <- ncol(iris)
n_records <- nrow(iris)

# TIPOS DE ATRIBUTOS
attribute_types <- sapply(iris, class)

# SUMÁRIO DA BASE
summary_iris <- summary(iris)

# TRANSFORMAÇÃO DO TIPO DO ATRIBUTO SPECIES EM FACTOR
iris$Species <- as.factor(iris$Species)

# QUANTIDADE DE REGISTROS PARA CADA ESPECIE DE ÍRIS
records_per_species <- table(iris$Species)

# EXIBIÇÃO DE RESULTADOS
print("Quantidade de atributos e registros:")
print(paste("Atributos:", n_attributes))
print(paste("Registros:", n_records))
print("")
print("Tipos de atributos:")
print(attribute_types)
print("")
print("Sumário dos atributos:")
print(summary_iris)
print("")
print("Transformação de Species em factor:")
str(iris$Species)
print("")
print("Quantidade de registros por espécie:")
print(records_per_species)

