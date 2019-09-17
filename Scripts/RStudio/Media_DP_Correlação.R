require(XLConnect)
wb = loadWorkbook("C:/Users/felip/Documents/TCC2/Resultados/Correlacao/Correlacao.xlsx")

# --------------------------------------------------------- Tradicionais ---------------------------------------------------------
Tradicionaisdf = readWorksheet(wb, sheet = "correlacaoTradicionais", header = TRUE)
for(metric in 2:20){
  Tradicionaisdf[,metric] <- as.numeric(sub(",",".",Tradicionaisdf[,metric],fixed=TRUE))
}

for(metric in 1:19){
  for(metric2 in 2:20){
    if(Tradicionaisdf[metric,metric2]<0.0){
      Tradicionaisdf[metric,metric2] <- as.numeric(Tradicionaisdf[metric,metric2]) * -1
    }
  }
}
TradicionaisDT <- data.frame(Navegadores=character(),
                             Médias=double(),
                             DesvioPadrão=double(),
                             stringsAsFactors=FALSE)
for(metric in 2:20){
  TradicionaisDT[metric,1] = Tradicionaisdf[metric-1,1]
  TradicionaisDT[metric,2] = mean(Tradicionaisdf[,metric])
  TradicionaisDT[metric,3] = sd(Tradicionaisdf[,metric])
}

#--------------------------------------------------------- Privacidade ---------------------------------------------------------
Privacidadedf = readWorksheet(wb, sheet = "correlacaoPrivacidade", header = TRUE)
for(metric in 2:20){
  Privacidadedf[,metric] <- as.numeric(sub(",",".",Privacidadedf[,metric],fixed=TRUE))
}

for(metric in 1:19){
  for(metric2 in 2:20){
    if(Privacidadedf[metric,metric2]<0.0){
      Privacidadedf[metric,metric2] <- as.numeric(Privacidadedf[metric,metric2]) * -1
    }
  }
}
PrivacidadeDT <- data.frame(Navegadores=character(),
                            Médias=double(),
                            DesvioPadrão=double(),
                            stringsAsFactors=FALSE)
for(metric in 2:20){
  PrivacidadeDT[metric,1] = Privacidadedf[metric-1,1]
  PrivacidadeDT[metric,2] = mean(Privacidadedf[,metric])
  PrivacidadeDT[metric,3] = sd(Privacidadedf[,metric])
}

#--------------------------------------------------------- Segurança ---------------------------------------------------------
Segurancadf = readWorksheet(wb, sheet = "correlacaoSeguranca", header = TRUE)
for(metric in 2:20){
  Segurancadf[,metric] <- as.numeric(sub(",",".",Segurancadf[,metric],fixed=TRUE))
}

for(metric in 1:19){
  for(metric2 in 2:20){
    if(Segurancadf[metric,metric2]<0.0){
      Segurancadf[metric,metric2] <- as.numeric(Segurancadf[metric,metric2]) * -1
    }
  }
}
SegurancaDT <- data.frame(Navegadores=character(),
                          Médias=double(),
                          DesvioPadrão=double(),
                          stringsAsFactors=FALSE)
for(metric in 2:20){
  SegurancaDT[metric,1] = Segurancadf[metric-1,1]
  SegurancaDT[metric,2] = mean(Segurancadf[,metric])
  SegurancaDT[metric,3] = sd(Segurancadf[,metric])
}

#--------------------------------------------------------- Todos ---------------------------------------------------------
Todosdf = readWorksheet(wb, sheet = "correlacaoTodos", header = TRUE)
for(metric in 2:20){
  Todosdf[,metric] <- as.numeric(sub(",",".",Todosdf[,metric],fixed=TRUE))
}

for(metric in 1:19){
  for(metric2 in 2:20){
    if(Todosdf[metric,metric2]<0.0){
      Todosdf[metric,metric2] <- as.numeric(Todosdf[metric,metric2]) * -1
    }
  }
}
TodosDT <- data.frame(Navegadores=character(),
                      Médias=double(),
                      DesvioPadrão=double(),
                      stringsAsFactors=FALSE)
for(metric in 2:20){
  TodosDT[metric,1] = Todosdf[metric-1,1]
  TodosDT[metric,2] = mean(Todosdf[,metric])
  TodosDT[metric,3] = sd(Todosdf[,metric])
}

#--------------------------------------------------------- Salvar em Arquivo ---------------------------------------------------------
xlsx::write.xlsx(TradicionaisDT,file='C:/Users/felip/Documents/TCC2/Resultados/Correlacao/CorrelacaoEstatisticas.xlsx',sheetName = 'correlacaoTradicionais')

xlsx::write.xlsx(PrivacidadeDT,file='C:/Users/felip/Documents/TCC2/Resultados/Correlacao/CorrelacaoEstatisticas.xlsx',sheetName = 'correlacaoPrivacidade',append = T)

xlsx::write.xlsx(SegurancaDT,file='C:/Users/felip/Documents/TCC2/Resultados/Correlacao/CorrelacaoEstatisticas.xlsx',sheetName = 'correlacaoSeguranca',append = T)

xlsx::write.xlsx(TodosDT,file='C:/Users/felip/Documents/TCC2/Resultados/Correlacao/CorrelacaoEstatisticas.xlsx',sheetName = 'correlacaoTodos',append = T)