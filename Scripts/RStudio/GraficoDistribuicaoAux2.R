resultados<-read.csv("C:/Users/felip/Documents/TCC2/Resultados/Metricas_CSV/Resultados_Original.csv", header = FALSE,
                     sep = ",")

tradicionais<-resultados[resultados[,22]%in%c("Tradicional"),]

privacidade<-resultados[resultados[,22]%in%c("Privacidade"),]

seguranca<-resultados[resultados[,22]%in%c("Seguranca"),]

todos <-resultados[resultados[,22]%in%c("Todos"),]

metric<-8
par(mar=c(5.1, 5.1, 4.1, 7.5), xpd=TRUE)
ditTradicionais.ecdf <- ecdf(as.numeric(as.character(tradicionais[,metric])))
ditPrivacidade.ecdf <- ecdf(as.numeric(as.character(privacidade[,metric])))
ditSeguranca.ecdf <- ecdf(as.numeric(as.character(seguranca[,metric])))
ditTodos.ecdf <- ecdf(as.numeric(as.character(todos[,metric])))
#plot(ditTradicionais.ecdf, verticals=TRUE, do.points=FALSE, col="yellow", ylab="F(X)", xlab="Métrica LOC HTML",las=1, main="", xlim = c(0, 15000000))
plot(ditTradicionais.ecdf, verticals=TRUE, do.points=FALSE, col="yellow",lty=1, lwd=2, ylab="F(X)", xlab="LOC XML",las=1, main="", xlim = c(0, 260000))
lines(ditPrivacidade.ecdf, verticals=TRUE, do.points=FALSE, col="orange", lty=2, lwd=2)
lines(ditSeguranca.ecdf, verticals=TRUE, do.points=FALSE, col="blue",lty=3, lwd=2)
lines(ditTodos.ecdf, verticals=TRUE, do.points=FALSE, col="red",lty=4, lwd=2)
#legend("topright", inset=c(-0.42,0), legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:4, cex=0.8)

