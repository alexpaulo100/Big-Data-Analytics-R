# Lista de Exercícios - Capítulo 2
# Diretório
setwd("C:/BigDataRAzure/Cap02")
getwd()

# Exercício 1 - Crie um vetor com 30 números inteiros
vetor3 <- c(1:30)
vetor3

# Exercício 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com números inteiros
mat <- matrix(c(1:16),nrow = 4,ncol = 4)
mat

# Exercício 3 - Crie uma lista unindo o vetor e matriz criados anteriormente
list <- list(vetor3, mat)
list

# Exercício 4 - Usando a função read.table() leia o arquivo do link abaixo para uma dataframe
# https://grodri.github.io/datasets/effort.dat
df <- data.frame(read.table("https://grodri.github.io/datasets/effort.dat"))
class(df)
df
View(df)

# Exercício 5 - Transforme o dataframe anterior, em um dataframe nomeado com os seguintes labels:
# c("config", "esfc", "chang")
names(df)=c("config", "esfc", "chang")
df

# Exercício 6 - Imprima na tela o dataframe iris, verifique quantas dimensões existem no dataframe iris e imprima um resumo do dataset
iris
class(iris)
str(iris) # informa a classe de cada coluna no data flame
head(iris)# retorna as seis primeiras observações do seu data flame.
summary(iris)# faz o resumo de todos os dados dentro do data frame.
dim(iris) # informa a dimensão de todo data flame.
View(iris)

# Exercício 7 - Crie um plot simples usando as duas primeiras colunas do dataframe iris
plot(iris$Sepal.Length,iris$Sepal.Width)

# Exercício 8 - Usando a função subset, crie um novo dataframe com o conjunto de dados do dataframe iris em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a função subset()
?subset
iris_1 <-subset((iris), Sepal.Length > 7)
iris_1
View(iris)

# Exercícios 9 (Desafio) - Crie um dataframe que seja cópia do dataframe iris e usando a função slice(), divida o dataframe em um subset de 15 linhas
# Dica 1: Você vai ter que instalar e carregar o pacote dplyr
# Dica 2: Consulte o help para aprender como usar a função slice()
new_iris <- iris
new_iris
install.packages("dplyr")
library(dplyr)
?slice
slice(new_iris, 1:15)
class(slice(new_iris, 1:15))

# Exercícios 10 - Use a função filter no seu novo dataframe criado no item anterior e retorne apenas valores em que Sepal.Length > 6
# Dica: Use o RSiteSearch para aprender como usar a função filter
RSiteSearch('filter')
filter(new_iris, Sepal.Length >7)
