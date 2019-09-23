resultados<-read.csv("C:/Users/felip/Documents/TCC2/Resultados/Metricas_CSV/Resultados_Original.csv", header = FALSE,
                     sep = ",")

tradicionais<-subset(resultados, resultados[,22]==c("Tradicional"))

privacidade<-subset(resultados, resultados[,22]==c("Privacidade"))

seguranca<-subset(resultados, resultados[,22]==c("Seguranca"))

todos <-subset(resultados, resultados[,22]==c("Todos"))

path="C:/Users/felip/Documents/TCC2/Resultados/Graficos/Distribuicao/Metricas_de_Tamanho/"
extensao=".jpeg"

for(metric in 3:9){
  ditTradicionais <- ecdf(tradicionais[,metric])
  ditPrivacidade <- ecdf(privacidade[,metric])
  ditSeguranca <- ecdf(seguranca[,metric])
  ditTodos <- ecdf(todos[,metric])
  
  nameFile = paste(resultados[1,metric], extensao)
  pathnameFile = paste(path, nameFile)
  jpeg(filename = pathnameFile)
    plot(ditTradicionais,  main="Distribuição cumulativa empírica", xlab=resultados[1,metric],ylab="Quantidade", verticals=TRUE, pch=46, col="red")
    lines(ditPrivacidade, verticals=TRUE, pch=45, col="khaki")
    lines(ditSeguranca, verticals=TRUE, pch=44, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=43, col="purple")
    legend("topleft", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "khaki", "seashell2", "purple"), lty=1:2, cex=0.8)
  dev.off()
}


path="C:/Users/felip/Documents/TCC2/Resultados/Graficos/Distribuicao/Metricas_Acoplamento/"

for(metric in 10:15){
  ditTradicionais <- ecdf(tradicionais[,metric])
  ditPrivacidade <- ecdf(privacidade[,metric])
  ditSeguranca <- ecdf(seguranca[,metric])
  ditTodos <- ecdf(todos[,metric])
  
  nameFile = paste(resultados[1,metric], extensao)
  pathnameFile = paste(path, nameFile)
  jpeg(filename = pathnameFile)
  plot(ditTradicionais, main="Distribuição cumulativa empírica", xlab=resultados[1,metric],ylab="Quantidade", verticals=TRUE, pch=46, col="red")
  lines(ditPrivacidade, verticals=TRUE, pch=46, col="khaki")
  lines(ditSeguranca, verticals=TRUE, pch=46, col="seashell2")
  lines(ditTodos, verticals=TRUE, pch=46, col="purple")
  legend("topleft", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "khaki", "seashell2", "purple"), lty=1:2, cex=0.8)
  dev.off()
}

path="C:/Users/felip/Documents/TCC2/Resultados/Graficos/Distribuicao/Metricas_Estruturais/"

for(metric in 16:21){
  ditTradicionais <- ecdf(tradicionais[,metric])
  ditPrivacidade <- ecdf(privacidade[,metric])
  ditSeguranca <- ecdf(seguranca[,metric])
  ditTodos <- ecdf(todos[,metric])
  
  nameFile = paste(resultados[1,metric], extensao)
  pathnameFile = paste(path, nameFile)
  jpeg(filename = pathnameFile)
  plot(ditTradicionais, main="Distribuição cumulativa empírica", xlab=resultados[1,metric],ylab="Quantidade", verticals=TRUE, pch=46, col="red")
  lines(ditPrivacidade, verticals=TRUE, pch=46, col="khaki")
  lines(ditSeguranca, verticals=TRUE, pch=46, col="seashell2")
  lines(ditTodos, verticals=TRUE, pch=46, col="purple")
  legend("topleft", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "khaki", "seashell2", "purple"), lty=1:2, cex=0.8)
  dev.off()
}
