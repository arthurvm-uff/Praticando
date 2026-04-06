#Script simples - Aula 5 (30/3)

token = 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

#Leitura do banco de dados:
dados <- read.csv("dados - respostas formulário.csv", header=T, sep=";")
attach(dados)

library(usethis)
use_git_config(
  user.name = "?????",
  user.email = "?????"
)

# Verificando estrutura dos dados
str(dados)

# Análises descritivas - variáveis qualitativas
prop.table(table(ingresso))
prop.table(table(sexo))
prop.table(table(grupo_sanguineo))
prop.table(table(ingresso))
prop.table(table(ingere_pao))
prop.table(table(ingere_massa))
prop.table(table(ingere_refri))
prop.table(table(ingere_alcool))
prop.table(table(fruta_gosta))

# Análises descritivas - variáveis quantitativas
summary(idade)
sd(idade)
summary(peso)
sd(peso)
summary(n_refeicoes_dia)
sd(n_refeicoes_dia)

#Xo ve as parada
prop.table(table(fruta_gosta))
sum(grepl("Kiwi", fruta_gosta))
abacaxi = sum(grepl("Abacaxi", fruta_gosta))
prop.table(table(abacaxi))
