resultados<-read.csv("C:/Users/felip/Documents/TCC2/Resultados/Metricas_CSV/Resultados_Original.csv", header = FALSE,
                     sep = ",")

tradicionais<-resultados[resultados[,22]%in%c("Tradicional"),]

privacidade<-resultados[resultados[,22]%in%c("Privacidade"),]

seguranca<-resultados[resultados[,22]%in%c("Seguranca"),]

todos <-resultados[resultados[,22]%in%c("Todos"),]

path="C:/Users/felip/Documents/TCC2/Resultados/Graficos/Distribuicao/Metricas_de_Tamanho/"
extensao=".jpeg"

for(metric in 3:9){
  ditTradicionais.ecdf <- ecdf(as.numeric(as.character(tradicionais[,metric])))
  ditPrivacidade.ecdf <- ecdf(as.numeric(as.character(privacidade[,metric])))
  ditSeguranca.ecdf <- ecdf(as.numeric(as.character(seguranca[,metric])))
  ditTodos.ecdf <- ecdf(as.numeric(as.character(todos[,metric])))
  
  nameFile = paste(resultados[1,metric], extensao)
  pathnameFile = paste(path, nameFile)
  jpeg(filename = pathnameFile, width = 1000, height = 1000)
  par(mar=c(5.1, 5.1, 4.1, 12.5), xpd=TRUE)
  if(metric==3){
    plot(ditTradicionais.ecdf, ylab="Distribui��o", xlab="M�trica LOC (M�dia por pacote)", verticals=TRUE, pch=46, cex.axis = 2, cex.lab=2.5, col="yellow", las=1, main="")
    lines(ditPrivacidade.ecdf, verticals=TRUE, pch=45, col="orange")
    lines(ditSeguranca.ecdf, verticals=TRUE, pch=44, col="blue")
    lines(ditTodos.ecdf, verticals=TRUE, pch=43, col="red")
    legend("topright", inset=c(-0.23,0), legend=c("Tradicionais", "Privacidade", "Seguran�a", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:2, cex=1.5)
  }
  else if(metric==4){
    plot(ditTradicionais.ecdf, ylab="Distribui��o", xlab="M�trica LOC Groovy", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="yellow", las=1, main="")
    lines(ditPrivacidade.ecdf, verticals=TRUE, pch=45, col="orange")
    lines(ditSeguranca.ecdf, verticals=TRUE, pch=44, col="blue")
    lines(ditTodos.ecdf, verticals=TRUE, pch=43, col="red")
    legend("topright", inset=c(-0.23,0), legend=c("Tradicionais", "Privacidade", "Seguran�a", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:2, cex=1.1)
  }
  else if(metric==5){
    par(mar=c(5.1, 5.1, 4.1, 12.5), xpd=TRUE)
    plot(ditTradicionais.ecdf, ylab="Distribui��o", xlab="M�trica LOC HTML", verticals=TRUE, pch=46, cex.axis = 2, cex.lab=2.5, col="yellow", las=1, main="")
    lines(ditPrivacidade.ecdf, verticals=TRUE, pch=45, col="orange")
    lines(ditSeguranca.ecdf, verticals=TRUE, pch=44, col="blue")
    lines(ditTodos.ecdf, verticals=TRUE, pch=43, col="red")
    legend("topright", inset=c(-0.23,0), legend=c("Tradicionais", "Privacidade", "Seguran�a", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:5, cex=1.5)
  }
  else if(metric==6){
    plot(ditTradicionais.ecdf, ylab="Distribui��o", xlab="M�trica LOC Java", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="yellow", las=1, main="")
    lines(ditPrivacidade.ecdf, verticals=TRUE, pch=45, col="orange")
    lines(ditSeguranca.ecdf, verticals=TRUE, pch=44, col="blue")
    lines(ditTodos.ecdf, verticals=TRUE, pch=43, col="red")
    legend("topright", inset=c(-0.23,0), legend=c("Tradicionais", "Privacidade", "Seguran�a", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:3, cex=2)
  }
  else if(metric==7){
    par(mar=c(5.1, 5.1, 4.1, 16.5), xpd=TRUE)
    plot(ditTradicionais.ecdf, ylab="Distribui��o", xlab="M�trica LOC Kotlin", verticals=TRUE, pch=46, cex.axis = 2, cex.lab=2.5, col="yellow", las=1, main="")
    lines(ditPrivacidade.ecdf, verticals=TRUE, pch=45, col="orange")
    lines(ditSeguranca.ecdf, verticals=TRUE, pch=44, col="blue")
    lines(ditTodos.ecdf, verticals=TRUE, pch=43, col="red")
    legend("topright", inset=c(-0.33,0), legend=c("Tradicionais", "Privacidade", "Seguran�a", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:3, cex=2)
  }
  else if(metric==8){
    plot(ditTradicionais.ecdf, ylab="Distribui��o", xlab="M�trica LOC XML", verticals=TRUE, pch=46, cex.axis = 2, cex.lab=2.5, col="yellow", las=1, main="", xlim = c(0, 40000))
    lines(ditPrivacidade.ecdf, verticals=TRUE, pch=45, col="orange")
    lines(ditSeguranca.ecdf, verticals=TRUE, pch=44, col="blue")
    lines(ditTodos.ecdf, verticals=TRUE, pch=43, col="red")
    legend("topright", inset=c(-0.23,0), legend=c("Tradicionais", "Privacidade", "Seguran�a", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:2, cex=1.5)
  }
  else if(metric==9){
    plot(ditTradicionais.ecdf, ylab="Distribui��o", xlab="M�trica LOC", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="yellow", las=1, main="")
    lines(ditPrivacidade.ecdf, verticals=TRUE, pch=45, col="orange")
    lines(ditSeguranca.ecdf, verticals=TRUE, pch=44, col="blue")
    lines(ditTodos.ecdf, verticals=TRUE, pch=43, col="red")
    legend("topright", inset=c(-0.23,0), legend=c("Tradicionais", "Privacidade", "Seguran�a", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:2, cex=1.5)
  }
  dev.off()
}


path="C:/Users/felip/Documents/TCC2/Resultados/Graficos/Distribuicao/Metricas_Acoplamento/"

for(metric in 10:15){
  ditTradicionais.ecdf <- ecdf(as.numeric(as.character(tradicionais[,metric])))
  ditPrivacidade.ecdf <- ecdf(as.numeric(as.character(privacidade[,metric])))
  ditSeguranca.ecdf <- ecdf(as.numeric(as.character(seguranca[,metric])))
  ditTodos.ecdf <- ecdf(as.numeric(as.character(todos[,metric])))
  
  nameFile = paste(resultados[1,metric], extensao)
  pathnameFile = paste(path, nameFile)
  jpeg(filename = pathnameFile, width = 1000, height = 1000)
  par(mar=c(5.1, 5.1, 4.1, 12.5), xpd=TRUE)
  if(metric==10){
    plot(ditTradicionais.ecdf, ylab="Distribui��o", xlab="M�trica AHF", col="yellow", cex.axis = 2, cex.lab=2.5, xlim = c(0, 100), las=1, main="", verticals=TRUE, do.points=FALSE)
    lines(ditPrivacidade.ecdf, col="orange", verticals=TRUE, do.points=FALSE)
    lines(ditSeguranca.ecdf, col="blue", verticals=TRUE, do.points=FALSE)
    lines(ditTodos.ecdf, col="red", verticals=TRUE, do.points=FALSE)
    legend("topright", inset=c(-0.23,0), legend=c("Tradicionais", "Privacidade", "Seguran�a", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:2, cex=1.5)
  }
  else if(metric==11){
    plot(ditTradicionais.ecdf, ylab="Distribui��o", xlab="M�trica AiF", col="yellow", cex.axis = 2, cex.lab=2.5, xlim = c(0, 100), las=1, main="", verticals=TRUE, do.points=FALSE)
    lines(ditPrivacidade.ecdf, col="orange", verticals=TRUE, do.points=FALSE)
    lines(ditSeguranca.ecdf, col="blue", verticals=TRUE, do.points=FALSE)
    lines(ditTodos.ecdf, col="red", verticals=TRUE, do.points=FALSE)
    legend("topright", inset=c(-0.23,0), legend=c("Tradicionais", "Privacidade", "Seguran�a", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:2, cex=1.5)
  }
  else if(metric==12){
    plot(ditTradicionais.ecdf, ylab="Distribui��o", xlab="M�trica CF", col="yellow", cex.axis = 1, cex.lab=1.5, xlim = c(0, 100), las=1, main="", verticals=TRUE, do.points=FALSE)
    lines(ditPrivacidade.ecdf, col="orange", verticals=TRUE, do.points=FALSE)
    lines(ditSeguranca.ecdf, col="blue", verticals=TRUE, do.points=FALSE)
    lines(ditTodos.ecdf, col="red", verticals=TRUE, do.points=FALSE)
    legend("topright", inset=c(-0.23,0), legend=c("Tradicionais", "Privacidade", "Seguran�a", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:2, cex=1.5)
  }
  else if(metric==13){
    plot(ditTradicionais.ecdf, ylab="Distribui��o", xlab="M�trica MHF", col="yellow", cex.axis = 2, cex.lab=2.5, xlim = c(0, 100), las=1, main="", verticals=TRUE, do.points=FALSE)
    lines(ditPrivacidade.ecdf, col="orange", verticals=TRUE, do.points=FALSE)
    lines(ditSeguranca.ecdf, col="blue", verticals=TRUE, do.points=FALSE)
    lines(ditTodos.ecdf, col="red", verticals=TRUE, do.points=FALSE)
    legend("topright", inset=c(-0.23,0), legend=c("Tradicionais", "Privacidade", "Seguran�a", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:2, cex=1.5)
  }
  else if(metric==14){
    plot(ditTradicionais.ecdf, ylab="Distribui��o", xlab="M�trica MIF", col="yellow", cex.axis = 2, cex.lab=2.5, xlim = c(0, 100), las=1, main="", verticals=TRUE, do.points=FALSE)
    lines(ditPrivacidade.ecdf, col="orange", verticals=TRUE, do.points=FALSE)
    lines(ditSeguranca.ecdf, col="blue", verticals=TRUE, do.points=FALSE)
    lines(ditTodos.ecdf, col="red", verticals=TRUE, do.points=FALSE)
    legend("topright", inset=c(-0.23,0), legend=c("Tradicionais", "Privacidade", "Seguran�a", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:2, cex=1.5)
  }
  else if(metric==15){
    plot(ditTradicionais.ecdf, ylab="Distribui��o", xlab="M�trica PF", col="yellow", cex.axis = 1, cex.lab=1.5, xlim = c(0, 100), las=1, main="", verticals=TRUE, do.points=FALSE)
    lines(ditPrivacidade.ecdf, col="orange", verticals=TRUE, do.points=FALSE)
    lines(ditSeguranca.ecdf, col="blue", verticals=TRUE, do.points=FALSE)
    lines(ditTodos.ecdf, col="red", verticals=TRUE, do.points=FALSE)
    legend("topright", inset=c(-0.23,0), legend=c("Tradicionais", "Privacidade", "Seguran�a", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:2, cex=1.5)
  }
  dev.off()
}

path="C:/Users/felip/Documents/TCC2/Resultados/Graficos/Distribuicao/Metricas_Estruturais/"

for(metric in 16:21){
  ditTradicionais.ecdf <- ecdf(as.numeric(as.character(tradicionais[,metric])))
  ditPrivacidade.ecdf <- ecdf(as.character(as.numeric(privacidade[,metric])))
  ditSeguranca.ecdf <- ecdf(as.character(as.numeric(seguranca[,metric])))
  ditTodos.ecdf <- ecdf(as.character(as.numeric(todos[,metric])))
  
  nameFile = paste(resultados[1,metric], extensao)
  pathnameFile = paste(path, nameFile)
  jpeg(filename = pathnameFile, width = 1000, height = 1000)
  par(mar=c(5.1, 5.1, 4.1, 12.5), xpd=TRUE)
  if(metric==16){
    plot(ditTradicionais.ecdf, ylab="Distribui��o", xlab="M�trica CBO", pch=46, cex.axis = 1, cex.lab=1.5, xlim = c(0, 12), col="yellow", las=1, main="")
    lines(ditPrivacidade.ecdf,  pch=45, col="orange")
    lines(ditSeguranca.ecdf, pch=44, col="blue")
    lines(ditTodos.ecdf, verticals=TRUE, pch=43, col="red")
    legend("topright", inset=c(-0.23,0), legend=c("Tradicionais", "Privacidade", "Seguran�a", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:2, cex=1.5)
  }
  else if(metric==17){
    plot(ditTradicionais.ecdf, ylab="Distribui��o", xlab="M�trica DIT", verticals=TRUE, pch=46, cex.axis = 2, cex.lab=2.5, xlim = c(0, 10), col="yellow", las=1, main="")
    lines(ditPrivacidade.ecdf, verticals=TRUE, pch=45, col="orange")
    lines(ditSeguranca.ecdf, verticals=TRUE, pch=44, col="blue")
    lines(ditTodos.ecdf, verticals=TRUE, pch=43, col="red")
    legend("topright", inset=c(-0.23,0), legend=c("Tradicionais", "Privacidade", "Seguran�a", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:2, cex=1.5)
  }
  else if(metric==18){
    plot(ditTradicionais.ecdf, ylab="Distribui��o", xlab="M�trica LCOM", verticals=TRUE, pch=46, cex.axis = 2, cex.lab=2.5, xlim = c(0, 10), col="yellow", las=1, main="")
    lines(ditPrivacidade.ecdf, verticals=TRUE, pch=45, col="orange")
    lines(ditSeguranca.ecdf, verticals=TRUE, pch=44, col="blue")
    lines(ditTodos.ecdf, verticals=TRUE, pch=43, col="red")
    legend("topright", inset=c(-0.23,0), legend=c("Tradicionais", "Privacidade", "Seguran�a", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:2, cex=1.5)
  }
  else if(metric==19){
    plot(ditTradicionais.ecdf, ylab="Distribui��o", xlab="M�trica NOC", verticals=TRUE, pch=46, cex.axis = 2, cex.lab=2.5, xlim = c(0, 15), col="yellow", las=1, main="")
    lines(ditPrivacidade.ecdf, verticals=TRUE, pch=45, col="orange")
    lines(ditSeguranca.ecdf, verticals=TRUE, pch=44, col="blue")
    lines(ditTodos.ecdf, verticals=TRUE, pch=43, col="red")
    legend("topright", inset=c(-0.23,0), legend=c("Tradicionais", "Privacidade", "Seguran�a", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:2, cex=1.5)
  }
  else if(metric==20){
    plot(ditTradicionais.ecdf, ylab="Distribui��o", xlab="M�trica RFC", verticals=TRUE, pch=46, cex.axis = 2, cex.lab=2.5, xlim = c(0, 60), col="yellow", las=1, main="")
    lines(ditPrivacidade.ecdf, verticals=TRUE, pch=45, col="orange")
    lines(ditSeguranca.ecdf, verticals=TRUE, pch=44, col="blue")
    lines(ditTodos.ecdf, verticals=TRUE, pch=43, col="red")
    legend("topright", inset=c(-0.23,0), legend=c("Tradicionais", "Privacidade", "Seguran�a", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:2, cex=1.5)
  }
  else if(metric==21){
    plot(ditTradicionais.ecdf, ylab="Distribui��o", xlab="M�trica WMC", verticals=TRUE, pch=46, cex.axis = 2, cex.lab=2.5, xlim = c(0, 50), col="yellow", las=1, main="")
    lines(ditPrivacidade.ecdf, verticals=TRUE, pch=45, col="orange")
    lines(ditSeguranca.ecdf, verticals=TRUE, pch=44, col="blue")
    lines(ditTodos.ecdf, verticals=TRUE, pch=43, col="red")
    legend("topright", inset=c(-0.23,0), legend=c("Tradicionais", "Privacidade", "Seguran�a", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:2, cex=1.5)
  }
  dev.off()
}
