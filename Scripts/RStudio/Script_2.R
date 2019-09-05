library("Hmisc")
# Generate Correlation
resultados<-read.csv("C:/Users/felip/Documents/TCC2/Resultados/Metricas_CSV/Resultados_Original.csv", header = FALSE,
                     sep = ",")

#Calcula correlação das métricas dos navegadores da classe tradicional
tradicionais<-subset(resultados, resultados[,21]==c("Tradicional"))
correlacaoTradicionais<-rcorr(as.matrix(tradicionais[,3:20]))
dfcorrelacaoTradicionais=data.frame(correlacaoTradicionais$P)

#Calcula correlação das métricas dos navegadores da classe privacidade
privacidade<-subset(resultados, resultados[,21]==c("Privacidade"))
correlacaoPrivacidade<-rcorr(as.matrix(tradicionais[,3:20]))
dfcorrelacaoPrivacidade=data.frame(correlacaoPrivacidade$P)

#Calcula correlação das métricas dos navegadores da classe segurança
seguranca<-subset(resultados, resultados[,21]==c("Seguranca"))
correlacaoSeguranca<-rcorr(as.matrix(seguranca[,3:20]))
dfcorrelacaoSeguranca=data.frame(correlacaoSeguranca$P)

xlsx::write.xlsx(dfcorrelacaoTradicionais,file='C:/Users/felip/Documents/TCC2/Resultados/Correlacao/Correlacao.xlsx',sheetName = 'correlacaoTradicionais')

xlsx::write.xlsx(dfcorrelacaoPrivacidade,file='C:/Users/felip/Documents/TCC2/Resultados/Correlacao/Correlacao.xlsx',sheetName = 'correlacaoPrivacidade',append = T)

xlsx::write.xlsx(dfcorrelacaoSeguranca,file='C:/Users/felip/Documents/TCC2/Resultados/Correlacao/Correlacao.xlsx',sheetName = 'correlacaoSeguranca',append = T)
