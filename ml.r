# .(dot) >70%
# * >80
# **>85
#  ***>95
# multiple r squared and adhusted r squared degines the accuracy of the model
# model should be greater than 70% when dealingwith genereal
# more than 85% if biological data 

#the predictor vector
x <- c(151,174,138,186,128,136,179,163,152,131)
#the response vector
y <- c(63,81,56,91,47,57,76,72,62,48)
#apply the lm(function) linear model function
relation <- lm(y~x)
print(summary(relation))
#find the weight of  a person with height 170
a <- data.frame(x = 170)
a
result <- predict(relation,a)
png(file = "linearreg.jpg")
# pch is the type of the circle cex is the size of the dot
plot (x,y,col = "blue" , main = "height and weight regression" , 
      abline(lm(y~x)) , cex =1.3 , pch = 16 , ylab = "weight in kg",
      xlab = "height in cm")
dev.off()

getwd()
setwd('C:/Users/parth jardosh/Desktop/Desktop/Suven Data Analytics using R/ml datasets')
salaryData <- read.csv("Salary_Data.csv" , stringsAsFactors = F)
library(caTools)
set.seed(156) # model reproduction
split = sample.split( salaryData$YearsExperience, SplitRatio= 0.8)
training_set= subset(salaryData, split == TRUE)
test_set= subset(salaryData, split == FALSE)
nrow(training_set)
nrow(test_set)
y <- training_set$Salary
x <- training_set$YearsExperience

relation <- lm ( y ~ x)
print(summary(relation))


newyear <- data.frame(x = test_set$YearsExperience)
z <- predict(relation , newyear)
z


png(file = "salaryData.jpg")
# pch is the type of the circle cex is the size of the dot
plot (x,y,col = "blue" , main = "height and weight regression" , 
      abline(lm(y~x)) , cex =1.3 , pch = 16 , ylab = "weight in kg",xlab = "height in cm")
dev.off()

#   multiple linear regresiion
input <- mtcars [,c("mpg" , 'disp' , 'hp' ,'wt')]
model <- lm(mpg ~ disp+hp+wt ,data = input)
print(summary(model))

a<- coef(model)[1]
Xdisp<- coef(model)[2]
Xhp<- coef(model)[3]
Xwt<- coef(model)[4]
print(a)
print(Xdisp)
print(Xhp)
print(Xwt )
new <- data.frame(hp = 102, disp = 221 , wt = 2.91)
y <- predict(model , new)
y
 #50 startups csase study
getwd()
setwd('C:/Users/parth jardosh/Desktop/Desktop/Suven Data Analytics using R/ml datasets')
startupData <- read.csv("50_startups.csv" , stringsAsFactors = F)
startupData$State= factor(startupData$State,
                        levels = c("New York" , "California" , "Florida"),
                        labels = c(1, 2, 3))
startupData$State <- as.numeric(startupData$State)
str(startupData)
library(caTools)
set.seed(156) # model reproduction
split = sample.split( startupData$Administration, SplitRatio= 0.8)
training_set= subset(startupData, split == TRUE)
test_set= subset(startupData, split == FALSE)
nrow(test_set)
nrow(training_set)
rd <- training_set$R.D.Spend
admin  <- training_set$Administration
market <- training_set$Marketing.Spend
profit <- training_set$Profit
state <- training_set$State
model <- lm(profit ~ rd+admin+market+state ,data = input)
print(summary(model))

newyear <- data.frame(state = test_set$State , rd = test_set$R.D.Spend, admin = test_set$Administration , market = test_set$Marketing.Spend )
z <- predict(model , newyear)
z


png(file = "salaryData.jpg")
# pch is the type of the circle cex is the size of the dot
plot (x,y,col = "blue" , main = "height and weight regression" , 
      abline(lm(y~x)) , cex =1.3 , pch = 16 , ylab = "weight in kg",xlab = "height in cm")
dev.off()

#########################333
#logistic regression
#selecting some cars from mt=cars
input <- mtcars[,c("am" , "hp" , "wt" , "cyl", "drat")]
head(input)

library(caTools)
split = sample.split( input$am, SplitRatio= 0.8)
training_am= subset(input, split == TRUE)
testing_am= subset(input, split == FALSE)

training_am <- input[1:20,]
testing_am <- input [21:32,]

#am.data  = glm (formula = am ~ hp + wt , family = binomial, data = training_am )
#am.data = glm (formula = am ~ cyl + hp + wt + drat, family = binomial, data = training_am)

am.data = glm(formula = am ~ cyl + hp + wt , family = 'binomial', data = input)
print(summary(am.data))
#to extract the features then we have to provide the data
#install.packages("caret")
library("caret")
varImp(am.data)
am.pred = predict(am.data, newdata = testing_am , type = 'response')
print(am.pred)

# value = 1 is fully automatic
#accuracy of model
am.pred_num <- ifelse(am.pred >0.5 , 1 , 0)
am.pred_act <- factor (am.pred_num , levels = c (0,1))
am.pred_avi <- testing_am$am
mean(am.pred_act == am.pred_avi)
table(am.pred_act , am.pred_avi)

##################################
getwd()
setwd('C:/Users/parth jardosh/Desktop/Desktop/Suven Data Analytics using R/ml datasets')
prc <- read.csv("Prostate_Cancer.csv" , stringsAsFactors = F)
str(prc)
#install.packages("gmodels")
library(gmodels)
prc
prc <- prc[-1]
table(prc$diagnosis_result)
prc$diagnosis <- factor( prc$diagnosis_result , levels = c("B", "M"), labels = c("Benign", "Malignant"))

print(  prc$diagnosis)

normalize<-function(x) {
  return ((x -min(x)) / (max(x) - min(x))) }

head(prc)
prc_n <- as.data.frame( lapply (prc [2:9],normalize))
head(prc_n)
summary(prc_n$radius)

library(  caTools)
split <-  sample.split (prc$diagnosis_result ,SplitRatio =  0.8)
prc_train <- subset( prc_n , split ==T)
nrow (prc_train)
prc_test <- subset( prc_n , split ==F)
nrow(prc_test)
prc_train_labels<-subset( prc , split ==T)
nrow(prc_train_labels)
prc_train_labels <- prc_train_labels$diagnosis_result
prc_train_labels

prc_test_labels <- subset( prc , split == F)
nrow(prc_test_labels)
prc_test_labels <- prc_test_labels$diagnosis_result
prc_test_labels
library(class)
library(gmodels)
# Creating Model & Testing

prc_test_pred <- knn (train = prc_train , test =prc_test , cl = prc_train_labels , k=5)
print(prc_test_pred)
CrossTable(x=prc_test_labels,y=prc_test_pred)
###############
install.packages("party")
install.packages("rpart.plot")
install.packages("rpart")

library("party")
print(  readingSkills)
library("caTools")
library("rpart")
library("rpart.plot")

dataset =   readingSkills
sam = sample.split( dataset$age , SplitRatio= 0.70)
print(sam)

training= subset(dataset,sam == T)
testing = subset(dataset,sam == F)

model= rpart (nativeSpeaker ~ . ,data =  training)
rpart.plot(model)
model$variable.importance
# Predict
result = predict(  model , testing ,type = "class" )
table(result,testing$nativeSpeaker)

#####################
library(party)
install.packages("randomForest")
library(randomForest)
print(head(readingSkills))
set.seed(10)
output.forest <- randomForest(nativeSpeaker ~ age + shoeSize + score ,
                              data = readingSkills , ntree=1000 )
print(output.forest)
plot(output.forest)
varImpPlot(output.forest)


##################
##################neural network homework
##################
#convert to  transaction list when using transactions


getwd()
setwd('C:/Users/parth jardosh/Desktop/Desktop/Suven Data Analytics using R/ml datasets')
mba_data <- read.csv("MBA_data_new.csv" , stringsAsFactors = F)
print(mba_data)
trans <- split(mda_data$Products , mba_data$Customer_Id, "transactions")
install.packages("arules")
library(arules)

rules <- apriori (trans , parameter = list (support = 0.10 , confidence = 0.5 , maxlen = 2, minlen = 2))
inspect(rules)

