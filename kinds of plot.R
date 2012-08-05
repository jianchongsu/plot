library(IDPmisc)
x <-  rnorm(10000)
y <- atan(rnorm(10000, 0))
iplot(x, y)
library(graphics)
sunflowerplot(x,y)
dotchart(VADeaths, main = "Death Rates in Virginia - 1940")
stripchart(decrease ~ treatment,
           main = "stripchart(OrchardSprays)", 
           vertical = TRUE, log = "y", data = OrchardSprays)
library(rgl)
open3d()
x <- sort(rnorm(1000))
y <- rnorm(1000)
z <- rnorm(1000) + atan2(x,y)
plot3d(x, y, z, col=rainbow(1000))



#lielianbiao
x <- margin.table(HairEyeColor, c(1, 2))
x
assocplot(x, main = "Relation between hair and eye color")


fourfoldplot(margin.table(x, c(1, 2)))


stars(zhic2)
library(TeachingDemos)
faces(zhic2)
faces2(zhic2)

