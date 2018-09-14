.
library("class", lib.loc="~/R/win-library/3.5")
read.csv("knn_traffic_signs.csv")
read.csv("knn_traffic_signs.csv")->signs
signs
str(signs)
test_signs<-signs[signs$sample=="test",-c(1,2)]
next_sign<-test_signs[1,]
signs<-signs[signs$sample=="train",-c(1,2)]
knn(train = signs[-1],test=next_sign,cl=sign_types)
knn(train = signs[-1],test=next_sign[-1],cl=sign_type)
knn(train = signs[-1],test=next_sign[-1],cl=signs$sign_type)
sign_types<-signs$sign_type
knn(train = signs[-1],test=next_sign[-1],cl=sign_types)
signs_pred<-knn(train = signs[-1],test=next_sign[-1],cl=sign_types)
signs_pred
savehistory("C:/Users/dipta/Desktop/Data Analytics/3rdJuly.R")
