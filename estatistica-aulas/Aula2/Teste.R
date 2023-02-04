library(readxl)
dados <- read_excel("CEA2015P01-QV-Demograficos.xlsx")

#variáveis qualitativas
as.factor(dados$Etnia)
as.factor(dados$EstCivil)
as.factor(dados$SitTrab)
as.factor(dados$Fumante)
as.factor(dados$Escolaridade)

#tabelas de frequências
dados$classeIMC <- cut(dados$IMC, c(23, 26.7, 30.3, 33.9, 37.5, 41))
table(dados$classeIMC)
print(dados,n=30 , width = Inf)

dados$classeIdade <- cut(dados$Idade, seq(20, 70, 10))
#frequências absolutas
table(dados$classeIdade)
#frequências absolutas e frequências relativas em porcentagem
cbind(table(dados$classeIdade), table(dados$classeIdade)/ nrow(dados) *100)

##gráficos
#boxplot
boxplot(dados$Idade)
boxplot(dados$Idade ~ dados$Fumante)

#histograma de frequência
hist(dados$Peso)
#histograma de densidade
hist(dados$Peso, freq = FALSE)

dev.new()
par(mfrow = c(2,1))
hist(dados$Idade[dados$Fumante==1], xlim = c(20, 70))
hist(dados$Idade[dados$Fumante==2], xlim = c(20, 70))
dev.off()