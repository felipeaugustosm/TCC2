resultados<-read.csv("C:/Users/felip/Documents/TCC2/Resultados/Metricas_CSV/Resultados_Original.csv", header = FALSE,
                     sep = ",")

tradicionais<-resultados[resultados[,22]%in%c("Tradicional"),]

privacidade<-resultados[resultados[,22]%in%c("Privacidade"),]

seguranca<-resultados[resultados[,22]%in%c("Seguranca"),]

todos <-resultados[resultados[,22]%in%c("Todos"),]

path="C:/Users/felip/Documents/TCC2/Resultados/Graficos/Distribuicao/Metricas_de_Tamanho/"
extensao=".jpeg"

for(metric in 3:9){
  ditTradicionais <- ecdf(as.numeric(as.character(tradicionais[,metric])))
  ditPrivacidade <- ecdf(as.numeric(as.character(privacidade[,metric])))
  ditSeguranca <- ecdf(as.numeric(as.character(seguranca[,metric])))
  ditTodos <- ecdf(as.numeric(as.character(todos[,metric])))
  
  nameFile = paste(resultados[1,metric], extensao)
  pathnameFile = paste(path, nameFile)
  jpeg(filename = pathnameFile)
  #    par(mfrow=c(2, 2))
  if(metric==3){
    plot(ditTradicionais, ylab="Distribuição", xlab="Métrica LOC (Média por pacote)", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1, main="")
    lines(ditPrivacidade, verticals=TRUE, pch=45, col="darkkhaki")
    lines(ditSeguranca, verticals=TRUE, pch=44, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=43, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "darkkhaki", "seashell2", "purple"), lty=1:2, cex=1.5)
  }
  else if(metric==4){
    plot(ditTradicionais, ylab="Distribuição", xlab="Métrica LOC Groovy", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1, main="")
    lines(ditPrivacidade, verticals=TRUE, pch=45, col="darkkhaki")
    lines(ditSeguranca, verticals=TRUE, pch=44, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=43, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "darkkhaki", "seashell2", "purple"), lty=1:2, cex=1.5)
  }
  else if(metric==5){
    plot(ditTradicionais, ylab="Distribuição", xlab="Métrica LOC HTML", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1, main="")
    lines(ditPrivacidade, verticals=TRUE, pch=45, col="darkkhaki")
    lines(ditSeguranca, verticals=TRUE, pch=44, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=43, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "darkkhaki", "seashell2", "purple"), lty=1:2, cex=1.5)
  }
  else if(metric==6){
    plot(ditTradicionais, ylab="Distribuição", xlab="Métrica LOC Java", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1, main="")
    lines(ditPrivacidade, verticals=TRUE, pch=45, col="darkkhaki")
    lines(ditSeguranca, verticals=TRUE, pch=44, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=43, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "darkkhaki", "seashell2", "purple"), lty=1:2, cex=1.5)
  }
  else if(metric==7){
    plot(ditTradicionais, ylab="Distribuição", xlab="Métrica LOC Kotlin", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1, main="")
    lines(ditPrivacidade, verticals=TRUE, pch=45, col="darkkhaki")
    lines(ditSeguranca, verticals=TRUE, pch=44, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=43, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "darkkhaki", "seashell2", "purple"), lty=1:2, cex=1.5)
  }
  else if(metric==8){
    plot(ditTradicionais, ylab="Distribuição", xlab="Métrica LOC XML", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1, main="")
    lines(ditPrivacidade, verticals=TRUE, pch=45, col="darkkhaki")
    lines(ditSeguranca, verticals=TRUE, pch=44, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=43, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "darkkhaki", "seashell2", "purple"), lty=1:2, cex=1.5)
  }
  else if(metric==9){
    plot(ditTradicionais, ylab="Distribuição", xlab="Métrica LOC", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1, main="")
    lines(ditPrivacidade, verticals=TRUE, pch=45, col="darkkhaki")
    lines(ditSeguranca, verticals=TRUE, pch=44, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=43, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "darkkhaki", "seashell2", "purple"), lty=1:2, cex=1.5)
  }
  dev.off()
}


path="C:/Users/felip/Documents/TCC2/Resultados/Graficos/Distribuicao/Metricas_Acoplamento/"

for(metric in 10:15){
  ditTradicionais <- ecdf(as.numeric(as.character(tradicionais[,metric])))
  ditPrivacidade <- ecdf(as.numeric(as.character(privacidade[,metric])))
  ditSeguranca <- ecdf(as.numeric(as.character(seguranca[,metric])))
  ditTodos <- ecdf(as.numeric(as.character(todos[,metric])))
  
  nameFile = paste(resultados[1,metric], extensao)
  pathnameFile = paste(path, nameFile)
  jpeg(filename = pathnameFile)
  if(metric==10){
    plot(ditTradicionais, ylab="Distribuição", xlab="Métrica AHF", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1, main="")
    lines(ditPrivacidade, verticals=TRUE, pch=45, col="darkkhaki")
    lines(ditSeguranca, verticals=TRUE, pch=44, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=43, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "darkkhaki", "seashell2", "purple"), lty=1:2, cex=1.5)
  }
  else if(metric==11){
    plot(ditTradicionais, ylab="Distribuição", xlab="Métrica AIF", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1, main="")
    lines(ditPrivacidade, verticals=TRUE, pch=45, col="darkkhaki")
    lines(ditSeguranca, verticals=TRUE, pch=44, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=43, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "darkkhaki", "seashell2", "purple"), lty=1:2, cex=1.5)
  }
  else if(metric==12){
    plot(ditTradicionais, ylab="Distribuição", xlab="Métrica CF", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1, main="")
    lines(ditPrivacidade, verticals=TRUE, pch=45, col="darkkhaki")
    lines(ditSeguranca, verticals=TRUE, pch=44, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=43, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "darkkhaki", "seashell2", "purple"), lty=1:2, cex=1.5)
  }
  else if(metric==13){
    plot(ditTradicionais, ylab="Distribuição", xlab="Métrica MHF", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1, main="")
    lines(ditPrivacidade, verticals=TRUE, pch=45, col="darkkhaki")
    lines(ditSeguranca, verticals=TRUE, pch=44, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=43, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "darkkhaki", "seashell2", "purple"), lty=1:2, cex=1.5)
  }
  else if(metric==14){
    plot(ditTradicionais, ylab="Distribuição", xlab="Métrica MIF", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1, main="")
    lines(ditPrivacidade, verticals=TRUE, pch=45, col="darkkhaki")
    lines(ditSeguranca, verticals=TRUE, pch=44, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=43, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "darkkhaki", "seashell2", "purple"), lty=1:2, cex=1.5)
  }
  else if(metric==15){
    plot(ditTradicionais, ylab="Distribuição", xlab="Métrica PF", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1, main="")
    lines(ditPrivacidade, verticals=TRUE, pch=45, col="darkkhaki")
    lines(ditSeguranca, verticals=TRUE, pch=44, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=43, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "darkkhaki", "seashell2", "purple"), lty=1:2, cex=1.5)
  }
  dev.off()
}

path="C:/Users/felip/Documents/TCC2/Resultados/Graficos/Distribuicao/Metricas_Estruturais/"

for(metric in 16:21){
  ditTradicionais <- ecdf(as.numeric(as.character(tradicionais[,metric])))
  ditPrivacidade <- ecdf(as.character(as.numeric(privacidade[,metric])))
  ditSeguranca <- ecdf(as.character(as.numeric(seguranca[,metric])))
  ditTodos <- ecdf(as.character(as.numeric(todos[,metric])))
  
  nameFile = paste(resultados[1,metric], extensao)
  pathnameFile = paste(path, nameFile)
  jpeg(filename = pathnameFile)
  if(metric==16){
    plot(ditTradicionais, ylab="Distribuição", xlab="Métrica CBO", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1, main="")
    lines(ditPrivacidade, verticals=TRUE, pch=45, col="darkkhaki")
    lines(ditSeguranca, verticals=TRUE, pch=44, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=43, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "darkkhaki", "seashell2", "purple"), lty=1:2, cex=1.5)
  }
  else if(metric==17){
    plot(ditTradicionais, ylab="Distribuição", xlab="Métrica DIT", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1, main="")
    lines(ditPrivacidade, verticals=TRUE, pch=45, col="darkkhaki")
    lines(ditSeguranca, verticals=TRUE, pch=44, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=43, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "darkkhaki", "seashell2", "purple"), lty=1:2, cex=1.5)
  }
  else if(metric==18){
    plot(ditTradicionais, ylab="Distribuição", xlab="Métrica LCOM", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1, main="")
    lines(ditPrivacidade, verticals=TRUE, pch=45, col="darkkhaki")
    lines(ditSeguranca, verticals=TRUE, pch=44, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=43, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "darkkhaki", "seashell2", "purple"), lty=1:2, cex=1.5)
  }
  else if(metric==19){
    plot(ditTradicionais, ylab="Distribuição", xlab="Métrica NOC", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1, main="")
    lines(ditPrivacidade, verticals=TRUE, pch=45, col="darkkhaki")
    lines(ditSeguranca, verticals=TRUE, pch=44, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=43, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "darkkhaki", "seashell2", "purple"), lty=1:2, cex=1.5)
  }
  else if(metric==20){
    plot(ditTradicionais, ylab="Distribuição", xlab="Métrica RFC", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1, main="")
    lines(ditPrivacidade, verticals=TRUE, pch=45, col="darkkhaki")
    lines(ditSeguranca, verticals=TRUE, pch=44, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=43, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "darkkhaki", "seashell2", "purple"), lty=1:2, cex=1.5)
  }
  else if(metric==21){
    plot(ditTradicionais, ylab="Distribuição", xlab="Métrica WMC", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1, main="")
    lines(ditPrivacidade, verticals=TRUE, pch=45, col="darkkhaki")
    lines(ditSeguranca, verticals=TRUE, pch=44, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=43, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "darkkhaki", "seashell2", "purple"), lty=1:2, cex=1.5)
  }
  dev.off()
}
