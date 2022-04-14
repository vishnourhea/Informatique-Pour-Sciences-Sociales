#INTRA DE RHEA VISHNOU VILLEJOINT
#CODE ETUDIANT : VI171057

library(plotly)
library(dplyr)
library(readxl)

#Importation du fichier contenant les donnees de la banque mondiale
data <- read_excel("WB_HT_DATA.xlsx")

#On enleve les trois premieres lignes
ggplot(data=data, aes(x = date, y = liquidity)) + geom_line()
