require(XLConnect)
library(ggcorrplot)
wb = loadWorkbook("C:/Users/felip/Documents/TCC2/Resultados/Correlacao/Correlacao.xlsx")

Tradicionaisdf = readWorksheet(wb, sheet = "correlacaoTradicionais", header = TRUE)
Privacidadedf = readWorksheet(wb, sheet = "correlacaoPrivacidade", header = TRUE)
Segurancadf = readWorksheet(wb, sheet = "correlacaoSeguranca", header = TRUE)
Todosdf = readWorksheet(wb, sheet = "correlacaoTodos", header = TRUE)
for(metric in 2:20){
  Tradicionaisdf[,metric] <- as.numeric(sub(",",".",Tradicionaisdf[,metric],fixed=TRUE))
  Privacidadedf[,metric] <- as.numeric(sub(",",".",Privacidadedf[,metric],fixed=TRUE))
  Segurancadf[,metric] <- as.numeric(sub(",",".",Segurancadf[,metric],fixed=TRUE))  
  Todosdf[,metric] <- as.numeric(sub(",",".",Todosdf[,metric],fixed=TRUE))  
}

#for(metric in 1:19){
#  for(metric2 in 2:20){
#    if(Tradicionaisdf[metric,metric2]<0.0){
#      Tradicionaisdf[metric,metric2] <- as.numeric(Tradicionaisdf[metric,metric2]) * -1
#    }
#  }
#}

path="C:/Users/felip/Documents/TCC2/Resultados/Graficos/Correlacao/"
extensao = ".jpeg"
nameFile = paste("Correlacao_tradicional", extensao)
pathnameFile = paste(path, nameFile)
jpeg(filename = pathnameFile, width = 1000, height = 1000, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  ggcorrplot(Tradicionaisdf[,2:20],
             title="Correlação Tradicional",
             hc.order = TRUE,
             type = "lower",
             outline.color = "white")
dev.off()

nameFile = paste("Correlacao_privacidade", extensao)
pathnameFile = paste(path, nameFile)
jpeg(filename = pathnameFile, width = 1000, height = 1000, units = "px", pointsize = 12,
     quality = 75, bg = "white")
ggcorrplot(Privacidadedf[,2:20],
           title="Correlação Privacidade",
           hc.order = TRUE,
           type = "lower",
           outline.color = "white")
dev.off()


nameFile = paste("Correlacao_seguranca", extensao)
pathnameFile = paste(path, nameFile)
jpeg(filename = pathnameFile, width = 1000, height = 1000, units = "px", pointsize = 12,
     quality = 75, bg = "white")
ggcorrplot(Segurancadf[,2:20],
           title="Correlação Segurança",
           hc.order = TRUE,
           type = "lower",
           outline.color = "white")
dev.off()

nameFile = paste("correlacao_Todos", extensao)
pathnameFile = paste(path, nameFile)
jpeg(filename = pathnameFile, width = 1000, height = 1000, units = "px", pointsize = 12,
     quality = 75, bg = "white")
ggcorrplot(Todosdf[,2:20],
           title="Correlação Todos",
           hc.order = TRUE,
           type = "lower",
           outline.color = "white")
dev.off()

#ggcorrplot(Tradicionaisdf[,2:20])