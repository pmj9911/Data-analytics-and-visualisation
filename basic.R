c1 <- c(20L, 30L)
print (c1) #output of data
print(class(c1)) #datatype of vector
print(typeof(c1)) #tpe of the vector
print(length(c1))

c2 <- c("white", "blue", 'green')
print(c2)
print(class(c2))
print(typeof(c2))
print(length(c2))

c4 <- c(7.3,78.904,7.1234567890)
print(c2)
print(class(c2))
print(typeof(c2))
print(length(c2))

c5 <- c(2+4i, 55+4i, 7+1i)
print(c2)
print(class(c2))
print(typeof(c2))
print(length(c2))

c6 <- c(TRUE, FALSE, TRUE)
print(c2)
print(class(c2))
print(typeof(c2))
print(length(c2))

c7 <- c(TRUE , 20L , 7.12346789 )
print(c7)
print(class(c7))
print(typeof(c7))

c8 <- seq(1,4,.2)
print(c8)

c9 <- seq(3,5.6,.9)
print(c9)

c10 <- 1:2.5
print(c10)

c11 <- c('A', 'B', 'C', 'D', 'E')
print(c11)
print(c11[1])
print(c11[2:0])
print(c11[-1])
print(c11[c(1,4,6)])
#print(c11[1,4,6])

c11[2] <- 'G'
c11[2] <- NA

l11 <- list("red", "green", c(1,2,3), TRUE, FALSE, 12.345, 67.890)
print(l11)  
class(l11)


list_data<-list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8),nrow= 2), list("green",12.3))
names(list_data) <-c("1st_Quarter", "A_Matrix", "A_Inner_list")
print(list_data)
print(list_data[1])
print(list_data$A_Matrix)
print(list_data$A_Inner_list)
#print(list_data$1st_Quarter)

list_data[3] <-"updated element"
#list_data[4] <-list_data[-4]
list_data[3] <-NULL

# Create two lists.
list1 <-list(1,2,3)
list2 <-list("Sun","Mon","Tue")
# Merge the two lists.
merged.list<-c(list1,list2)
# Print the merged list.
print(merged.list)

list1 <- list(1:5)
list2 <- list(6:10)

list <- c(list1,list2)
#list3 <- list1 + list2
print(list)

v1 <- unlist(list1)
v2 <- unlist(list2)
print(v1)
print(typeof(v1))
print(v2)

v3 <- v1 + v2
print(v3)

M1 <-  matrix(c(1:16), nrow=4, byrow=TRUE)
print(M1)

M2 <-  matrix(c(1:16), nrow=4, byrow=FALSE)
print(M2)
print(M2[1,])
print(M2[,2])

rownames <- c("row1", "row2", "row3", "row4")
colnames <- c("col1", "col2", "col3")
M3 <-  matrix(c(1:12), nrow=4,ncol = 3, byrow=FALSE,dimnames = list(rownames,colnames))
print(M3)
print(M3["row1",])
M3[1,2] <- 7

M3[1,2] <- NA

vector1 <-c(5,9,3)
vector2 <-c(10,11,12,13,14,15)
col <-c("COL1","COL2","COL3")
row <-c("ROW1","ROW2","ROW3")
mat <-c("Matrix1","Matrix2")
result <-array(c(vector1,vector2),dim = c(3,3,2),dimnames= list(row, col,mat))
print(result)

vector1 <-c(5,9,3)
vector2 <-c(10,11,12,13,14,15)
result <-array(c(vector1, vector2),dim = c(3,3,2))

print(result)

rownames <- c("row1", "row2", "row3")
colnames <- c("col1", "col2", "col3")
matrixnames <- c("matrix1", "matrix2")

M3 <-  array(c("red","blue","green"), dim=c(3,3,2),  dimnames = list(rownames,colnames,matrixnames))
print(M3)
print(M3[3,2,1])
print(M3[,,1][3,2])
M3[3,2,1] <- 45
M3[3,2,1] <- NA

data <-c("East","West", "East","North", "North","East", "West","West", "West","East", "North")

factor_data <- factor(data)
print(factor_data)
print(typeof(factor_data))
str(factor_data)
factor_data [5] <- "East"

factor_data <- gl(3,4, labels = c("Tampa","Seattle","Boston"))
print(factor_data)

df <- data.frame(
  id =1:4,
  prefix = c("Mr", "Ms","Mrs", "Mr"),
  Name = c("ABC", "DEF","ghi","jkl"),
  stringAsFactors = FALSE
)

gender <- gl(2,1,labels = c("Female","Male"))  
df <- cbind(df,gender)
df
for (i in 1:nrow(df)){
  if(df$prefix[i] == "Mr")
  {
    df$gender[i] <- "Male"
  }else if (df$prefix[i] == "Ms" | df$prefix[i] == "Mrs")
  {
    df$gender[i] <- "Female"
  }
}

df
emp.data <-
  data.frame(
    emp_id= c (1:5),
    emp_name= c("Rick", "Dan", "Michelle", "Ryan","Gary"),
    salary = c(623.3, 515.2, 611.0, 729.0, 843.25),
    start_date= as.Date( c("2012-01-01", "2013-09-23","2014-11-15", "2014-05-11","2015-03-27") ),
    stringsAsFactors= FALSE
  )

emp.data$dept <- c("IT" , "Operations" , "IT" ,"HR", "Finance") 
print(emp.data)
print(emp.data)

print(str(emp.data))
print(summary(emp.data))
print(ncol(emp.data))
print(nrow(emp.data))
print(dim(emp.data))
print(attributes(emp.data))

emp.newdata<-data.frame(
  emp_id= c (6:8),
  emp_name= c("Rasmi","Pranab","Tusar"),
  salary = c(578.0,722.5,632.8),
  start_date= as.Date(c("2013-05-21","2013-07-30","2014-06-17")),
  dept = c("IT","Operations","Finance"),
  stringsAsFactors= FALSE
)
emp.finaldata<-rbind(emp.data,emp.newdata)

print(str(emp.finaldata))
print(summary(emp.finaldata))
print(ncol(emp.finaldata))
print(nrow(emp.finaldata))
print(dim(emp.finaldata))
print(attributes(emp.finaldata))

#----------------------------------------------------------------------------------------------------------------------------

name <- c("a","b","c","d","e")
phone <- c(11L,22L,33L,44L,55L)
addr <- c("aaa","bbb","ccc","ddd","eee")
date <- c("2012-01-01", "2013-09-23","2014-11-15", "2014-05-11","2015-03-27")

rownames <- c(1L,2L,3L,4L,5L)
colnames <- c("name","phone", "addr","date")

Detail <- matrix(c(name,phone,addr,date), ncol = 4, dimnames = list(rownames,colnames))
Detail

detailFrame <- as.data.frame(Detail)
print(summary(detailFrame))
print(is.factor(detailFrame$addr))
print(is.factor(detailFrame$name))
print(is.factor(detailFrame$date))
print(is.factor(detailFrame$phone))

detailFrame$name <- as.character(detailFrame$name)
detailFrame$addr <- as.character(detailFrame$addr)
detailFrame$phone <- as.numeric(detailFrame$phone)
detailFrame$date <- as.Date(detailFrame$date)

print(summary(detailFrame))
print(is.factor(detailFrame))
print(is.character(detailFrame$addr))
print(is.character(detailFrame$name))
print(is.numeric.Date(detailFrame$date))
print(is.numeric(detailFrame$phone))


#slides from 52 to 53

var_name2 <- c(2,3,4)
.var_2  <- c(2,3,4)
#.2var <- c(2,3,4)
print(ls())
print(ls(pattern = "c"))
#rm(var_name2)
print(var_name2)

c11 <- c(20L, 30L)
c12 <- c(10L, 40L)
print(c11 - c12)
print(c11 + c12)
print(c11 / c12)
print(c11 * c12)
print(c11 ^ c12)
print(c11 %% c12)
print(c11 %/% c12)

print(c11 > c12)
print(c11  < c12)
print(c11 <= c12)
print(c11 >= c12)
print(c11 == c12)
print(c11 != c12)

print(c11 & c12)
print(c11 | c12)
print(!c12)
print(c11 && c12)
print(c11 || c12)

#print(c11 ===  c12)

M = matrix( c(2,6,5,1,10,4),nrow = 2,ncol = 3,byrow =TRUE)
t = M %*% t(M)
print(t)

x <-30L
if(is.integer(x)) 
{
  print("X is an Integer")
}

x <-c("what","is","truth")
if("truth" %in% x) {
  print("Truth is found")
} else {
  print("Truth is not found")
}
a <- "b"

x <- readline(prompt = "enter a number : ")
x <- as.integer(x)
print(typeof(x))
x <-switch(
  x,
  "a" = "first",
  "s" = "second",
  "d" = "third",
  "f" = "fourth"
)
print(x)
print(a)
v <-c("Hello","loop")
cnt<-2
repeat {
  print(v)
  cnt<-cnt+1
  if(cnt <= 5) 
  { 
    break
  }
}

v <-c("Hello","whileloop")
cnt<-2
while (cnt< 7) {
  print(v)
  cnt= cnt+ 1
}

v <-LETTERS[1:4]
for ( i in v) 
{
  print(i)
}

v <-c("Hello","loop")
cnt<-2
repeat 
{
  print(v)
  cnt<-cnt+ 1
  if(cnt> 5)
  {
    break
  }
}

v <-LETTERS[1:6]
for ( i in v) {
  if (i== "D") {
    next
  }
  print(i)
}

new.function<-function(a) {
  for(i in 1:a) {
    b <-i^2
    print(b)
  }
}
new.function(4)

.functio333n<-function(a) {
  for(i in 1:a) {
    b <-i^2
    print(b)
  }
}
.functio333n(4)

new.function<-function(a,b,c) {
  result <-a * b + c
  print(result)
}
# call by position.
new.function(5,3,11)
# call by name.
new.function( b = 5, a = 7,c = 3)

new.function2<-function(a = 3, b = 6) {
  result <-a * b
  print(result)
}
#Call without giving any argument.
new.function2()
#Call with new parameters.
new.function2(9,5)

x <- c(1:7)

x

{
  
  abs(x) #-Absolute value of x
  
  print(sqrt(x)) #-Square root of x
  
  sum(x) #-Sum of x
  
  cos(x) #-Cosine value of x
  
  sin(x) #-Sine value of x
  
  tan(x) #-Tan value of x
  
  exp(x) #-Exponential value of x
  
  log(x) #-Log value of x
  
  #Statistical functions :
  
  mean(x) #-Average of x
  
  median(x) #-Median of x
  
  min(x) #-Minimum value in x
  
  max(x) #-Maximum value in x
  
  quantile(x) #-Quantile distribution of x
  
  sd(x)#3 -Calculate standard deviation
  
  var(x) #-Calculate variance
  
  sample(x)# -Random samples
  
  summary(x) #-Min,Max, Median etc of x
  #Functions
  
  length(x)# -Return no. of elements in vector x
  
  #ls()# -List objects in current environment
  
  paste(x) #-Concatenate vectors after converting to character
  
  range(x) #-Returns the minimum and maximum of x
  
  rep(1,5) #-Repeat the number 1 five times
  
  rev(x)# -List the elements of "x" in reverse order
  
  sign(x)# -Returns the signs of the elements of x
  
  sort(x, decreasing = TRUE) #-Sort the vector x
  sort(x, decreasing = FALSE) #-Sort the vector x
  sort(x) #-Sort the vector x
  order(x) #-List sorted element numbers of x
  
  tolower(x)
  toupper(x) 
  #Convert string to lower/upper case letters
  
  unique(x)
  #Remove duplicate entries from vector
}

format(5123.5645, digits = 7)
format(123.5645, nsmall = 3)
format(123.5645, scientific = TRUE)
format("HELLO" , width = 15, justify = "centre")
getwd()
pi
#remaining on slide 69

#################################################################33
getwd()
setwd('C:/Users/parth jardosh/Documents/dataScience/')
data <-read.csv("input.csv")
print(data)
print(is.data.frame(data))
print(ncol(data))
print(nrow(data))

str(data)
data <- transform(  data, name = as.character(data$name),
                    start_date = as.Date(data$start_date),
                    dept = as.character(data$dept)
)

str(data)
attributes(data)
is.na(data)
colSums(is.na(data))
(data[!complete.cases(data),])
data$id[5] <- 5

#standard solutions in the pdf


max(data$salary)
(subset(data, salary == max(data$salary)))
(subset(data, dept == "IT"))
(subset(data, dept == "IT" & salary > 600))
(newdf <- data.frame(data$name, data$start_date))  
colnames(newdf) <- c("names", "stardate")
print(newdf)
print(data)

print((subset(data, start_date == min(data$start_date)))$name)

print((subset(data, start_date == max(data$start_date)))$name)

##############################################################
#install.packages("xlsx")
install.packages("openxlsx")
library("openxlsx")
getwd()
data2 <-read.xlsx("inputExcel.xlsx", sheet= 1)
head(data2)
print(data2)
str(data2)

data2 <- transform(  data2,start_date = as.Date(data$start_date))


install.packages("XML")
library("XML")
library("methods")

result <-xmlParse(file = "inputXml.xml")
print(result)
Xml.df<-xmlToDataFrame("inputXml.xml")
print(Xml.df)

#install.packages("rjson")
library("rjson")
result <-fromJSON(file = "inputjson.json")
Jsdf<-as.data.frame(result)
print(Jsdf)



#install.packages('RMySQL')
library('RMySQL')
mysqlconnection= dbConnect( MySQL(), user = 'root', password = '', dbname= 'test',host = 'localhost' )
dbListTables(mysqlconnection)

result = dbSendQuery(mysqlconnection, "select * from students")
data = fetch(result, n = -1)
print(data)
list.files()1
###########################################

getwd()
setwd('C:/Users/parth jardosh/Desktop/Desktop/Suven Data Analytics using R')
dataset <-read.csv("kaipan.csv")
print(dataset)
print(is.data.frame(dataset))
print(ncol(dataset))
print(nrow(dataset))
colSums(is.na(dataset))
# So missing values present in both Age and Salary Columns taking care of missing values.
# By replacing it to the average value for non NA entries.

dataset$Age<-ifelse(is.na(dataset$Age),
                    mean(dataset$Age, na.rm = TRUE),
                    dataset$Age)
dataset$Salary<-ifelse(is.na(dataset$Salary),
                       ave(dataset$Salary, FUN = function(x)
                         mean(x, na.rm = TRUE)),
                       dataset$Salary)
str(dataset)
colSums(is.na(dataset))


dataset$Country= factor(dataset$Country,
                        levels = c('France', 'Spain', 'Germany'),
                        labels = c(1, 2, 3))
dataset$Purchased= factor(dataset$Purchased,
                          levels = c('No', 'Yes'),
                          labels = c(0, 1))
#########################
getwd()
setwd('C:/Users/parth jardosh/Desktop/Desktop/Suven Data Analytics using R')
dataset <-read.csv("kaipan2.csv")
print(dataset)
dataset$State= factor(dataset$State,
                      levels = c('New York', 'California', 'Florida'),
                      labels = c(1, 2, 3))

#install.packages("caTools")
library(caTools)
set.seed(156) # model reproduction
split = sample.split( dataset$Profit, SplitRatio= 0.5)
training_set= subset(dataset, split == FALSE)
test_set= subset(dataset, split == TRUE)
print(training_set)
nrow(training_set)
nrow(test_set)
print(test_set)
str(dataset)
###########################
x<-c(1,2,3,4)
set.seed(156)
(sample(x, 15 ,replace = T))
mydata= data.frame(
  Q1 = sample(1:6, 15, replace = TRUE),
  Q2 = sample(1:6, 15, replace = TRUE),
  Q3 = sample(1:6, 15, replace = TRUE),
  Q4 = sample(1:6, 15, replace = TRUE),
  Age = sample(1:3, 15, replace = TRUE)
)
print(mydata)
summary(mydata)
View(mydata)
names(mydata)
nrow(mydata)
ncol(mydata)

str(mydata)
head(mydata)
head(mydata , n = 5)
tail(mydata)
tail(mydata , n = 5)
cor(mydata)

#########################
#install.packages('dplyr')
library(dplyr)
mtcars
mtcars$mpg>20
mtcars[mtcars$mpg>20,c("mpg","hp")]
attach(mtcars)
(mpg20 <-mtcars$mpg> 20)
(mpg20 <-mpg > 20)
detach(mtcars)
(subset(mtcars, mpg>20, c("mpg", "hp")))
(subset(mtcars, mpg==min(mpg) || hp==max(hp)))
(subset(mtcars, select=c("mpg", "hp")))

install.packages("magrittr")
install.packages("dplyr")    # alternative installation of the %>%
library(magrittr) # need to run every time you start R and want to use %>%
library(dplyr)    # alternative, this also loads %>%

filter(mtcars, mtcars$mpg>20)
drawrownames<-function(.data) .data %>% do( mutate (. , Name_of_my_cars= rownames(.)))
(mtcars %>% drawrownames() %>% filter(mpg>20))
# Select
(select(mtcars, mpg, hp))
# Arrange
(arrange(mtcars, mpg))
(arrange(mtcars, desc(mpg)))    
mtcars
# summarise
(summarise(mtcars, Average = mean(mpg), Median=median(mpg)))

# Group by
group_by(mtcars, cyl) %>% summarise(Count=n())

# Chaining
mtcars%>% filter(mpg > 20) #%>% select(mpg, hp)
mtcars%>% filter(mpg > 20) %>% select(mpg, hp, wt) %>% arrange(desc(mpg))  

# Mutate ( Creating new variable )
(mtcars%>%
    select(mpg, cyl)%>%
    mutate(newvariable= mpg*cyl))

#or
newvariable<-mynewdata%>% mutate(newvariable= mpg*cyl)

#Rename
mynewdata<-mtcars
mynewdata%>% rename(miles = mpg)

##################3
getwd()
(person <-read.csv("unnamed.txt"))
# Print the dataframecheck for errors
# Give column names & Header false
(person <-read.csv(file = "unnamed.txt", header = FALSE, col.names= c("age","height") ))
# Validate the structure
str(person)

(person <-read.csv("unnamed.txt",header=FALSE,colClasses=c('numeric','numeric')))
(person <-read.csv(file = "unnamed.txt",
                   header = FALSE, col.names= c("age","height"),
                   stringsAsFactors= FALSE))
(subset(person , height == '5.7*' | age == '5.7*'))
print(person)
str(person)
person$height[3] <-5.7
#data loss by doing the below thing
person$height <- as.numeric(person$height)
print(person)
str(person)

#################
raw_data <- readLines("unnamed2.txt")
print(raw_data)
refined <- strsplit(raw_data , ",")
print(refined)
print(length(refined))
refined_matrix <- matrix(unlist(refined) , nrow = length(refined) , byrow = TRUE)
print(refined_matrix)
colnames(refined_matrix) <- refined_matrix[1,]
print(refined_matrix)
refined_matrix <- refined_matrix[-1,]
print(refined_matrix)
furnished <- (as.data.frame(refined_matrix ,  stringsAsFactors = FALSE))
print(furnished)
str(furnished)
furnished <- transform ( furnished , id = as.integer(id) , salary = as.numeric(salary) , start_date = as.Date(start_date) )
print(furnished)
str(furnished)
write.csv(furnished , file = "furnished.csv" , row.names = FALSE)
#################################################################

(txt <-read.csv("dalton.txt") )
str(txt)
(txt <-readLines("dalton.txt"))
(I <-grepl("^%", txt))
(dat<-txt[!I])
(fieldList<-strsplit(dat, split = ","))
assignFields<-function(x){
  out <-character(3)
  i<-grepl("[[:alpha:]]",x)
  out[1] <-x[i]
  i<-which(as.numeric(x) < 1890)
  out[2] <-ifelse(length(i)>0, x[i], NA)
  i<-which(as.numeric(x) > 1890)
  out[3] <-ifelse(length(i)>0, x[i], NA)
  out
}

standardFields<-lapply(fieldList, assignFields)
print(standardFields)
(M <-matrix(unlist(standardFields), nrow=length(standardFields), byrow=TRUE))
(colnames(M) <-c("name","birth","death"))
(daltons<-as.data.frame(M, stringsAsFactors=FALSE))
str(daltons)
daltons= transform(daltons,birth= as.numeric(birth),death = as.numeric(death))
print(daltons)
#
###################3
revenue <-c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <-c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
profit <- revenue - expenses
profit <- profit / 1000
profitafterTax <- profit * 0.7
profitMargin <- round(( profitafterTax / revenue) * 100000)
mean1 <- mean(profitafterTax)
goodMonths <- subset(profitafterTax , profitafterTax > mean1)
badMonths <- subset(profitafterTax , profitafterTax <= mean1)  
bestMonth <- subset(profitafterTax ,  profitafterTax == max(profitafterTax))
worstMonth <- min(profit)

d <-data.frame(
  revenue,
  expenses,
  profit,
  profitafterTax,
  profitMargin,
  goodMonths,
  badMonths,
  bestMonth,
  worstMonth
)
print(d)
########################################################################################
#PIECHART
x <- c(21,62,10,53)
labels <- c("London" , "New York" , "Singapore" , "Mumbai")
png(file = "city.jpg")
(piepercent = x / sum(x) * 100)
pie(x , labels =labels , col = c("RED" , "GREEN" , "BLUE" , "YELLOW"))
legend("bottomleft" , x , pch = 10 , legend = labels , col = c("RED" , "GREEN" , "BLUE" , "YELLOW"))
dev.off()

#HISTOGRAM
v <- c(47,53,31,58,36,43,22)
png(file = "histogram.png")
hist(v , ylim = c(0 , 5) , xlab = "weight" , ylab = "frequency" , col = "yellow" , border = "blue")
dev.off()

#timeserie splot
rainfall <- c(112,556,120,600,130,610,140,620,150,630,160,640)
png(file = "timeseries.png")
plot.ts(rainfall , ylim = c( 100, 670) ,xlab = "2012 rainfall data" , ylab = "meters rainfall" , col = "blue" , main = "rainfall plot")
dev.off()

#line chart

v <- c(7,12,28,3,41)
w <- c(9,14,24,8,50)
q <- c("v" , "w")
png ( file = "line_chart.jpg")
plot(v , type = "o" , col = "blue")
lines(w, type = "o" , col = "red")
legend("topleft" , q , pch = 15:16 , col = c("blue", "Red") )
dev.off()

#bar chart
H <- c(7,12,28,3,55)
labels <- c("A" , "b" , "C" , "d" , "e")
png(file = "barchart.png")
barplot(H , names.arg = labels , col = c("white" , "green" , "red" , "blue" , "cyan") , ylim = c(0,60))
dev.off()

#boxplot
data("mtcars")
input <- mtcars[,c("mpg", "cyl")]
print(head(input))
png(file = "boxplot.png")
boxplot(mpg~cyl , data = input , ylim = c(5,35) , 
        xlab = "number of cylinders" , 
        ylab = "mile per gallon" , main = "mileage data")
dev.off()

#scatter plot
input <- mtcars [,c('wt', 'mpg')]
png(file = "scatteR_plot.png")
plot( x = input$wt, y = input$mpg,
      xlab = "weight",
      ylab = "Mileage",
      xlim = c(2.5 , 5),
      ylim = c(15,30),
      main = ("WEight vs MIleage")
)
dev.off()
####

##################deliveries.csv operation##############################################

getwd()
deliveries <- read.csv("deliveries.csv" , stringsAsFactors = F)
str(deliveries)
name$bowler <- unique(subset(deliveries, deliveries$wide_runs == max(deliveries$wide_runs)))

write.csv(name , file = "name.csv" , row.names = FALSE)
pname <- subset(name, split = TRUE)

superover <- subset(deliveries , deliveries$match_id == 10 && deliveries$is_super_over == 1)

batname <- subset(deliveries, deliveries$total_runs > 6)
batsname <- unique(batname$batsman)

matchid25 <- subset(deliveries, deliveries$match_id == 25 )
maxbowl <- subset(matchid25, matchid25$extra_runs == max(matchid25$extra_runs))
maxbowl$bowler
maxtotalruns <- subset(deliveries, deliveries$total_runs == max(deliveries$total_runs))
cat(maxtotalruns$batsman , maxtotalruns$bowler,maxtotalruns$non_striker)

bowlname <- subset(deliveries, deliveries$penalty_runs == max(deliveries$penalty_runs))
bowlname$bowler

batsman <- subset(deliveries , deliveries$batsman_runs == max(deliveries$batsman_runs))
batsman$batsman

batsmanunique <- unique((deliveries$batsman))
str(deliveries)
(df <- deliveries %>% group_by(batsman) %>% 
    summarise(runs = sum(batsman_runs)) %>% 
    arrange(desc(runs)) %>% filter(runs >3000))

(df <- deliveries %>% group_by(bowler) %>% 
    summarise(runs = sum(int(dismissal_kind)) )%>% 
    arrange(runs) %>% filter(runs  > 0))

dismissal <- list(deliveries$dismissal_kind != "run out" & deliveries$dismissal_kind != "")

###########################################################################################
getwd()
setwd('C:/Users/parth jardosh/Desktop/Desktop/Suven Data Analytics using R/matches')
matches <- read.csv("matches.csv" , stringsAsFactors = F)
print(matches)
str(matches)
#1:
matches2 <- matches %>% group_by(season) %>% summarise(Count = n())
season <- unlist(matches2$season)
count <- unlist(matches2$Count)
for (i in 1:length(season)){
  cat(season[i] , count[i], sep = "\t")
  cat("\n")
}
#2:
win_runs <- list(matches$win_by_runs!=0)
# win_runs <- matches %>% filter(win_by_runs != 0)
table(win_runs)["TRUE"]

win_wickets <- list(matches$win_by_wickets!=0)
# win_wickets <- matches %>% filter(win_by_wickets != 0)
table(win_wickets)["TRUE"]
#correct
#3:
tie_match <- list(matches$result == "tie")
# tie_match <- matches %>% filter(matches$result == "tie")
table(tie_match)["TRUE"]
#correct

#4:
teams_2016 <- unique(subset(matches , matches$season == 2016)$team1)
#5:
teams_2010 <- subset(matches , matches$season == 2010)
MI_2010_1 <- subset(teams_2010, teams_2010$winner == "Mumbai Indians")
#winMI <- matches %>% filter(matches$season == 2010) 
#6:
#stadiums <- unique(matches$venue)
stadiums <- matches %>% group_by(venue) %>% summarise(count = n())
#7:
team_1 <- matches %>% group_by(team1) %>% summarise(count = n())
team_2 <- matches %>% group_by(team2) %>% summarise(count = n())

team_2 <- team_2 %>% rename("team1" = "team2")
team <- rbind(team_1 , team_2)
team <- team %>% group_by(team1) %>% summarise(no = sum(count))

#result_df <- as.data.frame(as.matrix(team_1$count) + as.matrix(team_2$count))
#result_df$teamnames <- team_1$team1
#rowSums(result_df ,result_df$V1)

#8:
matches_won <- matches %>% group_by(winner) %>% summarise(count = n())

####################################################
getwd()
setwd('C:/Users/parth jardosh/Desktop/Desktop/Suven Data Analytics using R/battles')
battles <- read.csv("battles.csv" , stringsAsFactors = F)
print(battles)
str(battles)
#1:

#2:
(df2 <- df %>% group_by(region))
#write.csv(df1 , file = "df1.csv" , row.names = FALSE)

occurences<-table(unlist(df2$region))
#3:
(df1 <- battles %>% group_by(region) %>% arrange(location) )
occurences<-table(unlist(df1$location))

#4:
types <- unique(battles$battle_type)
occurences<-table(unlist(battles$battle_type))

#5 :

#6:
uy3length(major_deaths$battle_number) <- subset(battles, battles$major_death == 1)

###############################################
getwd()
setwd('C:/Users/parth jardosh/Desktop/Desktop/Suven Data Analytics using R/complete')
ufo <- read.csv("complete.csv" , stringsAsFactors = F)
str(ufo)
#top shape of ufo seen and described by people

shapes <- ufo %>% group_by(shape) %>% summarise(count = n()) %>% arrange(desc(count)) %>% filter(count > 3000)
shapes <-shapes %>% filter(shapes$count == max(shapes$count))
H <- shapes$count
labels <- shapes$shape
png(file = "shapetop.jpg")
barplot(H , names.arg = labels , col = c("white" , "green" , "red" , "blue" , "cyan") , ylim = c(0,20000))
dev.off()
#top country sightings
country3 <- ufo %>% group_by(country) %>% summarise(count = n())
country3 <- country3 %>% filter(country3$count == max(country3$count))

#top state

state3 <- ufo %>% group_by(state) %>% summarise(count = n())
state3 <- state3 %>% filter(state3$count == max(state3$count))

#top city
city3 <- ufo %>% group_by(city) %>% summarise(count = n())
city3 <- city3 %>% filter(city3$count == max(city3$count))

#time common

date<- ufo$datetime
y <- strptime(ufo$datetime, format='%m/%d/%Y %H:%M')

times <- strftime(y, '%H:%M')



install.packages("stringi")
library("stringi")
library("dplyr")
ufo$date <- stri_sub(ufo$datetime,-5,-1)
View(ufo$date)
ufo$date <- ifelse(ufo$date == '' , NA , ufo$date)
colSums(is.na(ufo))
toptime <- ufo %>% group_by(date) %>% summarise(count = n()) %>% arrange(desc(count)) %>% filter(count > 1790)
(maxdate<- subset(toptime ,toptime$count == max(toptime$count))) 

H <- toptime$count
labels <- toptime$date
png(file = "toptime.png")
barplot(H , names.arg = labels , col = c("white" , "green" , "red" , "blue" , "cyan") , ylim = c(0,6000))
dev.off()
#year tops
ufo$date <- stri_sub(ufo$datetime,-10,-7)
View(ufo$date)
ufo$date <- ifelse(ufo$date == '' , NA , ufo$date)
colSums(is.na(ufo))
toptime <- ufo %>% group_by(date) %>% summarise(count = n()) %>% arrange(desc(count)) %>% filter(count > 1790)
(maxdate<- subset(toptime ,toptime$count == max(toptime$count))) 

H <- toptime$count
labels <- toptime$date
png(file = "topyear.jpg")
barplot(H , names.arg = labels , col = c("white" , "green" , "red" , "blue" , "cyan") , ylim = c(0,10000))
dev.off()
#plot on map
install.packages("maps")
install.packages("ggmaps")
install.packages("maptools")

library(maps)
x <- ufo$latitude
y <- ufo$longitude
x <- as.numeric(x)
y <- as.numeric(y)
png(file = "plot.jpg")
map("world" , fill = TRUE , col = "white" , bg ="lightblue" , ylim = c(-150 , 150) , mar = c(0,0,0,0))
points(y,x , col = "red" , pch = 16)
dev.off()




