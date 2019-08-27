# Generate Empirical Cumulative Distribution Function
require(graphics)
resultado<- read.csv("C:/Users/felip/Documents/TCC2/Resultados.csv", header = FALSE,
                     sep = ",")
resultado

Fn <- ecdf(as.numeric(resultado[,1]))
Fn
Fn(as.numeric(resultado[,1]))

plot(Fn, verticals = TRUE, col.points = "blue",
     col.hor = "red", col.vert = "bisque")
# lines(as.numeric(resultado[,1]), Fn(as.numeric(resultado[,1])), col = "blue")
