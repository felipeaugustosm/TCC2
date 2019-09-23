resultados<-read.csv("C:/Users/felip/Documents/TCC2/Resultados/Metricas_CSV/Resultados_Original.csv", header = TRUE,
                     sep = ",")

cabecalho<-read.csv("C:/Users/felip/Documents/TCC2/Resultados/Metricas_CSV/Resultados_Original.csv", header = FALSE,
                    sep = ",")

tradicionais<-subset(resultados, resultados[,22]==c("Tradicional"))

privacidade<-subset(resultados, resultados[,22]==c("Privacidade"))

seguranca<-subset(resultados, resultados[,22]==c("Seguranca"))

todos <-subset(resultados, resultados[,22]==c("Todos"))

path="C:/Users/felip/Documents/TCC2/Resultados/Graficos/Médias_Metricas/Metricas_de_Tamanho/"
extensao=".jpeg"

for(metric in 3:9){
  ditTradicionais <- mean(tradicionais[,metric])
  ditPrivacidade <- mean(privacidade[,metric])
  ditSeguranca <- mean(seguranca[,metric])
  ditTodos <- mean(todos[,metric])
  
  vecPlot <- c(ditTradicionais, ditPrivacidade, ditSeguranca, ditTodos)
  vecLegends <- c("Tradicional", "Privacidade", "Seguranca", "Todos")
  
  
  nameFile = paste(cabecalho[1,metric], extensao)
  pathnameFile = paste(path, nameFile)
  
  jpeg(filename = pathnameFile, width = 500, height = 500)
    barplot(as.vector(vecPlot), col=c("red","blue","green", "orange"),
            ylab="Médias",
            xlab="Classes",
            main=cabecalho[1,metric])
    legend("topright", legend=vecLegends,
           col=c("red","blue","green", "orange"))
  dev.off()
}

path="C:/Users/felip/Documents/TCC2/Resultados/Graficos/Médias_Metricas/Metricas_Acoplamento/"

for(metric in 10:15){
  ditTradicionais <- mean(tradicionais[,metric])
  ditPrivacidade <- mean(privacidade[,metric])
  ditSeguranca <- mean(seguranca[,metric])
  ditTodos <- mean(todos[,metric])
  
  vecPlot <- c(ditTradicionais, ditPrivacidade, ditSeguranca, ditTodos)
  vecLegends <- c("Tradicional", "Privacidade", "Seguranca", "Todos")
  
  
  nameFile = paste(cabecalho[1,metric], extensao)
  pathnameFile = paste(path, nameFile)
  
  jpeg(filename = pathnameFile, width = 500, height = 500)
  barplot(as.vector(vecPlot), col=c("red","blue","green", "orange"),
          ylab="Médias",
          xlab="Classes",
          main=cabecalho[1,metric])
  legend("topright", legend=vecLegends,
         col=c("red","blue","green", "orange"))
  dev.off()
}


path="C:/Users/felip/Documents/TCC2/Resultados/Graficos/Médias_Metricas/Metricas_Estruturais/"

for(metric in 16:21){
  ditTradicionais <- mean(tradicionais[,metric])
  ditPrivacidade <- mean(privacidade[,metric])
  ditSeguranca <- mean(seguranca[,metric])
  ditTodos <- mean(todos[,metric])
  
  vecPlot <- c(ditTradicionais, ditPrivacidade, ditSeguranca, ditTodos)
  vecLegends <- c("Tradicional", "Privacidade", "Seguranca", "Todos")
  
  
  nameFile = paste(cabecalho[1,metric], extensao)
  pathnameFile = paste(path, nameFile)
  
  jpeg(filename = pathnameFile, width = 500, height = 500)
  barplot(as.vector(vecPlot), col=c("red","blue","green", "orange"),
          ylab="Médias",
          xlab="Classes",
          main=cabecalho[1,metric])
  legend("topright", legend=vecLegends,
         col=c("red","blue","green", "orange"))
  dev.off()
}