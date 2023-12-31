tabela1 <- data.frame(
  temperatura = c(59, 63, 68, 72, 74, 78, 83),
  elasticidade = c(178, 182, 207, 208, 197, 215, 212))
print(tabela1)
lm(tabela1, formula = elasticidade ~ temperatura)
