## Atividade 4.1

dados = c(25, 26, 20, 23, 21,
          31, 25, 28, 27, 24,
          22, 26, 28, 25, 29, 
          33, 29, 31, 34, 28)

tratamento = factor(rep(1:4, each = 5), label = c ("A", "B", "C", "D"))
tratamento
 
boxplot(dados ~ tratamento, col = c (1,2,3,4))

modelo  = aov(dados ~ tratamento) 
summary(modelo)

# Considerando o resultado de Pvalor, representado pelo parâmento Pr 
# da tabela resumo mostrada pela função summary, é rejeitada a hipótese de 
# igualdade de médias, considerando o nível de significância de 5% e que
# Fcal = 7.798 é > Ftabelado = 3.06

install.packages("laercio")
require(laercio)
LTukey(modelo, which = "tratamento", conf.level = 0.95)
  