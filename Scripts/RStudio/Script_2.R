# Generate Correlation
# require(graphics)
resultado<- read.csv("C:/Users/felip/Documents/TCC2/Resultados_v2.csv", header = FALSE,
                     sep = ",")

correlacao<-cor(resultado, method = c("spearman"))

correlacao
