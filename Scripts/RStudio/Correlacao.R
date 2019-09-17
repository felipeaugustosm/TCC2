resultados<-read.csv("C:/Users/felip/Documents/TCC2/Resultados/Metricas_CSV/Resultados_Original.csv", header = FALSE,
                     sep = ",")

#Calcula correlação das métricas dos navegadores da classe tradicional
tradicionais<-subset(resultados, resultados[,22]==c("Tradicional"))
for(metric in 3:21){
  tradicionais[,metric] <- as.numeric(sub(",",".",tradicionais[,metric],fixed=TRUE))
}
dfcorrelacaoTradicionais<-cor(tradicionais[3:21],method = "spearman")

#Calcula correlação das métricas dos navegadores da classe privacidade
privacidade<-subset(resultados, resultados[,22]==c("Privacidade"))
for(metric in 3:21){
  privacidade[,metric] <- as.numeric(sub(",",".",privacidade[,metric],fixed=TRUE))
}
dfcorrelacaoPrivacidade<-cor(privacidade[3:21],method = "spearman")

#Calcula correlação das métricas dos navegadores da classe segurança
seguranca<-subset(resultados, resultados[,22]==c("Seguranca"))
for(metric in 3:21){
  seguranca[,metric] <- as.numeric(sub(",",".",seguranca[,metric],fixed=TRUE))
}
dfcorrelacaoSeguranca<-cor(seguranca[3:21],method = "spearman")

#Calcula correlação das métricas de todas as classes de navegadores
todos<-subset(resultados, resultados[,22]==c("Todos"))
for(metric in 3:21){
  todos[,metric] <- as.numeric(sub(",",".",todos[,metric],fixed=TRUE))
}
dfcorrelacaoTodos<-cor(todos[3:21],method = "spearman")


#Salva os resuldados da corelação no arquivo
xlsx::write.xlsx(dfcorrelacaoTradicionais,file='C:/Users/felip/Documents/TCC2/Resultados/Correlacao/Correlacao.xlsx',sheetName = 'correlacaoTradicionais')

xlsx::write.xlsx(dfcorrelacaoPrivacidade,file='C:/Users/felip/Documents/TCC2/Resultados/Correlacao/Correlacao.xlsx',sheetName = 'correlacaoPrivacidade',append = T)

xlsx::write.xlsx(dfcorrelacaoSeguranca,file='C:/Users/felip/Documents/TCC2/Resultados/Correlacao/Correlacao.xlsx',sheetName = 'correlacaoSeguranca',append = T)

xlsx::write.xlsx(dfcorrelacaoTodos,file='C:/Users/felip/Documents/TCC2/Resultados/Correlacao/Correlacao.xlsx',sheetName = 'correlacaoTodos',append = T)
