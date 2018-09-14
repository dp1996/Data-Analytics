install.packages("purrr")
install.packages("dendextend")
library("cluster", lib.loc="~/R/win-library/3.5")
library("colorspace", lib.loc="~/R/win-library/3.5")
library("dendextend", lib.loc="~/R/win-library/3.5")
library("dplyr", lib.loc="~/R/win-library/3.5")
library("dummies", lib.loc="~/R/win-library/3.5")
library("ggplot2", lib.loc="~/R/win-library/3.5")
library("lubridate", lib.loc="~/R/win-library/3.5")
library("purrr", lib.loc="~/R/win-library/3.5")
library("RColorBrewer", lib.loc="~/R/win-library/3.5")
library("readr", lib.loc="~/R/win-library/3.5")
library("stringr", lib.loc="~/R/win-library/3.5")
library("tidyr", lib.loc="~/R/win-library/3.5")
install.packages("class")
install.packages("class")
install.packages("class")
library("class", lib.loc="~/R/win-library/3.5")
library("cluster", lib.loc="~/R/win-library/3.5")
library("colorspace", lib.loc="~/R/win-library/3.5")
library("dendextend", lib.loc="~/R/win-library/3.5")
library("dplyr", lib.loc="~/R/win-library/3.5")
library("dummies", lib.loc="~/R/win-library/3.5")
library("ggplot2", lib.loc="~/R/win-library/3.5")
library("lubridate", lib.loc="~/R/win-library/3.5")
library("purrr", lib.loc="~/R/win-library/3.5")
library("RColorBrewer", lib.loc="~/R/win-library/3.5")
library("readr", lib.loc="~/R/win-library/3.5")
library("stringr", lib.loc="~/R/win-library/3.5")
library("tidyr", lib.loc="~/R/win-library/3.5")
knn.cv()
head(knn)
next_sign
knn_traffic_signs
read.csv("knn_traffic_signs.csv")
str(signs)
str(signs)
table(signs$sign_type)
read.csv("knn_traffic_signs.csv")->signs
read.csv("knn_traffic_signs.csv")->signs
table(signs$sign_type)
signs_actual<-test_signs$sign_type
aggregate(r10~sign_type,data = signs,mean)
sign_type
sign_types
str(signs[-1])
table(signs_actual,signs_pred)
table(signs_pred)
test_signs<-signs[signs$sample=="test",-c(1,2)]
signs<-signs[signs$sample=="test",-c(1,2)]
next_sign<-test_signs[1,]
knn(train = signs[-1],test=next_sign[-1],cl=sign_types)
knn(train = signs[-1],test=next_sign[-1],cl=sign_type)
signs_actual<-test_signs$sign_type
mean(k_7==signs_actual)
knn(train = signs[-1],test=next_sign[-1],cl=sign_type)
k_7<-knn(train = signs[-1],test=next_sign[-1],cl=sign_types,k=7)
sign_types=signs$sign_type
knn(train = signs[-1],test=next_sign[-1],cl=sign_type)
knn(train = signs[-1],test=next_sign[-1],cl=sign_types)
k_7<-knn(train = signs[-1],test=next_sign[-1],cl=sign_types,k=7)
mean(k_7==signs_actual)
table(signs_actual,signs_pred)
signs_pred<-test_signs$sign_type
table(signs_actual,signs_pred)
sign_pred<-knn(train = signs[-1],test=next_sign[-1],cl=sign_types,k=7,prob = TRUE)
signs_prob<-attr(sign_pred,"prob")
head(signs_prob
head(signs_prob
sign_prob<-attr(sign_pred,"prob")
head(sign_prob)
head(sign_pred)
read.csv("locations.csv")->locations
where9am<-locations[locations$hour==9,c("daytype","location")]
droplevels(where9am$location)->where9am$location
install.packages("nativebayes")
install.packages('nativebayes')
install.packages('naivebayes')
library("class", lib.loc="~/R/win-library/3.5")
library("dendextend", lib.loc="~/R/win-library/3.5")
library("dplyr", lib.loc="~/R/win-library/3.5")
library("lubridate", lib.loc="~/R/win-library/3.5")
library("naivebayes", lib.loc="~/R/win-library/3.5")
library("purrr", lib.loc="~/R/win-library/3.5")
library("readr", lib.loc="~/R/win-library/3.5")
library("tidyr", lib.loc="~/R/win-library/3.5")
locmodel<-naive_bayes(location~daytypes,data = where9am)
locmodel<-naive_bayes(location~daytype,data = where9am)
thursday9am<-data.frame(daytype="weekday")
predict(locmodel,thursday9am)
locmodel
predict(locmodel,thursday9am,type='prob')
savehistory("C:/Users/dipta/Desktop/Data Analytics/26thJune.R")
