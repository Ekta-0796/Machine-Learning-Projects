install.packages("readr")
library(readr)
Data<-read.csv("C:/Users/Ekta/OneDrive/Documents/PREDICTION OF STUDENT STDYING HOURS USING SUPERVISED ML.csv")
str(Data)
cor(Data$Hours.Scores,Data$Scores)
### Prediction using the percentage of student based on study hours 
model<-lm(Scores~Hours.Scores,data = Data)
summary(model)
a=data.frame(Hours.Scores=9.25)
result=predict(model,a)
result
