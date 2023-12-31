library(readxl)
dados1<-read_excel("Lista7_ex4_programas.xlsx")
as.factor(dados1$Notas)
boxplot(dados1$Notas[1:100])
boxplot(dados1$Notas[101:200])
dados1$Notas[200]
