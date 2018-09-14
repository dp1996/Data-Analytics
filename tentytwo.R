library("dplyr", lib.loc="~/R/win-library/3.5")
library("stringr", lib.loc="~/R/win-library/3.5")
library("tidyr", lib.loc="~/R/win-library/3.5")
library("readr", lib.loc="~/R/win-library/3.5")
setwd('C:/dipta/Desktop/Data Analytics')
setwd('C:/Users/dipta/Desktop/Data Analytics')
read RDS
read RDS("weather.rds")->weather
readRDS("weather.rds")->weather
class(weather)
weather<-gather(weather,day,value,x1:x31)
weather<-gather(weather,day,value,X1:X31)
readRDS("weather.rds")->weather
weather2<-gather(weather,day,value,X1:X31)
head(weather)
weather->readRDS("weather.rds")
spread(weather2,measure,value )
dim(spread(weather2,measure,value ))
weather2<-weather2[,-1]
weather3<-spread(weather2,measure,value)
dim(weather3)
head(weather3)
tail(weather3)
weather2<-gather(weather,day,value,X1:X31,na.rm = TRUE)
weather3<-spread(weather2,measure,value)
weather2<-weather2[,-1]
weather3<-spread(weather2,measure,value)
weather3$day<-str_replace(weather3$day,"X","")
glimpse
glimpse(weather3)
weather4<-unite(weather3,'date',year,month,day,sep='-')
head(weather4)
glimpse
glimpse(weather4)
weather5<-select(weather4,date,Events,CloudCover:WindDirDegrees)
head(weather5)
weather5<-str_replace(weather5,"T","0")
weather5<-select(weather4,date,Events,CloudCover:WindDirDegrees)
glimpse(weather5)
weather5<-str_replace(weather5,"T","0")
weather5<-select(weather4,date,Events,CloudCover:WindDirDegrees)
as.integer(weather5$date)
as.integer(weather5$CloudCover)
library("lubridate", lib.loc="~/R/win-library/3.5")
glimpse(weather5)
as.character(weather5$date)
as.numeric(weather5$CloudCover)
as.numeric(weather5$CloudCover)->weather5
as.numeric(weather5$CloudCover)->weather5$cloudCover
as.numeric(weather5$CloudCover)->weather5
glimpse(weather5)
weather5$date<-ymd(weather5$date)
weather5<-select(weather4,date,Events,CloudCover:WindDirDegrees)
glimpse(weather5)
weather5$date<-ymd(weather5$date)
str(weather5)
weather6<-mutate_at(weather5,vars(CloudCover:WindDirDegrees),funs(as.numeric))
weather6<-mutate_at(weather5,vars(CloudCover:WindDirDegrees),funs(as.numeric(weather5$date))
summary(weather6)
summary(weather6)
filter(weather6,Max,humidity == 1000)
filter(weather6,Max.humidity == 1000)
filter(weather6,Max.Humidity == 1000)
which(weather6$Max.Humidity==1000)
Ind<-which(weather6$Max.Humidity==1000)
weather6[Ind,"Max.Humidity"]=100
str(weather6)
sum(is.na())
sum(is.na(weather6))
complete.cases(weather6)
complete.cases(weather6)
complete.cases(weather6)->row_ind
row_ind<-!row_ind
weather6[row_ind,weather6]
weather6[row_ind,]
weather6[row_ind,]
which(weather6$Mean.VisibilityMiles == -1)
which(weather6$Mean.VisibilityMiles == -1)->Ind
weather6[row_ind,]
which(weather6$Mean.VisibilityMiles == -1)->Ind
weather6[row_ind,]
weather6[Ind,]
weather6[Ind,"Mean.VisibilityMiles"]=10
weather6[Ind,]
head(weather6)
tail(weather6)
weather6[events == "",events]<-"Clear"
weather6[Events == "",Events]<-"Clear"
weather6[weather6$Events == "",Events]<-"Clear"
weather6[weather6$Events == "","Events"]<-"Clear"
hist(weather6$Max.Dew.PointF)
hist(weather6$Max.TemperatureF)
weather <- readRDS("C:/Users/dipta/Desktop/Data Analytics/weather.rds")
View(weather)
summary(weather6)
install.packages("ggplot2")
str(mtcars)
library("ggplot2", lib.loc="~/R/win-library/3.5")
ggplot(mtcars,aes(x=cyl,y=mpg))+geom_point()
ggplot(mtcars,aes(x=cyl,y=mpg))+geom_point()
ggplot(mtcars,aes(x= factor(cyl),y=mpg))+geom_point()
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()
ggplot(mtcars,aes(x=wt,y=mpg,color=disp))+geom_point()
source('C:/Users/dipta/Desktop/Data Analytics/DataVisual.R')
ggplot(mtcars,aes(x=wt,y=mpg,size=disp))+geom_point()
mtcars
str(diamonds)
str(diamonds)
ggplot(diamonds,aes(x=carat,y=price))+geom_point()
ggplot(diamonds,aes(x=carat,y=price))+geom_point()+geom_smooth()
ggplot(diamonds,aes(x=carat,y=price))+geom_smooth()
ggplot(diamonds,aes(x=carat,y=price))+geom_point(alpha=0.4)
dia_plot<-ggplot(diamonds,aes(x=carat,y=price))
dia_plot
class(dia_plot)
dia_plot+geom_point()
dia_plot+geom_point(aes(color=clarity))
diamonds
ggplot(diamonds,aes(x=wt,y=mpg,col=cyl))+geom_point(shape=4.size=4)
ggplot(diamonds,aes(x=wt,y=mpg,col=cyl))+geom_point(shape=4,size=4)
ggplot(mtcars,aes(x=wt,y=mpg,col=cyl))+geom_point(shape=4,size=4)
ggplot(mtcars,aes(x=wt,y=mpg,fill=cyl))+geom_point(shape=4,size=4)
ggplot(mtcars,aes(x=wt,y=mpg,fill=cyl))+geom_point(shape=1,size=4)
ggplot(mtcars,aes(x=wt,y=mpg,fill=cyl))+geom_point(shape=21,size=4,alpha=0.6)
ggplot(mtcars,aes(x=wt,y=mpg,fill=cyl,col=am))+geom_point(shape=21,size=4,alpha=0.6)
ggplot(mtcars,aes(x=wt,y=mpg,fill=cyl,col=factor(am))+geom_point(shape=21,size=4,alpha=0.6)
d
ggplot(mtcars,aes(x=wt,y=mpg,fill=cyl,col=factor(am))+geom_point(shape=21,size=4,alpha=0.6)
geom_point(shape=21,size=4,alpha=0.6)
ggplot(mtcars,aes(x=wt,y=mpg,fill=cyl,col=factor(am))
geom_point(shape=21,size=4,alpha=0.6)
ggplot(mtcars,aes(x=wt,y=mpg,fill=cyl,col=factor(am))
)geom_point(shape=21,size=4,alpha=0.6)
ggplot(mtcars,aes(x=wt,y=mpg,fill=cyl,col=factor(am)))
ggplot(mtcars,aes(x=wt,y=mpg,fill=cyl,col=factor(am)))+geom_point(shape=21,size=4,alpha=0.6)
ggplot(mtcars,aes(x=wt,y=mpg,fill=cyl,col=factor(am)))+geom_point(shape=21,size=4,alpha=0.6)
ggplot(mtcars,aes(x=wt,y=mpg,fill= factor(cyl),col=factor(am)))+geom_point(shape=21,size=4,alpha=0.6)
ggplot(mtcars,aes(x=wt,y=mpg,fill= factor(cyl),col=am))+geom_point(size=4)
ggplot(mtcars,aes(x=wt,y=mpg,shape= factor(cyl),col=am))+geom_point(size=4)
ggplot(mtcars,aes(x=wt,y=mpg,shape= factor(cyl)))+geom_point(size=4)
ggplot(mtcars,aes(x=wt,y=mpg,label= factor(cyl)))+geom_point(size=4)
ggplot(mtcars,aes(x=wt,y=mpg,label= factor(cyl)))+geom_text()
my _color<-"#4ABEFF"
my_color<-"#4ABEFF"
ggplot(mtcars,aes(x=wt,y=mpg,color= cyl))+geom_point(size=4)
ggplot(mtcars,aes(x=wt,y=mpg,color= cyl))+geom_point(color=my_color,size=4)
ggplot(mtcars,aes(x=wt,y=mpg,fill= cyl))+geom_point(color=my_color,size=10,shape=23)
ggplot(mtcars,aes(x=wt,y=mpg,fill= factor(cyl)))+geom_point(color=my_color,size=10,shape=23)
ggplot(mtcars,aes(x=wt,y=mpg,fill= cyl))+geom_point(color="yellow",shape=24)
ggplot(mtcars,aes(x=wt,y=mpg,fill= cyl))+geom_point(color="yellow",shape=24,size=10)
ggplot(mtcars,aes(x=wt,y=mpg,fill= cyl))+geom_text(label=rownames(mtcars),col="green")
ggplot(mtcars,aes(x=wt,y=mpg,fill= cyl))+geom_text(label=rownames(mtcars),col="magenta")
ggplot(mtcars,aes(x=wt,y=mpg,fill= cyl))+geom_text(label=rownames(mtcars),col="navy")
cyl.am<-ggplot(mtcars,aes(x=factor(cyl),fill=factor(am)))
cyl.am+geom_bar()
cyl.am+geom_bar(position = "fill")
cyl.am+geom_bar(position = "dodge")
val=c("#E41A1C","#377EB8")
lab=c("Manual","Automatic")
cyl.am+geom_bar(position = "dodge")+scale_x_discrete("cylinders")+scale_fill_manual("Transmission",values = val,labels=lab)
cyl.am+geom_bar(position = "dodge")+scale_x_discrete("cylinders",labels=c("four","eight",six)))+scale_y_continous("Number")+scale_fill_manual("Transmission",values = val,labels=lab)
cyl.am+geom_bar(position = "dodge")+scale_x_discrete("cylinders",labels=c("four","eight",six))+scale_y_continous("Number")+scale_fill_manual("Transmission",values = val,labels=lab)
cyl.am+geom_bar(position = "dodge")+scale_x_discrete("cylinders",labels=c("four","eight","six"))+scale_y_continous("Number")+scale_fill_manual("Transmission",values = val,labels=lab)
cyl.am+geom_bar(position = "dodge")+scale_x_discrete("cylinders",labels=c("four","eight","six"))+scale_y_continuous("Number")+scale_fill_manual("Transmission",values = val,labels=lab)
cyl.am+geom_bar(position = "dodge")+scale_x_discrete("cylinders",labels=c("four","eight","six"))+scale_y_continuous("Number".limits=c(-1.14))+scale_fill_manual("Transmission",values = val,labels=lab)
cyl.am+geom_bar(position = "dodge")+scale_x_discrete("cylinders",labels=c("four","eight","six"))+scale_y_continuous("Number",limits=c(-1.14))+scale_fill_manual("Transmission",values = val,labels=lab)
cyl.am+geom_bar(position = "dodge")+scale_x_discrete("cylinders",labels=c("four","eight","six"))+scale_y_continuous("Number")+scale_fill_manual("Transmission",values = val,labels=lab)
cyl.am+geom_histogram(position = "dodge")+scale_x_discrete("cylinders",labels=c("four","eight","six"))+scale_y_continuous("Number")+scale_fill_manual("Transmission",values = val,labels=lab)
cyl.am+geom_bar(position = "dodge")+scale_x_discrete("cylinders",labels=c("four","eight","six"))+scale_y_continuous("Number",limits=c(-1,14))+scale_fill_manual("Transmission",values = val,labels=lab)
ggplot(mtcars,aes(x=cyl,y=wt))+geom_jitter()
ggplot(mtcars,aes(x=cyl,y=wt))+geom_area()
ggplot(mtcars,aes(x=cyl,y=wt))+geom_area(shape=24)
ggplot(mtcars,aes(x=cyl,y=wt))+geom_area(wt=24)
ggplot(mtcars,aes(x=cyl,y=wt))+geom_area()
ggplot(mtcars,aes(x=cyl,y=wt))+geom_density()
ggplot(mtcars,aes(x=cyl,y=wt))+geom_curve()
ggplot(mtcars,aes(x=cyl,y=wt))+geom_histogram()
ggplot(mtcars,aes(x=mpg))+geom_histogram()
source('C:/Users/dipta/Desktop/Data Analytics/DataVisual.R')
library("dplyr", lib.loc="~/R/win-library/3.5")
library("ggplot2", lib.loc="~/R/win-library/3.5")
library("readr", lib.loc="~/R/win-library/3.5")
library("lubridate", lib.loc="~/R/win-library/3.5")
library("stringr", lib.loc="~/R/win-library/3.5")
library("tidyr", lib.loc="~/R/win-library/3.5")
summary(iris)
iris
ggplot(mtcars,aes(x=wt))+geom_bar()
ggplot(mtcars,aes(x=wt))+geom_histogram()
ggplot(mtcars,aes(x=mpg))+geom_histogram()
ggplot(mtcars,aes(x=mpg))+geom_histogram(binwidth = 1)
ggplot(mtcars,aes(x=mpg))+geom_histogram()
ggplot(mtcars,aes(x=mpg))+geom_histogram(binwidth = 1)
ggplot(mtcars,aes(x=mpg))+geom_histogram(binwidth = 3)
ggplot(mtcars,aes(x=mpg))+geom_histogram(binwidth = 0.5)
ggplot(mtcars,aes(x=mpg))+geom_histogram(aes(y=..density..)binwidth = 1)
ggplot(mtcars,aes(x=mpg))+geom_histogram(aes(y=..density..),binwidth = 1)
ggplot(mtcars,aes(x=mpg))+geom_histogram(aes(y=..density..),binwidth = 1,fill="377E88")
ggplot(mtcars,aes(x=mpg))+geom_histogram(aes(y=..density..),binwidth = 1,fill="377E588")
ggplot(mtcars,aes(x=mpg))+geom_histogram(aes(y=..density..),binwidth = 1,fill="377EB8")
ggplot(mtcars,aes(x=mpg))+geom_histogram(aes(y=..density..),binwidth = 1,fill="377EB8")
ggplot(mtcars,aes(x=mpg))+geom_histogram(aes(y=..density..),binwidth = 1,fill="#377EB8")
ggplot(mtcars,aes(x=cyl,fill=am))+geom_histogram(aes(y=..density..),binwidth = 1,fill="#377EB8")
ggplot(mtcars,aes(x=cyl,fill=am))+geom_histogram(aes(y=..density..),binwidth = 1,fill="Magenta")
ggplot(mtcars,aes(x=cyl,fill=am))+geom_histogram(aes(y=..density..),binwidth = 1,fill="Neon")
ggplot(mtcars,aes(x=cyl,fill=am))+geom_histogram(aes(y=..density..),binwidth = 1,fill="Lime")
ggplot(mtcars,aes(x=cyl,fill=am))+geom_histogram(aes(y=..density..),binwidth = 1,fill="Green")
ggplot(mtcars,aes(x=cyl,fill=am))+geom_bar(fill="Green")
ggplot(mtcars,aes(x=cyl,fill=am))+geom_bar(position = "dodge",fill="Green")
ggplot(mtcars,aes(x=cyl,fill=factor(am)))+geom_bar(position = "dodge")
ggplot(mtcars,aes(x=cyl,fill=factor(am)))+geom_histogram(binwidth = 1)
ggplot(mtcars,aes(x=cyl,fill=factor(am)))+geom_bar(position = "dodge")
posn_d<-position_dodge(width = 0.2)
ggplot(mtcars,aes(x=cyl,fill=factor(am)))+geom_bar(position = posn_d)
posn_d<-position_dodge(width = 1)
ggplot(mtcars,aes(x=cyl,fill=factor(am)))+geom_bar(position = posn_d)
posn_d<-position_dodge(width = 0)
ggplot(mtcars,aes(x=cyl,fill=factor(am)))+geom_bar(position = posn_d)
ggplot(mtcars,aes(mpgfill=factor(cyl)))+geom_histogram(binwidth = 1)
ggplot(mtcars,aes(mpg,fill=factor(cyl)))+geom_histogram(binwidth = 1)
ggplot(mtcars,aes(mpg,fill=factor(cyl)))+geom_histogram(binwidth = 1,position = "identity")
?identity
ggplot(mtcars,aes(mpg,fill=factor(cyl)))+geom_histogram(binwidth = 1,position = "dodge")
ggplot(mtcars,aes(mpg,fill=factor(cyl)))+geom_histogram(binwidth = 1,position = "fill")
ggplot(mtcars,aes(mpg,color=cyl))+geom_freqpoly(binwidth=1,position = "identity")
ggplot(mtcars,aes(mpg,color=factor(cyl)))+geom_freqpoly(binwidth=1,position = "identity")
ggplot(mtcars,aes(mpg,color=factor(cyl)))+geom_freqpoly(binwidth=1,position = "dodge")
ggplot(mtcars,aes(x=cyl,fill=factor(am)))+scale_fill_brewer(palette = "Set1")
ggplot(mtcars,aes(x=cyl,fill=factor(am)))+geom_bar()+scale_fill_brewer(palette = "Set1")
ggplot(mtcars,aes(x=cyl,fill=factor(am)))+geom_bar()+scale_fill_brewer(palette = "Set23")
ggplot(mtcars,aes(x=cyl,fill=factor(am)))+geom_bar()+scale_fill_brewer(palette = "Set3")
blues<-brewer.pal(9,"Blues")
library("colorspace", lib.loc="~/R/win-library/3.5")
blues<-brewer.pal(9,"Blues")
install.packages("colorRampPallete")
library("RColorBrewer", lib.loc="~/R/win-library/3.5")
library("ggplot2", lib.loc="~/R/win-library/3.5")
library("dplyr", lib.loc="~/R/win-library/3.5")
library("lubridate", lib.loc="~/R/win-library/3.5")
library("readr", lib.loc="~/R/win-library/3.5")
library("stringr", lib.loc="~/R/win-library/3.5")
detach("package:stringr", unload=TRUE)
library("stringr", lib.loc="~/R/win-library/3.5")
library("tidyr", lib.loc="~/R/win-library/3.5")
blues<-brewer.pal(9,"Blues")
blue_range<-colorRampPalette(blues)
ggplot(diamonds,aes(x=carats,fill=factor(clarity)))+geom_bar()+scale_fill_manual(values = blue_range(10))
ggplot(diamonds,aes(x=carat,fill=factor(clarity)))+geom_bar()+scale_fill_manual(values = blue_range(10))
ggplot(diamonds,aes(x=factor(carat),fill=factor(clarity)))+geom_bar()+scale_fill_manual(values = blue_range(10))
ggplot(diamonds,aes(x=factor(carat),fill=factor(clarity)))+geom_bar()+scale_fill_manual(values = blue_range(11))
blues
economics
economics
head(economics)
ggplot(diamonds,aes(x=price,y=depth))+geom_line()
ggplot(diamonds,aes(x=price,y=carat))+geom_line()
ggplot(diamonds,aes(x=price,y=factor(carat)))+geom_line()
ggplot(diamonds,aes(x=price,y=carat))+geom_line()
ggplot(diamonds,aes(x=factor(price),y=carat))+geom_line()
ggplot(mtcars,aes(x=hp,y=wt,color=factor(am)))+geom_line()
economics
ggplot(economics,aes(x=date,y=unemploy)+geom_rect(fill="red",alpha=0.2)
j
ggplot(economics,aes(x=date,y=unemploy)+geom_rect(fill="red",alpha=0.2)
ggplot(economics,aes(x=date,y=unemploy)+geom_rect(fill="red",alpha=0.2)
ggplot(economics,aes(x=date,y=unemploy))+geom_rect(fill="red",alpha=0.2)
recess
qplot(x=wt,y=mpg,data = mtcars)
qplot(x=wt,y=mpg,data = mtcars,col=factor(cyl))
qplot(x=wt,data = mtcars,col=factor(cyl))
qplot(x=wt,y=mpg,data = mtcars,size=factor(cyl))
ggplot(mtcars,aes(cyl,wt,fill=am)+geom_dotplot(binaxis = "y",stackdir = "center")
l
ggplot(mtcars,x=wt,y=hp,col=am))+geom_point()+geom_smooth()->p
ggplot(mtcars,aes(x=wt,y=hp,col=am))+geom_point()+geom_smooth()->p
p+scale_x_continuous(limits = c(3,6),expand=c(0,0))
ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width,col=species))+geom_jitter()+geom_smooth(method = "lm",se=FALSE)->base.plot
base.plot
ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width,col=sSpecies))+geom_jitter()+geom_smooth(method = "lm",se=FALSE)->base.plot
ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width,col=Species))+geom_jitter()+geom_smooth(method = "lm",se=FALSE)->base.plot
base.plot
base.plot+coord_equal()
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()->p
p+facet_grid(am~.)
p+facet_grid(~.cyl)
p+facet_grid(.~cyl)
p+facet_grid(.~am)
savehistory("C:/Users/dipta/Desktop/Data Analytics/twleveth,R.Rhistory")
library("dplyr", lib.loc="~/R/win-library/3.5")
library("ggplot2", lib.loc="~/R/win-library/3.5")
library("lubridate", lib.loc="~/R/win-library/3.5")
library("RColorBrewer", lib.loc="~/R/win-library/3.5")
library("readr", lib.loc="~/R/win-library/3.5")
library("stringr", lib.loc="~/R/win-library/3.5")
library("tidyr", lib.loc="~/R/win-library/3.5")
library("dichromat", lib.loc="~/R/win-library/3.5")
x=c(-4,6,7)
y=c(5,7,9)
x=c(-4,6,7)
three_player=data.frame(x=x,y=y)
three_player
two_player<-three_player[-1,]
two_player
dist(two_player)
dist(three_player)
dist(3)
dist(three_player)->distance
distance[3]
class(distance)
wt<-c(72,74,74)
heigth<-c(6.4,6.4,6.0)
person<-data.frame(weight=wt,height=heigth)
dist(person)
person
mean(person$weight)
mean(person$height)
mean(person$weight)->weight_mean
sd(person$weight)->sd_weight
mean(person$height)->height_mean
sd(person$height)->sd_height
scale(person$height)
scale(person$weight)
scale(person$weight)->person$weight
scale(person$height)->person$height
person
dist(person)
wt[2]=104
wt[3]=104
person1<-data.frame(weight=wt,height=heigth)
dist(person1)
person2<-person1
scale(person1$height)->person1$height
scale(person1$weight)->person1$weight
dist(person1)
a=c(TRUE,FALSE,TRUE,TRUE)
b=c(FALSE,TRUE,FALSE,TRUE)
data.frame(a,b)
e=c("Soccer","Hockey","Football","Tennis")
f=c("RED","BLUE","RED","BLUE")
data.frame(e,f)->test
test
dummy.data.frame(test)
install.packages("dummies")
library("dummies", lib.loc="~/R/win-library/3.5")
dummy.data.frame(test)
?dummies
?`dummies-package`
dummy.data.frame(test)->binom.test
dist(binom.test,method = 'binary')
test
library("dummies", lib.loc="~/R/win-library/3.5")
savehistory("C:/Users/dipta/Desktop/Data Analytics/tentytwo.R")
