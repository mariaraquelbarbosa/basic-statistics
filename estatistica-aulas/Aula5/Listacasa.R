##Exercicio 2
pbinom(44, 50, 0.99, lower.tail = FALSE)
1 - pbinom(44, 50, 0.99)

##Exercicio 3
#exatamente 8
dbinom(8, 10, 0.95)

#pelo menos 6
pbinom(5, 10, 0.95, lower.tail = FALSE)

#no máximo 5
pbinom(5, 10, 0.95, lower.tail = TRUE)

#entre 5 e 8
x <- pbinom(8, 10, 0.95, lower.tail = TRUE)
y <- pbinom(5, 10, 0.95, lower.tail = TRUE)
x - y

#média
10 * 0.95

#variância
10 * 0.95 * 0.05

##Exercicio 4
pbinom(14, 25, 0.86, lower.tail = FALSE)
pbinom(4, 25, 0.14, lower.tail = TRUE)
dbinom(0, 25, 0.14)
25*0.86

##Exercicio 5
pbinom(15, 20, 0.60, lower.tail = FALSE)

#Experimento
dbinom(6, 16, 0.25)
pbinom(6, 16, 0.25)
pbinom(6, 16, 0.25, lower.tail = TRUE)
##Se não especificar lower.tail, o programa entrente como TRUE