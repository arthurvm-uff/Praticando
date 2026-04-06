# 1. Leitura e manipulação dos dados
dados = read.csv("dados-aula-7-limpos.csv", header=TRUE, sep = ",")

# ver estrutura
str(dados)
head(dados)

# cálculo de IMC
dados$imc = dados$peso / ((dados$altura/100)^2)

# criando faixas etárias
dados$faixa_etaria = ifelse(dados$idade < 30, "Jovem",
                            ifelse(dados$idade < 60, "Adulto", "Idoso"))
dados$faixa_etaria = factor(dados$faixa_etaria)

# 2. Distribuição de frequências e gráficos
table(dados$sexo)
barplot(table(dados$faixa_etaria, dados$sexo), beside = TRUE, legend
        = TRUE)
hist(dados$altura)
boxplot(dados$imc ~ dados$sexo)
