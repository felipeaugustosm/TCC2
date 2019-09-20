require(XLConnect)
wb = loadWorkbook("C:/Users/felip/Documents/TCC2/Resultados/Correlacao/CorrelacaoEstatisticas.xlsx")

Tradicionaisdf = readWorksheet(wb, sheet = "correlacaoTradicionais", header = TRUE)
Privacidadedf = readWorksheet(wb, sheet = "correlacaoPrivacidade", header = TRUE)
Segurancadf = readWorksheet(wb, sheet = "correlacaoSeguranca", header = TRUE)
Todosdf = readWorksheet(wb, sheet = "correlacaoTodos", header = TRUE)

for(metric in 2:3){
  Tradicionaisdf[,metric] <- as.numeric(sub(",",".",Tradicionaisdf[,metric],fixed=TRUE))
  Privacidadedf[,metric] <- as.numeric(sub(",",".",Privacidadedf[,metric],fixed=TRUE))
  Segurancadf[,metric] <- as.numeric(sub(",",".",Segurancadf[,metric],fixed=TRUE))  
  Todosdf[,metric] <- as.numeric(sub(",",".",Todosdf[,metric],fixed=TRUE))  
}


path="C:/Users/felip/Documents/TCC2/Resultados/Graficos/Correlacao/"
extensao = ".jpeg"
nameFile = paste("Correlacao_Media_tradicional", extensao)
pathnameFile = paste(path, nameFile)
jpeg(filename = pathnameFile, width = 3000, height = 3000, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  barplot(as.vector(Tradicionaisdf[,2]), col=c("red","blue","green", "orange","grey", "yellow", "brown", "magenta", "tan", "cyan", "navy", "aquamarine", "turquoise", "violet", "pink", "burlywood1", "darkolivegreen3", "orchid", "black"),
          legend.text = Tradicionaisdf[,1],
        ylab="Médias",
        xlab="Navegadores")
dev.off()


nameFile = paste("Correlacao_Desvio_Padrao_tradicional", extensao)
pathnameFile = paste(path, nameFile)
jpeg(filename = pathnameFile, width = 3500, height = 3500, units = "px", pointsize = 12,
     quality = 75, bg = "white")
barplot(as.vector(Tradicionaisdf[,3]), col=c("red","blue","green", "orange","grey", "yellow", "brown", "magenta", "tan", "cyan", "navy", "aquamarine", "turquoise", "violet", "pink", "burlywood1", "darkolivegreen3", "orchid", "black"),
        legend.text = Tradicionaisdf[,1],
        ylab="Médias",
        xlab="Navegadores")
dev.off()



nameFile = paste("Correlacao_Media_privacidade", extensao)
pathnameFile = paste(path, nameFile)
jpeg(filename = pathnameFile, width = 3000, height = 3000, units = "px", pointsize = 12,
     quality = 75, bg = "white")
barplot(as.vector(Privacidadedf[,2]), col=c("red","blue","green", "orange","grey", "yellow", "brown", "magenta", "tan", "cyan", "navy", "aquamarine", "turquoise", "violet", "pink", "burlywood1", "darkolivegreen3", "orchid", "black"),
        legend.text = Privacidadedf[,1],
        ylab="Médias",
        xlab="Navegadores")
dev.off()


nameFile = paste("Correlacao_Desvio_Padrao_privacidade", extensao)
pathnameFile = paste(path, nameFile)
jpeg(filename = pathnameFile, width = 5000, height = 5000, units = "px", pointsize = 12,
     quality = 75, bg = "white")
barplot(as.vector(Privacidadedf[,3]), col=c("red","blue","green", "orange","grey", "yellow", "brown", "magenta", "tan", "cyan", "navy", "aquamarine", "turquoise", "violet", "pink", "burlywood1", "darkolivegreen3", "orchid", "black"),
        legend.text = Privacidadedf[,1],
        ylab="Médias",
        xlab="Navegadores")
dev.off()

nameFile = paste("Correlacao_Media_seguranca", extensao)
pathnameFile = paste(path, nameFile)
jpeg(filename = pathnameFile, width = 3000, height = 3000, units = "px", pointsize = 12,
     quality = 75, bg = "white")
barplot(as.vector(Segurancadf[,2]), col=c("red","blue","green", "orange","grey", "yellow", "brown", "magenta", "tan", "cyan", "navy", "aquamarine", "turquoise", "violet", "pink", "burlywood1", "darkolivegreen3", "orchid", "black"),
        legend.text = Segurancadf[,1],
        ylab="Médias",
        xlab="Navegadores")
dev.off()


nameFile = paste("Correlacao_Desvio_Padrao_seguranca", extensao)
pathnameFile = paste(path, nameFile)
jpeg(filename = pathnameFile, width = 5000, height = 5000, units = "px", pointsize = 12,
     quality = 75, bg = "white")
barplot(as.vector(Segurancadf[,3]), col=c("red","blue","green", "orange","grey", "yellow", "brown", "magenta", "tan", "cyan", "navy", "aquamarine", "turquoise", "violet", "pink", "burlywood1", "darkolivegreen3", "orchid", "black"),
        legend.text = Segurancadf[,1],
        ylab="Médias",
        xlab="Navegadores")
dev.off()


nameFile = paste("Correlacao_Media_todos", extensao)
pathnameFile = paste(path, nameFile)
jpeg(filename = pathnameFile, width = 3000, height = 3000, units = "px", pointsize = 12,
     quality = 75, bg = "white")
barplot(as.vector(Todosdf[,2]), col=c("red","blue","green", "orange","grey", "yellow", "brown", "magenta", "tan", "cyan", "navy", "aquamarine", "turquoise", "violet", "pink", "burlywood1", "darkolivegreen3", "orchid", "black"),
        legend.text = Todosdf[,1],
        ylab="Médias",
        xlab="Navegadores")
dev.off()


nameFile = paste("Correlacao_Desvio_Padrao_todos", extensao)
pathnameFile = paste(path, nameFile)
jpeg(filename = pathnameFile, width = 5000, height = 5000, units = "px", pointsize = 12,
     quality = 75, bg = "white")
barplot(as.vector(Todosdf[,3]), col=c("red","blue","green", "orange","grey", "yellow", "brown", "magenta", "tan", "cyan", "navy", "aquamarine", "turquoise", "violet", "pink", "burlywood1", "darkolivegreen3", "orchid", "black"),
        legend.text = Todosdf[,1],
        ylab="Médias",
        xlab="Navegadores")
dev.off()