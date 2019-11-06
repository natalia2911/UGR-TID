# Cargamos nuestro dataset:
ksprojects <- read.csv("/home/alvaro/Documentos/UGR/Master/TID/datasets/ks-projects.csv")
# Mostrar la dimensión del dataset:
dim(ksprojects)
# Imprimir información sobre las columnas:
str(ksprojects)
# Mostrar los primeros 5 ejemplos:
ksprojects[1:5,]
summary(ksprojects)
