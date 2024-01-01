install.packages("readxl")
library(readxl)
Dados_Demograficos <- read_excel("/Users/maria/OneDrive/Documentos/3. Econometrics 1/BS2280/basic-statistics/Aula02/CEA2015P01-QV-Demograficos.xlsx")
print(Dados_Demograficos)

summary(Dados_Demograficos[,c(2,8,9,10)])

sd(Dados_Demograficos$Idade)
sd(Dados_Demograficos$Idade)/mean(Dados_Demograficos$Idade)*100
sd(Dados_Demograficos$IMC)
sd(Dados_Demograficos$IMC)/mean(Dados_Demograficos$IMC)*100

by(Dados_Demograficos$Idade, Dados_Demograficos$Fumante, summary)
by(Dados_Demograficos$Idade, Dados_Demograficos$Fumante, sd)

#fun��o para calcular o coeficiente de varia��o
cv <- function(x) sd(x)/mean(x)*100
by(Dados_Demograficos$Idade, Dados_Demograficos$Fumante, cv)

#tabela de frequ�ncias
table(Dados_Demograficos$Etnia)
table(Dados_Demograficos$Escolaridade)
