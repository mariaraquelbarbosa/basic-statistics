#Exercício 1
Ex1<-data.frame(Temperatura = c(59,63,68,72,74,78,83),
                Elasticidade = c(178,182,207,208,197,215,212))
print(Ex1)

dev.new()
plot(Ex1)
cor(Ex1$Temperatura, Ex1$Elasticidade)
lm(Ex1, formula = Elasticidade ~ Temperatura)
reta1 <- lm(Ex1, formula = Elasticidade ~ Temperatura)
abline(reta1)

#Exercício 2
bigmac <- read_excel("bigmac.xls")
View(bigmac)

dev.new()
par(mfrow = c(2,1))
plot(bigmac$Y ~ bigmac$X)
plot(bigmac$Y ~ bigmac$Z)
cor(bigmac$Y, bigmac$X)
cor(bigmac$Y, bigmac$Z)

dev.new()
plot(bigmac$Y ~ bigmac$X)
lm(bigmac, formula = Y ~ X)
reta2<-lm(bigmac, formula = Y ~ X)
abline(reta2)

#Exercício 3

#Exercício 4
library(readxl)
aeusp <- read_excel("aeusp.xlsx")
View(aeusp)
attach(aeusp)
table(Sexo, Renda)
table(Ecivil, Renda)
table(Ttrab, Renda)
rowperc(table(Seco, Renda))
install.packages("tigerstats")
library(tigerstats)
rowPerc(xtabs(~Sexo+Renda, data = aeusp))
