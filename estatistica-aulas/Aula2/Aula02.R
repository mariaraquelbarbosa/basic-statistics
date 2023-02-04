Dados_Demograficos <- read.csv(file = "CEA2015P01-QV-Demograficos.csv",
                               header = TRUE,                      
                               sep = ";",                         
                               fill = TRUE,                       
                               as.is = TRUE)
print(Dados_Demograficos)

summary(Dados_Demograficos[,c(2,8,9,10)])

sd(Dados_Demograficos$Idade)
sd(Dados_Demograficos$Idade)/mean(Dados_Demograficos$Idade)*100
sd(Dados_Demograficos$IMC)
sd(Dados_Demograficos$IMC)/mean(Dados_Demograficos$IMC)*100

by(Dados_Demograficos$Idade, Dados_Demograficos$Fumante, summary)
by(Dados_Demograficos$Idade, Dados_Demograficos$Fumante, sd)

#função para calcular o coeficiente de variação
cv <- function(x) sd(x)/mean(x)*100
by(Dados_Demograficos$Idade, Dados_Demograficos$Fumante, cv)

#tabela de frequências
table(Dados_Demograficos$Etnia)
table(Dados_Demograficos$Escolaridade)
