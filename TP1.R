#Exercice1
#1.
iris
class(iris)

#2.
View(iris)

#3.
nrow(iris)

#4.
ncol(iris)

#5.
colnames(iris)

#6.
summary(iris)

#7.
iris[ , c("Sepal.Length","Species")]

#9.
iris[c(100,103,105) , ]

#10.
iris[c(50:100) , ]

#11
mean(iris$Sepal.Length)

#12
median(iris$Sepal.Width)

#13
sd(iris$Petal.Length)

#14
quantile(iris$Petal.Width,  probs  = seq(from = 0.1, to =0.9, by = 0.1))

#Exercice2
#1
dfManga <- read.csv("C:/Users/thibonbramoulle/Downloads/manga.csv", header = TRUE, sep = ",", dec = ".")
dfAnime <- read.csv("C:/Users/thibonbramoulle/Downloads/anime.csv", header = TRUE, sep = ",", dec = ".")
class(dfManga)
class(dfAnime)

#2
View(dfManga)
View(dfAnime)

#3
dim(dfManga)
dim(dfAnime)

#4
mean(dfManga$Score)
mean(dfAnime$Score)
#Anime plus elevé

#5
sum(dfManga$Vote)
sum(dfAnime$Vote)
#Anime plus elevé

#6
sd(dfManga$Score)
sd(dfAnime$Score)
#Manga plus homogène

#7
quantile(dfManga$Score, probs = seq(from = 0.1, to = 0.99, by = 0.1)) 
quantile(dfAnime$Score, probs = seq(from = 0.1, to = 0.99, by = 0.1)) 
#Anime décile 1 plus petit

#1
extr8 = subset(dfManga, Score > 9)
nrow(extr8)

#2
extr9 = subset(dfManga, Vote > 200000)
nrow(extr9)

#3
extr11 = subset(dfManga, Vote > 200000& Score > 8)
nrow(extr11)

#4
extr10 = subset(dfManga, Score >= 7 & Score <= 8)
nrow(extr10)

#1
effectif = table(dfAnime$Rating)
print(effectif)
length(effectif)
prop.table(effectif)

#2
extraction2 = subset(dfAnime, Rating == "R - 17+ (violence & profanity)")
nrow(extraction2)

#3
extraction3 = subset(dfAnime, Rating == "R - 17+ (violence & profanity)"& Score > 8)
nrow(extraction3)

#4
extraction4 = subset(dfAnime,Rating !=  "R - 17+ (violence & profanity)")
nrow(extraction4)


#5
extraction5 = subset(dfAnime, Rating %in% c("PG - Children", "G - All Ages"))
nrow(extraction5)

#6
extraction6 = subset(dfAnime, !Rating %in% c("PG - Children", "G - All Ages"))
nrow(extraction6)

#7
extraction7 = subset(dfAnime, Score > 9 | Vote > 400000)
nrow(extraction7)

#1
dfAnime = dfAnime[ , c("Title","Score","Vote","Ranked")]
dfManga = dfManga[ , c("Title","Score","Vote","Ranked")]

#2
dfAnime$Type = "Anime"
dfManga$Type = "Manga"

#3
dfConcat = rbind(dfManga,dfAnime)
View(dfConcat)

#4
write.table(x = dfConcat, file = "L:/BUT/SD/Promo 2023/thibonbramoulle/R/CSV_TP1",
            sep = ";",row.names = FALSE)