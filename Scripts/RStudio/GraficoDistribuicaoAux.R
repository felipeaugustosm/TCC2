resultados<-read.csv("C:/Users/felip/Documents/TCC2/Resultados/Metricas_CSV/Resultados_Original.csv", header = FALSE,
                     sep = ",")

tradicionais<-resultados[resultados[,22]%in%c("Tradicional"),]

privacidade<-resultados[resultados[,22]%in%c("Privacidade"),]

seguranca<-resultados[resultados[,22]%in%c("Seguranca"),]

todos <-resultados[resultados[,22]%in%c("Todos"),]
path="C:/Users/felip/Documents/TCC2/Resultados/Graficos/Distribuicao/Nova_pasta/"
extensao=".jpeg"
for(metric in 20:20){
  ditTradicionais.ecdf <- ecdf(as.numeric(as.character(tradicionais[,metric])))
  ditPrivacidade.ecdf <- ecdf(as.numeric(as.character(privacidade[,metric])))
  ditSeguranca.ecdf <- ecdf(as.numeric(as.character(seguranca[,metric])))
  ditTodos.ecdf <- ecdf(as.numeric(as.character(todos[,metric])))
  
  nameFile = paste(resultados[1,metric], extensao)
  pathnameFile = paste(path, nameFile)

  jpeg(filename = pathnameFile, width = 1000, height = 1000)
    par(mar=c(5.1, 5.1, 4.1, 12.5), xpd=TRUE)
    plot(ditTradicionais.ecdf, verticals=TRUE, do.points=FALSE, col="yellow", ylab="Distribuição", xlab="Métrica RPC",las=1, main="", cex.axis = 2, cex.lab=2.5, xlim = c(0, 4))
    lines(ditPrivacidade.ecdf, verticals=TRUE, do.points=FALSE, col="orange");
    lines(ditSeguranca.ecdf, verticals=TRUE, do.points=FALSE, col="blue")
    lines(ditSeguranca.ecdf, verticals=TRUE, do.points=FALSE, col="red")
    legend("topright", inset=c(-0.23,0), legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:2, cex=1.5)
  dev.off()
}