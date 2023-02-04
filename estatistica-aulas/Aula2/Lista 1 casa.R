#Função para calcular coeficiente de variação
cv = function(df){
  x = sd(df)/mean(df)
}
#Função para calcular variância 
var = function(df){
  var = (sd(df))^2
}
#Exercício 1


silicio = c(20.1 , 22.3 , 19.2 , 24.2 , 21.5 , 20.4 , 46.8 ,22.2 , 22.1 , 19.1 , 22.6 , 21.3 , 17.7)
print(summary(silicio))
print(sd(silicio))
boxplot(summary(silicio))
silicio[7]=NA
View(summary(silicio))
print(sd(silicio))

#Exercicio 3
library(Weighted.Desc.Stat)
x = c(1:4)
n = c(75,47,21,7)
t = c(150*x + 5000)
print(w.mean (x,n))
print(w.sd(x,n))
print(w.var(x,n))

print(w.mean (t,n))
print(w.sd(t,n))
print(w.var(t,n))

#4
library(agricolae)
ClasseDDPH = c(5,8,8.5,9,9.5,10,10.5)
Frequencia = c(40,82,720,180,136,42)
FrequenciaRelativa = c(0.06,0.14,0.2,0.3,0.23,0.07)
par(mfrow=c(1,2))
graph.freq(ClasseDDPH,counts=Frequencia, frequency =1)
graph.freq(ClasseDDPH,counts=Frequencia, frequency =3)

#5
library(readxl)
CopaDoMundo <- read_excel("~/CopaDoMundo.xls")

#gols 2014
print(summary(CopaDoMundo$Gols2014))
print(var(CopaDoMundo$Gols2014))
print(sd(CopaDoMundo$Gols2014))
print(cv(CopaDoMundo$Gols2014))
#gols 2018
print(summary(CopaDoMundo$Gols2018))
print(var(CopaDoMundo$Gols2018))
print(sd(CopaDoMundo$Gols2018))
print(cv(CopaDoMundo$Gols2018))

#saldo de 2014
print(summary(CopaDoMundo$Saldo2014 ))
print(var(CopaDoMundo$Saldo2014))
print(sd(CopaDoMundo$Saldo2014))
print(cv(CopaDoMundo$Saldo2014))

#saldo de 2018
print(summary(CopaDoMundo$Saldo2018))
print(var(CopaDoMundo$Saldo2018))
print(sd(CopaDoMundo$Saldo2018))
print(cv(CopaDoMundo$Saldo2018))

#boxplot gols
par(mfrow=c(1,2))
boxplot(CopaDoMundo$Gols2014)
boxplot(CopaDoMundo$Gols2018)

#boxplot saldo
par(mfrow=c(1,2))
boxplot(CopaDoMundo$Saldo2014)
boxplot(CopaDoMundo$Saldo2018)

#6
df6 = data.frame('Tipo de Diálise' = c('HD convencional','HD diária', 'CAPD','DPA', 'DPI'),
                 SUS= c(38437,359,933,2281,25),
                 'Não SUS' = c(7279,708,140,637,8)
  
)
pie(df6$SUS, labels =(df6$Tipo.de.Diálise), main = 'SUS')
pie(df6$Não.SUS, labels =(df6$Tipo.de.Diálise), main = 'Não SUS')

