library(readxl)
Aula_3_BD2020_CEA05P11 <- read_excel("Aula 3 BD2020 - CEA05P11.xlsx")
View(Aula_3_BD2020_CEA05P11)
attach(Aula_3_BD2020_CEA05P11)
cor(EGS_a, EGS_d)
plot(EGS_a, EGS_d)
lm(EGS_a ~ EGS_d)
?abline
reta <- lm(EGS_a ~ EGS_d)
abline(reta)

?table
table(Aula_3_BD2020_CEA05P11$Sexo, Aula_3_BD2020_CEA05P11$`Unidade da USP`)

dadosFAU<-subset(Aula_3_BD2020_CEA05P11, Aula_3_BD2020_CEA05P11$`Unidade da USP` == "FAU")
head(dadosFAU)
dim(dadosFAU)
dim(Aula_3_BD2020_CEA05P11)
attach(dadosFAU)
plot(EGS_a, EGS_d)
