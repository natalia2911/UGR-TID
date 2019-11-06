library(dplyr)

dataset <- read.csv("/home/alvaro/Documentos/TID/TID-UGR/datasets/ks-projects-original.csv")
dataset <- select(dataset, -ID)
colnames(dataset)[colnames(dataset) == "state"] <- "class"
col_idx <- grep("class", names(dataset))
dataset <- dataset[, c((1:ncol(dataset))[-col_idx], col_idx)]

datos1 <- dataset[which(dataset$class == "failed"), ]
datos2 <- dataset[which(dataset$class == "successful"), ]

datos1 <- datos1[sample(nrow(datos1), 2500),]
datos2 <- datos2[sample(nrow(datos2), 2500),]

data <- rbind(datos1, datos2)
data <- data[sample(nrow(data)),]

write.csv(data, "/home/alvaro/Documentos/TID/ks-projects.csv")
