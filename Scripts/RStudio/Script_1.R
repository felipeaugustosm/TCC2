# Generate Empirical Cumulative Distribution Function
require(graphics)
library(lattice)
library(Hmisc)
resultado<- read.csv("C:/Users/felip/Documents/TCC2/Resultados/Metricas_CSV/Resultados_Original.csv", head = TRUE,
                     sep = ",")

columnpath <- c("C:/Users/felip/Documents/TCC2/Resultados/Graficos/LOC_Média_por_pacote.jpg", "C:/Users/felip/Documents/TCC2/Resultados/Graficos/L_Groovy.jpg", "C:/Users/felip/Documents/TCC2/Resultados/Graficos/L_HTML.jpg", "C:/Users/felip/Documents/TCC2/Resultados/Graficos/L_J.jpg", "C:/Users/felip/Documents/TCC2/Resultados/Graficos/L_KT.jpg", "C:/Users/felip/Documents/TCC2/Resultados/Graficos/L_XML.jpg", "C:/Users/felip/Documents/TCC2/Resultados/Graficos/LOC.jpg", "C:/Users/felip/Documents/TCC2/Resultados/Graficos/CBO.jpg", "C:/Users/felip/Documents/TCC2/Resultados/Graficos/DIT.jpg",	"C:/Users/felip/Documents/TCC2/Resultados/Graficos/LCOM.jpg",	"C:/Users/felip/Documents/TCC2/Resultados/Graficos/NOC.jpg",	"C:/Users/felip/Documents/TCC2/Resultados/Graficos/RFC.jpg",	"C:/Users/felip/Documents/TCC2/Resultados/Graficos/WMC.jpg",	"C:/Users/felip/Documents/TCC2/Resultados/Graficos/AHF.jpg", 	"C:/Users/felip/Documents/TCC2/Resultados/Graficos/AIF.jpg", 	"C:/Users/felip/Documents/TCC2/Resultados/Graficos/CF.jpg", 	"C:/Users/felip/Documents/TCC2/Resultados/Graficos/MHF.jpg", 	"C:/Users/felip/Documents/TCC2/Resultados/Graficos/MIF.jpg", 	"C:/Users/felip/Documents/TCC2/Resultados/Graficos/PF.jpg")
column <- c("LOC_Média_por_pacote", "L_Groovy", "L_HTML", "L_J", "L_KT", "L_XML", "LOC", "CBO", "DIT",	"LCOM",	"NOC",	"RFC",	"WMC",	"AHF", 	"AIF", 	"CF", 	"MHF", 	"MIF", 	"PF")
options(digits=4)
for(metric in 3:20){
  resultado[,metric] <- as.numeric(sub(",",".",resultado[,metric],fixed=TRUE))
  jpeg(filename = columnpath[metric-2], width = 750, height = 750, bg = "transparent")
  Ecdf(resultado[,metric], group=resultado[,21], col=c('blue', 'red', 'green', 'orange'), label.curves=list(method='arrow'), xlab=column[metric-2],ylab="Quantidade")
  dev.off()
}
