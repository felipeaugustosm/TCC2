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
#    par(mfrow=c(2, 2))
    plot(ditTradicionais, xlab=resultados[1,metric], ylab="Quantidade", main="", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1)
    lines(ditPrivacidade, verticals=TRUE, pch=45, col="khaki")
    lines(ditSeguranca, verticals=TRUE, pch=44, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=43, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "khaki", "seashell2", "purple"), lty=1:2, cex=1.5)

    if(metric==3){
      title("(a) Métrica LOC (Média por pacote)", main = "")  
    }
    else if(metric==4){
      title("(b) Métrica LOC Groovy", main = "")  
    }
    else if(metric==5){
      title("(a) Métrica LOC HTML", main = "")  
    }
    else if(metric==6){
      title("(a) Métrica LOC Java", main = "")  
    }
    else if(metric==7){
      title("(b) Métrica LOC Kotlin", main = "")  
    }
    else if(metric==8){
      title("(b) Métrica LOC XML", main = "")  
    }
    else if(metric==9){
      title("(b) Métrica LOC", main = "")  
    }
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
    plot(ditTradicionais, xlab=resultados[1,metric], ylab="Quantidade", main="", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1)
    lines(ditPrivacidade, verticals=TRUE, pch=46, col="khaki")
    lines(ditSeguranca, verticals=TRUE, pch=46, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=46, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "khaki", "seashell2", "purple"), lty=1:2, cex=1.5)

    if(metric==10){
      title("(a) Métrica AHF", main = "")  
    }
    else if(metric==11){
      title("(b) Métrica AIF", main = "")  
    }
    else if(metric==12){
      title("(a) Métrica CF", main = "")  
    }
    else if(metric==13){
      title("(b) Métrica MHF", main = "")  
    }
    else if(metric==14){
      title("(a) Métrica MIF", main = "")  
    }
    else if(metric==15){
      title("(b) Métrica PF", main = "")  
    }
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
    plot(ditTradicionais, xlab=resultados[1,metric], ylab="Quantidade", main="", verticals=TRUE, pch=46, cex.axis = 1, cex.lab=1.5, col="red", las=1)
    lines(ditPrivacidade, verticals=TRUE, pch=46, col="khaki")
    lines(ditSeguranca, verticals=TRUE, pch=46, col="seashell2")
    lines(ditTodos, verticals=TRUE, pch=46, col="purple")
    legend("bottomright", legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("red", "khaki", "seashell2", "purple"), lty=1:2, cex=1.5)
    if(metric==16){
      title("(a) Métrica CBO", main = "")  
    }
    else if(metric==17){
      title("(b) Métrica DIT", main = "")  
    }
    else if(metric==18){
      title("(a) Métrica LCOM", main = "")  
    }
    else if(metric==19){
      title("(b) Métrica NOC", main = "")  
    }
    else if(metric==20){
      title("(a) Métrica RFC", main = "")  
    }
    else if(metric==21){
      title("(b) Métrica WMC", main = "")  
    }
  dev.off()
}
