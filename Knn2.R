#installing packages
install.packages("e1071")
install.packages("caTools")
install.packages("class")
#import the libraries
library(e1071)
library(caTools)
library(class)
#dataset
data(iris)
View(iris)
head(iris)
#splitting the data into training and testing sets
split=sample.split(iris,SplitRatio = 0.7)

training_set<-subset(iris,split==TRUE)
testing_set<-subset(iris,split==FALSE)
View(training_set)
View(testing_set)
#feature scaling
train_scale<-scale(training_set[,1:4])
test_scale<-scale(testing_set[,1:4]) 
View(train_scale)
View(test_scale)
#Fitting the KNN model
classifier_knn<-knn(train=train_scale,
                    test=test_scale,
                    cl=training_set$Species,
                    k=3)
View(classifier_knn)
classifier_knn
#confusion matrix
cm<-table(testing_set$Species,classifier_knn)
View(cm)
