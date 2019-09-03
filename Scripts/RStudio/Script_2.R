# Generate Correlation
# Gera Correlação dos navegadores da classe tradicional
resultados<-read.csv("C:/Users/felip/Documents/TCC2/Metricas_PorClasses/Resultados_Tradicional.csv", header = FALSE,
                     sep = ",")

#Calcula correlação das métricas dos navegadores da classe tradicional
tradicionais<-subset(resultado, resultado[,2]==c("Tradicional"))
correlacaoTradicionais<-cor(tradicionais[,3:21], method = c("spearman"))

#Calcula correlação das métricas dos navegadores da classe privacidade
privacidade<-subset(resultado, resultado[,2]==c("Privacidade"))
correlacaoPrivacidade<-cor(tradicionais[,3:21], method = c("spearman"))

#Calcula correlação das métricas dos navegadores da classe segurança
seguranca<-subset(resultado, resultado[,2]==c("Segurança"))
correlacaoSeguranca<-cor(seguranca[,3:21], method = c("spearman"))

xlsx::write.xlsx(correlacaoTradicionais,file='C:/Users/felip/Documents/TCC2/Scripts/RStudio/Correlacao/Correlacao.xlsx',sheetName = 'correlacaoTradicionais')

xlsx::write.xlsx(correlacaoPrivacidade,file='C:/Users/felip/Documents/TCC2/Scripts/RStudio/Correlacao/Correlacao.xlsx',sheetName = 'correlacaoPrivacidade',append = T)

xlsx::write.xlsx(correlacaoSeguranca,file='C:/Users/felip/Documents/TCC2/Scripts/RStudio/Correlacao/Correlacao.xlsx',sheetName = 'correlacaoSeguranca',append = T)
