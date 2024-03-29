resultados<-read.csv("C:/Users/felip/Documents/TCC2/Resultados/Metricas_CSV/Resultados_Original.csv", header = TRUE,
                     sep = ",")

cabecalho<-read.csv("C:/Users/felip/Documents/TCC2/Resultados/Metricas_CSV/Resultados_Original.csv", header = FALSE,
                    sep = ",")

tradicionais<-subset(resultados, resultados[,22]==c("Tradicional"))

privacidade<-subset(resultados, resultados[,22]==c("Privacidade"))

seguranca<-subset(resultados, resultados[,22]==c("Seguranca"))

todos <-subset(resultados, resultados[,22]==c("Todos"))

path="C:/Users/felip/Documents/TCC2/Resultados/Graficos/M�dias_Metricas/Metricas_de_Tamanho/"
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
            legend = vecLegends, xlim = c(0, 7), args.legend = list(cex=1.2, bty = "n", x = "topright", ncol = 1,inset=c(0,0)),
            ylab="M�dias",
            xlab=cabecalho[1,metric], cex.axis = 0.8, cex.lab=1,
            main="", las=1)
    if(metric==3){
      title("(a) M�dia da M�trica LOC (M�dia por pacote)", main = "")  
    }
    else if(metric==4){
      title("(b) M�dia da M�trica LOC Groovy", main = "")  
    }
    else if(metric==5){
      title("(a) M�dia da M�trica LOC HTML", main = "")  
    }
    else if(metric==6){
      title("(a) M�dia da M�trica LOC Java", main = "")  
    }
    else if(metric==7){
      title("(b) M�dia da M�trica LOC Kotlin", main = "")  
    }
    else if(metric==8){
      title("(b) M�dia da M�trica LOC XML", main = "")  
    }
    else if(metric==9){
      title("(b) M�dia da M�trica LOC", main = "")  
    }    
  dev.off()
}

path="C:/Users/felip/Documents/TCC2/Resultados/Graficos/M�dias_Metricas/Metricas_Acoplamento/"

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
            legend = vecLegends, xlim = c(0, 7), args.legend = list(bty = "n", x = "topright", ncol = 1),
            ylab="M�dias",
            xlab=cabecalho[1,metric], cex.axis = 2, cex.lab=1.5,
            main="", las=1)
    if(metric==10){
      title("(a) M�dia da M�trica AHF", main = "")  
    }
    else if(metric==11){
      title("(b) M�dia da M�trica AIF", main = "")  
    }
    else if(metric==12){
      title("(a) M�dia da M�trica CF", main = "")  
    }
    else if(metric==13){
      title("(b) M�dia da M�trica MHF", main = "")  
    }
    else if(metric==14){
      title("(a) M�dia da M�trica MIF", main = "")  
    }
    else if(metric==15){
      title("(b) M�dia da M�trica PF", main = "")  
    }
  dev.off()
}


path="C:/Users/felip/Documents/TCC2/Resultados/Graficos/M�dias_Metricas/Metricas_Estruturais/"

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
          legend = vecLegends, xlim = c(0, 7), args.legend = list(bty = "n", x = "topright", ncol = 1),
          ylab=cabecalho[1,metric],
          xlab="Classes", cex.axis = 1.3, cex.lab=1.5,
          main="", las=1)
    if(metric==16){
      title("(a) M�trica CBO", main = "")  
    }
    else if(metric==17){
      title("(b) M�dia da M�trica DIT", main = "")  
    }
    else if(metric==18){
      title("(a) M�dia da M�trica LCOM", main = "")  
    }
    else if(metric==19){
      title("(b) M�dia da M�trica NOC", main = "")  
    }
    else if(metric==20){
      title("(a) M�dia da M�trica RFC", main = "")  
    }
    else if(metric==21){
      title("(b) M�dia da M�trica WMC", main = "")  
    }
  dev.off()
}