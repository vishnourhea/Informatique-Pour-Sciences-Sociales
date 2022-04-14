#INTRA DE RHEA VISHNOU VILLEJOINT
#CODE ETUDIANT : VI171057

library(plotly)
library(dplyr)
library(readxl)

#Importation du fichier contenant les donnees de la banque mondiale
data <- read_excel("WB_HT_DATA.xlsx")

#Graphique de figure 2.4
ggplot(data, aes(date, liquidity, group = 1)) + 
  geom_line(color = "green", size = 1.5) + 
  geom_smooth(se = FALSE, color = "red") +
  labs(x = "Années", y = "%PIB", title = "Figure 2.4 - Ratio des réserves liquides des banques sur leurs actif (%)") +
  theme(plot.title = element_text(hjust = 0.5),
        panel.background = element_rect(fill = "transparent",colour = NA),
        plot.background = element_rect(fill = "transparent",colour = NA)) +
  geom_vline(xintercept = c(2008, 2010, 2015, 2016, 2020), linetype="dotted", 
             color = "red", size=1)

#Graphique de la figure 3.1
ggplot(data, aes(date, transfers, group = 1)) + 
  geom_line(color = "green", size = 1.5) + 
  labs(x = "Années", y = "%PIB", title = "Figure 3.1 - Evolution des transferts annuels (en % du PIB)") +
  theme(plot.title = element_text(hjust = 0.5),
        panel.background = element_rect(fill = "transparent",colour = NA),
        plot.background = element_rect(fill = "transparent",colour = NA)) +
  geom_vline(xintercept = c(2008, 2010, 2016, 2019, 2020), linetype="dotted", 
             color = "red", size=1)
