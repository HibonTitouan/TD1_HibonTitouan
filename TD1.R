#Exercice 1

#1.
a = 10
b = 5

#2.
resultat = a * b
print(resultat)


#3.
A = 7.2
B = 10.1
#On remarque que a et A sont des objets différents

#4.
resultat = A + B
#L'ancien resulat a été remplacé

#5.
rm(list=ls())

#Exercice 2

#1.
vecteur = c(1, 2, 3, 4, 5)
class(vecteur)
vecteur[3]

#1. (bis?)
v1 = 1:5

#2.
v2 = v1 + 3

#3.
v3 = 1:6

#4.
v4 = v3 **2

#5.
v5 = v4/2

#6.
semaine = c("Lundi","Mardi","Mercredi","Jeudi",
            "Vendredi","Samedi","Dimanche")
class(semaine)
print(semaine[c(2,7)])

#7.
bouleen <- c(TRUE, FALSE)
class(bouleen)

#8.
decimaux = 1:15
class(decimaux)
print(decimaux[-3])

#9.
mois = c("Janvier","Fevrier","Mars","Avril","Mais","Juin",
    "Juillet","Août","Septembre","Octobre","Novembre","Decembre")
class(mois)
print(mois[c(1,2,3)])

#10.
neg = -1:-10
class(neg)

#11.
fruits= c("Pomme","Poire","Pêche","Table à repasser",
"Fromage de chèvre","Fougère arboressante","pizza 7 fromages")
class(fruits)
print(fruits[-c(1,2)])

#12.
manquantes = c(1,2,NA,4)
class(manquantes)

#1.
sequence = seq(1,10)
length(sequence)

#2.
pairs = seq(2,20, by = 2)
length(pairs)

#3.
decroi = seq(0,-5)
length(decroi)

#4.
pasde5 = seq(5,50,by = 5)
length(pasde5)

#5.
seq5 = seq(10,1)
length(seq5)

#6.
seq6 = seq(0,1,by = 0.1)
length(seq6)

#7.
seq7 = seq(5,-5, by = -5)
length(seq7)

#8.
seq8 = seq(1,10, by = 2)
length(seq8)

#1.
vec1  =  rep(3,times = 5)

#2.
vec2 = rep(c("A","B","C"),times = 3)

#3.
vec3 = rep(1:3, times = 3)

#4.
vec4 = rep(c(TRUE,FALSE),times = 4)

#5.
rm(list=ls())

#Exercice3

