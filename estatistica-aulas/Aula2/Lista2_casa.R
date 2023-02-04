dados1<- read_excel("CEA2015P01-QV-Sessoes.xlsx")
as.factor(dados1$BEFi)
boxplot(dados1$BEFi)

dados2 <- read_excel("BATATABT  BD2020.xlsx")
as.factor(dados2$Bactéria)
by(dados2$Diâmetro, dados2$Bactéria, summary)
by(dados2$Diâmetro, dados2$Bactéria, sd)
by(dados2$Diâmetro, dados2$Bactéria, quantile)
cv <- function(x) sd(x)/mean(x)*100
by(dados2$Diâmetro, dados2$Bactéria, cv)
by(dados2$Diâmetro, dados2$Bactéria, table)
boxplot(dados2$Diâmetro ~ dados2$Bactéria)
##Conclusão
#A média do diâmetro (em mm) e a variabilidade sd e DI ) da parte apodrecida da batata é
#maior quando o nível da quantidade de bactérias injetadas aumenta. O menor valor de cv
#ocorre para a categoria alta da variável quantidade injetada de bactéria, ou seja, em relação
#à média, a variabilidade é menor para essa categoria.
#Podemos observar que a distribuição do diâmetro da parte apodrecida parece não ser simétrica para os níveis 1-baixa e 2-média da quantidade injetada de bactéria.
#Por fim, podemos concluir que quanto maior a quantidade de bactérias injetada, maior será o
#diâmetro (em mm ) da parte apodrecida da bat ata.

as.factor(dados2$Temperatura)
by(dados2$Diâmetro, dados2$Temperatura, summary)
by(dados2$Diâmetro, dados2$Temperatura, sd)
by(dados2$Diâmetro, dados2$Temperatura, quantile)
by(dados2$Diâmetro, dados2$Temperatura, cv)
by(dados2$Diâmetro, dados2$Temperatura, table)
boxplot(dados2$Diâmetro ~ dados2$Temperatura)
##Conclusão
#A média do diâmetro (em mm) da parte apodrecida da batata assim como sd e DI são
#maiores quanto maior é a temperatura de armazenamento. Em termos de variabilidade 
#observou-se um cv menor para o nível 2 de temperatura.
#Podemos observar que a distribuição do diâmetro da parte apodrecida aparenta ser
#simétrica para os dois níveis de temperatura. Por fim, podemos concluir que quanto mais alta
#a temperatura de armazenamento, maior será o diâmetro (em mm) da parte apodrecida da
#batata.

hist(dados2$Diâmetro ~ dados2$Temperatura)
dev.new()
par(mfrow = c(2,1))
hist(dados2$Diâmetro[dados2$Temperatura==1], freq = FALSE, xlim = c(0, 30))
hist(dados2$Diâmetro[dados2$Temperatura==2], freq = FALSE, xlim = c(0, 30))
dev.off()

install.packages("agricolae")
library(agricolae)
regiao1<- c(0,20,40,60,80,90,100)
regiao2<- c(0,20,40,60,80,90,100)
fr1<- c(5,2,13,5,3,1)
fr2<- c(2,3,7,7,15,4)
par(mfrow=c(1,2))
graph.freq(regiao1,counts=fr1,frequency=3,
           ylim = c(0, 0.04))
graph.freq(regiao2,counts=fr2,frequency=3,
                      ylim = c(0, 0.04))
