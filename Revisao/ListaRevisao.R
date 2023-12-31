#Exercício 1
ex1<-c(146.2, 143.9, 140.7, 145.3, 144.5, 145.2, 143.6, 149.3, 145.4, 152.3, 146.2, 142.6 , 151.8, 146.4, 140.0, 144.9, 149.3, 141.9, 159.9)
mean(ex1)
cv <- function(x) sd(x)/mean(x)
cv(ex1[1:10])
cv(ex1[11:19])
boxplot(ex1)

#Exercício 2
ex2<-read.csv(file = "Ex2.csv",
              header = TRUE,                      
              sep = ",",                         
              fill = TRUE,                       
              as.is = TRUE)
print(ex2)
attach(ex2)
plot(Escore ~ Idade)
cor(Escore, Idade)
reta<- lm(Escore ~ Idade)
print(reta)
abline(reta)
109.87 - 1.127*24

#Exercício 4
dbinom(1, 20, 0.04)
pbinom(2, 20, 0.04, lower.tail = TRUE)
