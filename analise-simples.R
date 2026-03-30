#Script simples - Aula 5 (30/3)

#Leitura do banco de dados:
dados <- read.csv("dados - respostas formulário.csv", header=T, sep=";")
attach(dados)

library(usethis)
use_git_config(
  user.name = "arthurvm-uff",
  user.email = "arthurvm@id.uff.br"
)

