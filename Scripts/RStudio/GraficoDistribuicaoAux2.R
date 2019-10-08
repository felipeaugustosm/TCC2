resultados<-read.csv("C:/Users/felip/Documents/TCC2/Resultados/Metricas_CSV/Resultados_Original.csv", header = FALSE,
                     sep = ",")

tradicionais<-resultados[resultados[,22]%in%c("Tradicional"),]

privacidade<-resultados[resultados[,22]%in%c("Privacidade"),]

seguranca<-resultados[resultados[,22]%in%c("Seguranca"),]

todos <-resultados[resultados[,22]%in%c("Todos"),]

metric<-8
par(mar=c(5.1, 5.1, 4.1, 12.5), xpd=TRUE)
ditTradicionais.ecdf <- ecdf(as.numeric(as.character(tradicionais[,metric])))
ditPrivacidade.ecdf <- ecdf(as.numeric(as.character(privacidade[,metric])))
ditSeguranca.ecdf <- ecdf(as.numeric(as.character(seguranca[,metric])))
ditTodos.ecdf <- ecdf(as.numeric(as.character(todos[,metric])))
#plot(ditTradicionais.ecdf, verticals=TRUE, do.points=FALSE, col="yellow", ylab="Distribuição", xlab="Métrica LOC HTML",las=1, main="", xlim = c(0, 5))
plot(ditTradicionais.ecdf, verticals=TRUE, do.points=FALSE, col="yellow", ylab="Distribuição", xlab="Métrica XML",las=1, main="")
lines(ditPrivacidade.ecdf, verticals=TRUE, do.points=FALSE, col="orange");
lines(ditSeguranca.ecdf, verticals=TRUE, do.points=FALSE, col="blue")
lines(ditSeguranca.ecdf, verticals=TRUE, do.points=FALSE, col="red")
legend("topright", inset=c(-0.61,0), legend=c("Tradicionais", "Privacidade", "Segurança", "Todos"), col=c("yellow", "orange", "blue", "red"), lty=1:2, cex=0.8)

