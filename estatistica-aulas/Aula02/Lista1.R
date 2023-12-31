#Ex 01
ex1a<-c(20.1, 22.3, 19.2, 24.2, 21.5, 20.4, 46.8, 22.2, 22.1, 19.1, 22.6, 21.3, 17.7)
as.factor(ex1a)
summary(ex1a)
sd(ex1a)
quantile(ex1a)

ex1b<-c(20.1, 22.3, 19.2, 24.2, 21.5, 20.4, 22.2, 22.1, 19.1, 22.6, 21.3, 17.7)
as.factor(ex1b)
summary(ex1b)
sd(ex1b)
quantile(ex1b)

#Ex 02
##a) A variável analisada é o peso da carne, em gramas, de mexilhões do sambaqui e
## do manguezal. Assim, é uma variável quantitativa contínua
##b) inferior a 28,89g. inferior a 36,22g
##c) superior a 14,05g. superior a 21,6g
##d) menor do que 21,6g, pois esse intervalo equivale a 75% do total
##e) Por ter um desvio padrão maior, o sambaqui  apresenta
##pesos de carne de mexilhão absolutamente menos homogêneos que o manguezal.
cv_samb<-7.97/30.37*100
print(cv_samb)
cv_mang<-6.32/18.59*100
print(cv_mang)
##f) Pela análise do coeficiente de variação é possível verificar,
## justamente o oposto da conclusão a partir do desvio padrão, ou seja,
## o sambaqui apresenta pesos de carne relativamente mais homogêneos que 
## o mangue. De modo geral, como as medidas de dispersão relativas levam em
## conta as medidas de dispersão absolutas e a média da série, acabam sendo
## medidas mais adequadas para serem analisadas.
## g) Sim, essa é uma conclusão que pode ser tirada com base em dois aspectos: nos dados
## estatísticos, uma vez que o sambaqui apresenta pesos maiores e mais estáveis,
## enquanto o manguezal apresenta pesos menores e mais variados; nos conceitos da biologia,
## os sambaquis favorecem o crescimento estável dos mexilhões por ser uma região com grande
## concentração de matéria orgânica acumulada dirante muitos anos, já os mangues tendem a ser
## regiões com pouco oxigênio e alta concentração de sal, o que desfavorece a sobrevivência
## de muitas espécies.

#Ex 03
#a) O número de vezes que os estudantes da USP prestaram o vestibular da FUVEST, sendo esta uma
## variável quantitativa discreta
ex3<-c(rep(1, 75), rep(2, 47), rep(3, 21), rep(4, 7))
mean(ex3)
summary(ex3)
ex3as.factor(ex3)
median(ex3)
moda <- function(x) {
  z <- table(as.vector(x))
  names(z)[z == max(z)]
}
moda(ex3)
sd(ex3)
print(var(ex3))

a <- 5000 + 150*1
b <- 5000+150*2
c<-5000+150*3
d<-5000+150*4
ex3c<-c(rep(a, 75), rep(b, 47), rep(c, 21), rep(d, 7))
mean(ex3c)
median(ex3c)
moda(ex3c)
sd(ex3c)
print(var(ex3c))

#Ex 04
library(agricolae)
classeDPPH<- c(5.0,8.0,8.5,9.0,9.5,10.0,10.5)
fr<- c(40,82,120,180,136,42)
graph.freq(classeDPPH,counts=fr,frequency=3)
graph.freq(classeDPPH,counts=fr)
##Nesse caso, como os intervalos entre as classes de DPPH são
##diferentes uns dos outros, o histograma pelo método de densidade
##seria o mais adequado, tendo em vista que ele realiza os cáluclos
##levando em conta as frequências relativas e não as absolutas.

#Ex 05
ex5<-read_excel("CopaDoMundo.xls")
Gols2014 <- ex5$Gols2014
mean(Gols2014)
median(Gols2014)
print(var(Gols2014))
sd(Gols2014)
cv <- function(x) sd(x)/mean(x)*100
cv(Gols2014)
Gols2018<-ex5$Gols2018
mean(Gols2018)
median(Gols2018)
print(var(Gols2018))
sd(Gols2018)
cv(Gols2018)

Saldo2014<-ex5$Saldo2014
Saldo2018<-ex5$Saldo2018
mean(Saldo2014)
median(Saldo2014)
print(var(Saldo2014))
sd(Saldo2014)
cv(Saldo2014)
mean(Saldo2018)
median(Saldo2018)
print(var(Saldo2018))
sd(Saldo2018)
cv(Saldo2018)

boxplot(Gols2014)
boxplot(Gols2018)
#Dispersão: maior em 2014
#Pontos extremos: maior amplitude entre pontos extremos em 2014, sendo que em 2018 houveram valores discrepantes
#Mediana: mais centralizada em 2018
#Simetria dos dados: maior simetria em 2018

boxplot(Saldo2014)
boxplot(Saldo2018)
#Dispersão: maior em 2014
#Pontos extremos: maior amplitude entre os pontos extremos em 2018, sendo que em 2014 há 2 valores discrepante e em 2018 há um
#Mediana: aparenta ser similar entre os dois níveis --> concentração dos números no intervalo entre o primero valor e o primeiro quartil
#Simetria dos dados: intervalo interquartil centralizadado, mas a mediana revela uma certa concentração de valores no início da série; aparenta ser similar entre os dois níveis

#Ex 06
#a) Tipo de diálise (qualitativa nominal), número de pacientes com doença renal cujo tratamento é pago pelo SUS
#(quantitativa discreta) e número de pacientes com doença renal cujo tratamento não é pago pelo SUS (quantitativa
#discreta)
ex6<-read_excel("dialise.xlsx")
pie(table(ex6$SUS))
pie(table(ex6$NãoSUS))
#b) Sim, eu diria que as distribuições do tipo de diálise são diferentes no caso dos pacientes do SUS e
#dos pacientes cujo tratamento é pago por outras fontes, principalmente na hemodiálise diária,
#a qual aparenta ser mais frequente entre os pacientes que não são auxiliados pelo SUS.