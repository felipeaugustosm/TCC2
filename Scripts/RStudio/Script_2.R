# Generate Correlation
# Gera Correlação dos navegadores da classe tradicional
tradicional<- read.csv("C:/Users/felip/Documents/TCC2/Metricas_PorClasses/Resultados_Tradicional.csv", header = FALSE,
                     sep = ",")

correlacaoTrad<-cor(tradicional, method = c("spearman"))
round(correlacaoTrad, 2)

write.csv(round(correlacaoTrad, 2), file = "C:/Users/felip/Documents/TCC2/Metricas_PorClasses/Corelacao_Tradicional.csv")


# Gera Correlação dos navegadores da classe privacidade
privacidade<- read.csv("C:/Users/felip/Documents/TCC2/Metricas_PorClasses/Resultados_Privacidade.csv", header = FALSE,
                       sep = ",")

correlacaoPri<-cor(privacidade, method = c("spearman"))
round(correlacaoPri, 2)

write.csv(round(correlacaoPri, 2), file = "C:/Users/felip/Documents/TCC2/Metricas_PorClasses/Corelacao_Privacidade.csv")

# Gera Correlação dos navegadores da classe seguranca
seguranca<- read.csv("C:/Users/felip/Documents/TCC2/Metricas_PorClasses/Resultados_Seguranca.csv", header = FALSE,
                       sep = ",")
correlacaoSec<-cor(seguranca, method = c("spearman"))
round(correlacaoSec, 2)

write.csv(round(correlacaoSec, 2), file = "C:/Users/felip/Documents/TCC2/Metricas_PorClasses/Corelacao_Seguranca.csv")


