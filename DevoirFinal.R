library(ggplot2)
library(dplyr)
library(readxl)

df <- read_excel("data_haiti.xlsx")

#Graphique nuage de points entre taux d'inflation et taux de change pour Haiti
ggplot(df) +
  aes(x = TxInf, y = TxCh, color = Date) +
  geom_point() +
  ggtitle("Evolution du taux d'inflation et du taux de change de 1991 a 2021 en Haiti") +
  labs(y ="Taux d'Inflation", x ="Taux de change")

#Graphique en ligne du taux de change
ggplot(df) +
  aes(x = Date, y = TxCh) +
  geom_line(color = "red") +
  ggtitle("Evolution du taux de change en Haiti de 1991 a 2021") +
  labs(x ="Date", y = "Taux de change")

#Graphique en baton du taux d'inflation
ggplot(df) +
  aes(x = TxInf) +
  geom_histogram(color = "black", bins = 15, fill = "lightblue") +
  ggtitle("Evolution du taux d'inflation en Haiti de 1991 a 2021") +
  labs(x ="Taux d'inflation")
