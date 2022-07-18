#### Ejercitaci?n ####

# Graficar la cantidad de partidos jugados por cada Equipo

# Graficar la cantidad de Goles Marcados por cada Equipo

# Comparar dos variables continuas, por ejemplo:
#         La Posesi?n de bal?n respecto a la precisi?n de los pases
#         La cantidad de tiros al arco respecto a los goles convertidos
#         La distancia recorrida respecto a la cantidad de pases

# Graficar la Posesi?n de bal?n y la precisi?n de los pases como un histograma
# Que sucede si vemos estos datos para alg?n equipo puntual

setwd("C:/Users/arielquevedo/OneDrive/Documents/Universidad Austral/Diplomatura Ciencia de Datos/Modulo 1/Clase 1")
dataframefifa = read.csv("fifa-statistics.csv")

install.packages("ggplot2")
library(ggplot2) # Luego de instalar la abrimos


str(dataframefifa)
head(dataframefifa)

# Graficar la cantidad de partidos jugados por cada Equipo
PartidosEquipos = ggplot(dataframefifa, aes(Team)) #partidos jugados por cada Equipo
PartidosEquipos + geom_bar() #Gr?fico de Linea

ggplot(dataframefifa, aes(Team)) + geom_bar()

# Graficar la cantidad de Goles Marcados por cada Equipo
GolesEquipos = ggplot(dataframefifa, aes(Team, Goal.Scored)) #partidos jugados por cada Equipo
GolesEquipos + geom_col() #Gr?fico de Linea

#coord_flip()

# Comparar dos variables continuas, por ejemplo:
#         La Posesi?n de bal?n respecto a la precisi?n de los pases
PosesiónPres = ggplot(dataframefifa, aes(Ball.Possession..,Pass.Accuracy..))
PosesiónPres + geom_jitter()
PosesiónPres + geom_smooth()

#         La cantidad de tiros al arco respecto a los goles convertidos
#tirosGoles = ggplot(dataframefifa, aes())

#         La distancia recorrida respecto a la cantidad de pases

# Graficar la Posesi?n de bal?n y la precisi?n de los pases como un histograma
require(gridExtra)
plot1 = gplot(Ball.Posesion.., data = dataframefifa)
plot2 = gplot(Pass.Accuracy.., data = dataframefifa)
grid.arrange(plot1,plot2,ncol=2)

# Que sucede si vemos estos datos para alg?n equipo puntual
gplot(dataframefifa(dataframefifa$Team == 'Argentina', aes(Ball.Posesion.., Pass.Accuracy..)) + geom_point()
      