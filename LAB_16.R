####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Carla Carolina Pérez Hernández (UAEH)
#Alumno: Luis Armando Gonzalez Arellano


##Laboratorio -Analisis de redes en R- indicadores básicos globales
library (EconGeo)

#Cargar data
EL = read.csv("https://raw.githubusercontent.com/PABalland/ON/master/lesmis-el.csv")

#ver encabezado
head(EL)

#Transformar a matriz
MM <- get_matrix(EL)

library(igraph)

g <- graph_from_data_frame(d=EL, directed= F)
plot(g)

EL$Weight= NULL 
head(EL)

# Instalar la librería
install.packages("networkD3")

library(networkD3)
simpleNetwork(EL)
