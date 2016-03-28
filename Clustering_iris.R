library(datasets)
data()

data("iris")

head(iris,10)

vIris <- iris

vIris$Species <- NULL

kc <- kmeans(vIris,3)

kc

table(iris$Species, kc$cluster)

plot(vIris[c("Sepal.Length","Sepal.Width")], col = kc$cluster)

points(kc$centers, col = 1:3, pch = 8, cex = 3)

hc <- hclust(dist(iris), method = "ave")

idx <- sample(1:dim(iris)[1],40)

irissample <- iris[idx,]

irissample$Species <- NULL

# Hierarchical

hc <- hclust(dist(irissample), method = "ave")

plot(hc, hang= -1, labels = iris$Species[idx])