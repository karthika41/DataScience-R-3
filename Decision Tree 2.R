#importing the libraries

library(rpart)
library(rpart.plot)

#importing the dataset

data<-read.csv("Iris.csv")
View(data)

#decision tree
tree<-rpart(Species~SepalLengthCm+SepalWidthCm,data)

a<-data.frame(SepalLengthCm=c(4.7),SepalWidthCm=c(3.2))

#prediction of species based on sepal length and width 
result<-predict(tree,a)
print(result)


#decision tree
tree<-rpart(Species~PetalLengthCm+PetalWidthCm,data)

a<-data.frame(PetalLengthCm=c(1.4),PetalWidthCm=c(0.3))

#prediction of species based on petal length and width 
result<-predict(tree,a)
print(result)

#plotting the prediction

rpart.plot(tree)


