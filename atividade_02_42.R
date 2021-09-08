## Atividade 4.2

dados = c ( 130, 129, 128, 126, 130,
            125, 131, 130, 129, 127,
            135, 129, 131, 128, 130)

tratamento = factor(rep(1:3, each = 5), label = c ("1", "2", "3"))
tratamento

boxplot(dados ~ tratamento, col = c("1", "2", "3"))

modelo = aov(dados ~ tratamento)
summary(modelo)

# F calculado (Fcal.) = 1.396 < F tabelado = 6.93