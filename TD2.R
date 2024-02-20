getwd()
setwd("L:/BUT/SD/Promo 2023/thibonbramoulle/R/MK8deluxe/Dataset")
getwd()

bodies_karts = read.csv(file = "bodies_karts.csv", header = TRUE, sep = ";", dec = ",")
tires = read.csv(file = "tires.csv", header = TRUE, sep = "\t", dec = ",")
gliders = read.csv(file = "gliders.csv", header = TRUE, sep = "|", dec = ".")
drivers = read.csv(file = "drivers.csv", header = TRUE, sep = ";", dec = ",")

dim (bodies_karts)
dim(tires)
dim(gliders)
dim(drivers)

summary(bodies_karts)
summary(tires)
summary(gliders)
summary(drivers)

plot(x = drivers$Weight,
     y = drivers$Acceleration, 
     main = "Drivers : Weight / Acceleration")

correlation = cor(x = drivers$Weight,
                  y = drivers$Acceleration,
                  method = "spearman")

determination = correlation^2

matriceCor = cor(drivers[ ,-1 ])
matriceCor = round(matriceCor , 2)
View(matriceCor)

install.packages("corrplot")

corrplot("corrplot")

library(corrplot)
corrplot(matriceCor, method="circle")

matriceCor = round(cor(tires[ , - 1]),1)
corrplot(matriceCor, method="color",  
         type="upper", order="hclust", 
         addCoef.col = "black", # Ajout du coefficient de corrélation
         tl.col="black", tl.srt=45, #Rotation des étiquettes de textes
         # Cacher les coefficients de corrélation sur la diagonale
         diag=FALSE 
)

matriceCor = round(cor(bodies_karts[ , - 1]),1)
corrplot(matriceCor, method="color",  
         type="upper", order="hclust", 
         addCoef.col = "black", # Ajout du coefficient de corrélation
         tl.col="black", tl.srt=45, #Rotation des étiquettes de textes
         # Cacher les coefficients de corrélation sur la diagonale
         diag=FALSE 
)

matriceCor = round(cor(gliders[ , - 1]),1)
corrplot(matriceCor, method="color",  
         type="upper", order="hclust", 
         addCoef.col = "black", # Ajout du coefficient de corrélation
         tl.col="black", tl.srt=45, #Rotation des étiquettes de textes
         # Cacher les coefficients de corrélation sur la diagonale
         diag=FALSE 
)

Resultat = drivers[, c("Driver","Weight")]
View(resultat)

Resultat = drivers[1:10, c("Driver","Acceleration")]
View(resultat)

Resultat = drivers[, -c(5,7,9)]
View(Resultat)


