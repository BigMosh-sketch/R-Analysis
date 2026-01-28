cat("\014") # clear the console
x <- 0:6
print(x)

x <- c("Hello","World")
print(x)
x
class(x)
typeof(x)
 v2 <- c(1,2,3,4,5)
 class(v2)
 typeof(v2)
 x <- mtcars
 z <- sormas_lab
 ?paste

# Vector ------------------------------------------------------------------
# c function used to create a vector of an object by concatenate the elements  
 x <- c("Hello","World")
 print(x)
 pas(x)
 length(x)
 v2 <- ('Hello World')
 length(v2)
 v3 <- c(1,2,3,4,5)
 
 lo <- c(FALSE,TRUE)
 class(lo)
 x1 <-  (10+3i) # complex number
 class(x1)
 typeof(x1)
 
 x2 <- data.frame(1,2,3,4,5)
x2 
print(sormas_lab)
print(c('hello','students'))
print(paste('hello','students'))
print(paste('hello','students',sep=','))
paste0('hello','students', sep=',')
sprintf("%s is %f feet tall", "Ashley", 5.1)
sprintf("%s is more tall than %s.%s","Bola","Ismaila")
sprintf("%s is the Director of surveillance and Epidemiology at the age of %i","Fatimah",54)
sprintf("%f", pi)

vec1<-c(10,20,30)
vec2<-c("a","b","c")
vec3<-c(TRUE,FALSE,TRUE)
print(c(vec1,vec2,vec3))
print(data.frame(vec1,vec2,vec3))
vec1;vec2;vec3

# Using C function of elements of different data type........... ----------

vec4<-c(10,"a",TRUE) # R convert datatype to character
 vec4
vec5 <- c(FALSE,12,TRUE)
vec5
class(vec5)
 # Character > Numeric > Logical in using C function of different datatype

vec7 <- c(1:7)
vec7

vec8 <- c(1,2,3)
vec8

# Sequence (Startnumber,EndNumber,Interval of) ----------------------------

vec9 <- seq(1,20,2)   # Create a vector of Odd_Numbers
vec9
 
vec10 <- seq(2,20,2) #Create a vector of Even_Numbers
vec10

vec11 <- seq(from=21,by=2,length.out=10)
vec11

# Ways to name a vector ---------------------------------------------------


temperature <- c(20,45,35,49,39,19,52)
temperature

names(temperature) <- c("Mon","Tue","Wed","Thur","Fri","Sat","Sun")
temperature

price<-seq(100,220,20)
price
names(price) <- paste0("p",1:7)

# Basic Maths function ----------------------------------------------------
vec7
mean(vec7)
sd(vec7)
var(vec7)
min(vec7)
max(vec7)
prod(vec7)

#Camparison Operator----------------------------------------------------
v1 <- c(19,12,45)
v2 <- c(19,20,30)
v1==v2
 v1!=v2
v1>v2

price<-seq(100,220,20)
price
names(price) <- paste0("p",1:7)

# Using Index position-------------------------------------------------------
price[c(1,5)]
price[1:5]
price[c(1,2)]

#Indexing with Name----------------------------------------------------------
price[c("p2")]
price["p2"]
price[c("p1","p2","p3")]
#using Logical position------------------------------------------------------
price[c(T,F,T,T,F,F,F)]
price[c(T,F)]

#Using Exclude position method -----------------------------------------------
price[-2]
price[c(-2,-5)]

# using Comparison Method------------------------------------------
price[price>140]
# or------------------------------
x <- price>140
price[x]

# Handing NA value in a vector --------------------------------------------

order1 <- c(1,2,3,NA,5,6,7)
order1
names(order1) <- c("p1","p2","p3","p4","p5","p6","p7")
order1
order2 <- c(1,2)
order3 <- order1 + order2
order3

l <- length(order1)
l
order5 <- na.omit(order1[order1<1])
order1[1:5]
order5
order1
sum(order1) # Result give "NA"
sum(order1,na.rm = T) # Give the sum value by excluding the NA
sd(order1,na.rm = TRUE)
var(order1,na.rm=TRUE)
mode(order1)
median(order1,na.rm =T)

x <- c(1,2,3,4)
x <- 16
sqrt(x) #returns square root

# Matrix Function ---------------------------------------------------------
v <- 20:30
v
matrix(v)
matrix(matrix(v))
mat1<-matrix(0,3,1)
mat1
# Matrix(Vector data, number of rows,number of columns)
Con1 <- 1:9
matrix(Con1,3,3)
matrix(Con1,nrow = 3 ,byrow =FALSE ,dimnames =list(c("p1","p2","p3"),c("r1","r2","r3")))
# Creating matrix from vector----------------------------

stock1 <- c(450,432,509,345,411)
stock2 <- c(521,481,399,505,476)
stock <- c(stock1,stock2)
stock
matrix(stock,2, byrow = TRUE, dimnames = list(c("R1","R2"),c("c.1","C.2","C.3","C.4","C.5")))
       
       
Stock.matrix <- matrix(stock,2)
Stock.matrix
colnames(Stock.matrix) <- c("Mon","Tue","Wed","Thu","Fri")   
rownames(Stock.matrix) <- c("R.1","R.2")


# Functions associated with matrix ----------------------------------------

nrow(Stock.matrix)
ncol(Stock.matrix)
rownames(Stock.matrix)
colnames(Stock.matrix)
dimnames(Stock.matrix)
# Matrix Operation----------------------------------------------------
colSums(Stock.matrix)
rowsum(Stock.matrix)
rowMeans(Stock.matrix)
colMeans(Stock.matrix)

# cbind &rbind (append  a new vector or matrix to either column or row)
Stock.matrix
stock3 <- c(150,151,149,120,114)
total_stock <- rbind(Stock.matrix,stock3)
total_stock
stock4 <- c(234,543,654)

total_stock_final <- cbind(total_stock,stock4)
total_stock_final


# Selection and Indexing --------------------------------------------------

 Results <- matrix(c(20,30,NA,70,22,28,36,80,24,26,32,75,26,24,NA,50),nrow = 4,byrow = TRUE,dimnames =
         list(c("Lukman","Uswat","Mayowa","Olivia"),c("Maths","Eng","Chem","Phy")))

Results

avg <- colMeans(Results,na.rm = TRUE)
avg
Results[1,1]
Results
 Results[3,c(2,3)]

 Results[1,1]
 X <- Results[c("Uswat","Mayowa"),]
mean(Results[1,],na.rm = TRUE)

#Find the average and the total score for all the students
rowMeans(Results,na.rm = TRUE)
apply(Results,1,mean, na.rm=TRUE) # Using apply function (matrix,(1=rowor 2=col),Function)
apply(Results,1,sum,na.rm=TRUE)

passing_score<-c(25,25,25,70)
passing_score
# comparision two matrix--------------------------------------------------------------
(Results[]>passing_score)

#Find in how many subjects "Mayowa" has passed----------------------------------------
Results
(Results[3,]>passing_score)
sum((Results["Mayowa",]>passing_score))# pass 3 subjects i.e Eng, Chem ,Phy


# Data.frame --------------------------------------------------------------

data("iris")
x11 <- View(iris)
data(AirPassengers)
View(AirPassengers) # View the dataset------------------------------------

AirPassengers
summary(iris) # Statistical Summary of Dataset ----------------------------
 str(iris) # strucrure of dataset---------------------------


# Creating a dataframe using data.frame function --------------------------

days <- c('mon','tue','wed','thu','fri')
temp <- c(25.6,30.1,45,37.3,41.2)
rain <- c(TRUE, TRUE, FALSE, FALSE, TRUE)

vec31 <- c(days,temp,rain)
vec31
matrix(vec31,3,5, byrow = TRUE)

vec32 <- data.frame(days,temp,rain)
vec32


summary(vec32)
str(vec32)

vec32$days # Display in vector format
vec32["days"] # display in data.frame format

# Filtering data.frame using subset ---------------------------------------

subset(vec32,days=="mon") 
vec32[1,]
subset(vec32,subset = rain== TRUE)
subset(vec32,subset = temp>32)

# Sorting the dataframe using order function ------------------------------

con3 <- order(vec32$temp)
con3

# Merging dataframe -------------------------------------------------------
?data.frame
authors <- data.frame(
  surname = I(c("Tukey", "Venables", "Tierney", "Ripley", "McNeil")),
  nationality = c("US", "Australia", "US", "UK", "Australia"),
  deceased = c("yes", rep("no", 4)))
authors
books <- data.frame(
  name = I(c("Tukey", "Venables", "Tierney",
             "Ripley", "Ripley", "McNeil", "R Core")),
  title = c("Exploratory Data Analysis",
            "Modern Applied Statistics ...",
            "LISP-STAT",
            "Spatial Statistics", "Stochastic Simulation",
            "Interactive Data Analysis",
            "An Introduction to R"),
  other.author = c(NA, "Ripley", NA, NA, NA, NA,
                   "Venables & Smith"))
Employee_Demographics$gener <- as.factor(Employee_Demographics$gener)

Employee_Demographics <- data.frame(
                Emp_ID = I(c(1,2,3,4,5,6 )),
                First_Name = c("Ronke","John","Idris","Farouq","Yemi","Ola"),
                Last_Name = c("Banji","Idayah","Jimoh","Gbadamosi","Bolu","Ogunmodede"),
                Age = c(23,45,56,76,54,34),
                gener = as.factor(c(rep("Male",3),rep("Female",3))))



Employee_Salary <- data.frame(
  Emp_ID = I(c(1,2,3,4,5,6)),
  Job_title = as.factor((c("Data analyst","Sales Manager","Financial Manager","Sale Rep","Head of Security","Contract Staff"))),
  Salary = c(101300,234576,123456,908765,546374,315467))


Employee_Salary
Employee_Demographics

Employee_Details <- merge.data.frame(Employee_Demographics,Employee_Salary)
Employee_Details

# Example to manipulate a dataframe 

salesreport<-data.frame(Id=101:110,
                        Product=c("A","B"),
                        Unitprice=as.integer(runif(10,100,200)),
                        Qty=as.integer(runif(10,10,20)))
salesreport 

# Transpose ---------------------------------------------------------------

(t(salesreport))

# Sorting using order function --------------------------------------------
salesreport 
(order(salesreport$Qty ))
order(salesreport$Unitprice, decreasing = TRUE)

# Extract the row of which the product is A and the Unityprice > 150 

subset(salesreport,Product == "A" & Unitprice >105)

# Extract the first and forth column product is A and the unityprice > 150
salesreport
subset(salesreport,Product == "A" & Unitprice >105,c(1,4))

# Aggregate  Function -------------------------------------------------
# Total Quantity sold for each product
salesreport
aggregate(salesreport$Qty,list(salesreport$Prod),sum,na.rm=T)
apply(salesreport$Qty,2,sum, na.rm=T)
salesreport
?aggregate
aggregate(salesreport$Qty,list(salesreport$Product),sum,na.rm=T)
 

# List in R ---------------------------------------------------------------

list2 <- list(ID=c(10,12,13),
              Name=c("Bola","Yasir","Moshood"),
              Results=c(rep("Passed",2),"Failure"))
list2
list3 <- list(ID=seq(10,50,5),
              Name=matrix(1:9,nrow = 3,byrow = TRUE),
              movie=list(a="Interesting",b="Not Interesting"))
list3
list3[2]
list3$movie
list3$Name[5]# same 
list3[[2]][3] # with this
length(list3)
class(list3)


# Conversion of vector to list --------------------------------------------

price <- c(340,456,654,766)
price
x <- as.list(price)
(unlist(x))


# Convert vector into matrix ----------------------------------------------

price2 <- c(234,321,654,768)
dim(price2) <- c(2,2) # Vector into matrix
price2

# Basic data type function ------------------------------------------------

  # is.numeric <- True or false 
  #is.integer <- True or False
#  as.integer <-  change the data type to integer
# as.character <-  CHange the datatype to Character




# -----------------Functions and Flow control in R ------------------------------
# Logical operator
 # And &
 # or |
 # Not !

data()
df <- View(mtcars)
df <- mtcars
df["mpg"]>=30
df[df["mpg"]>=30,]
df["mpg"]>=30 & df["hp"]>100
df[df["mpg"]>=30 & df["hp"]>100,]


# ----------------------------------Functions in R ------------------------

hello_world <- function(){
  print('hello World in R!')
}
hello_world()

Moshood <- function(){print("YA Allah forgive my sin")}
Moshood()
Yasir <- function(){print(X)}
X <- "Idowu was your day"
Yasir()

# --------------------Function with a single argument ---------------------

hello_name <- function(name){
  print(paste('hello ',name))
}
hello_name('John')
   
X <- function(name){print(paste("Welcome to my page",name))}
X("Abdul")
print(paste("Hello","World"))
print("Hello World")
print(paste0("Hello world"))


# -------Functions with 2 arguments ---------------------------------------

X2 <- function(num1,num2){print(num1+num2)}
X2(2,3)

X2(c(2,4,6),2) # adding a vector to a value using the above functions
 x3 <- function(){print("Hello world")}
 x3()

 x2 <- function(name){print(paste("Welcome to my recipe page,",name))}
 x2('Abdul')
 
 

# --------------------------Functions with  default arguments -------------

vex <- function(name="Adam"){print(paste("How is working going,", name))}
 vex()

# ---------------Return a value from function -----------------------------

vex2 <- function(name,Title){print(paste(Title,',',name))} 
vex2("Bola","How are you doing")

vex3 <- function(name="Olawale",Title="King of soccer"){print(paste(Title,',',name))}
 vex3()

 v <- "I'm global variable"
 stuff <- "I'm global stuff"
 
 fun <- function(stuff){
   print(v) 
   stuff <- 'Reassign stuff inside the function'
   print(stuff)
 }
fun()
   
v <-  "How was your day"
stuff <- "Bola ,How was your day"
vex4 <- function(stuff){ 
  print(v)
   stuff <- "My day was great"
   print(stuff)}
vex4()
print(v) 
print(stuff) 
vex4(stuff) 
vex4()# Reassignment only happens in scope of function
print(stuff)

# Create a function to find final amount to be paid by a customer 
#after adding 20% tax to the purchase amount -------------------------------
moshood <- function(x){ ola = x+(x*0.2)
               return(ola) }
moshood(200)

fiyin <-  function(x){   
                      if(x>0) fam= (x+(x*0.2)) 
                       if(x<=0) fam=x
                       return(fam)}
fiyin(200)

# Check the argument and the body of fuctions ------------------------------
args(fiyin) # Check for the arguments which is a "function"
body(fiyin) # what is contained inside {  } 


# Example to understand the scope

f1<-function(x)
{
  y=10
  g1=function(x)
  {
    y+(x*x)
  }
  
  g1(x)
}

f1(10)
# More examples on using functions ----------------------------------------
g2 <- function(x){
    y+(x*x)
}

f2 <- function(x){ y = 10
                    g2(x) } 
         f2(10)

# ---------------------If Else & Else If  ---------------------------------

         # Single condition check
         hot <- FALSE
         temp <- 50
         
         if (temp > 60){
           hot <- TRUE
         }
         hot
         temp <- 100  # assign new value for the temp
         if(temp>60){
           hot <- TRUE
         }
         hot

# IF Else Statement -------------------------------------------------------

score <- 79 
         if (score < 60){
           print(paste("You had a poor score , Ade"))
         } else {
             print(paste("Ade You scored high"))}
         

# Else If Statement -------------------------------------------------------

score2 <- 63
         if(score2 > 80){
           print("Excellent")
         } else if(score2<66 & score2 >33){ print("Good")
         } else if (score2 < 33 & score2 > 20){print("Fair")
         } else {print("Very poor")}

# More examples on else IF ------------------------------------------------
# 1
 hello <- function(score2){
   if(score2 > 80){
     print("Excellent")
   } else if(score2<66 & score2 >33){ print("Good")
   } else if (score2 < 33 & score2 > 20){print("Fair")
   } else {print("Very poor")}
   
 }
hello(63)
hello(22)

#2
status <- function(mark){
  results ="Not define"
  if(mark >50) results = "you pass your exams"
  message("Your results shows",' ', results)
}
status(40)
status(51)

#3
 status1 <- function(age){
   Age_group="Not Define"
   Vote = "Not Define"
   if(age >=18){
     Age_group= "Adults"
     Vote = "Yes"
   }
   message("Adam is an",' ',Age_group,' '," and Voting status",' ',Vote)
 }
status1(18) 
status1(12)
#4
status11 <-  function(name,age){
  len <- nchar(name)
  if(len > 5) name = toupper(name)
  message("my name is",' ',name,' ',"I am ",age,' ',"years Old")
}
status11("moshood",24)
 #4 
idris <- function(salary,extra)
                { if(extra>5)
                { bonus_per = 10}
                if(extra>10)
                { bonus_per=5}
                  bonus=salary*bonus_per*0.01
                  return(bonus)}
idris(20000,20)
idris(20000,10)

idowu <- function(age){ 
           if(age> 0 ) {
             
           if(age < 18){
             age_group = "Young"
             
    
           } else if(age < 60){
            age_group ="Adulth"
            
          }else { age_group ="Senior"}
  
          }else{ age_group = "Not defined"
                  message("Wrong age")}
         message("My name is sekinah",' ', age_group)
}
idowu(24)
idowu(0)
idowu(80)
idowu(18)


# ----------------------Using Switch functions -------------------------------
 mko <- function(city) { 
                 city2 <- switch(city,
                                LGS= 23000,
                                ABJ= 43000,
                                KOGI= 34000,
                                OYO = 38000,
                                5000 )
                            return(city2)
                            }

mko("OYO")
mko("ABJ")


# ---------------Using Repeat in R ------------------------------------------
time<-15
repeat
{
  
  if(time>=20) break
  message("Hello, Welcome to R tutorial for beginner!")
  time=time+1
  
}



# ----------using Repeat inside a function --------------------------------

bola <- function(n) {
  
  repeat{
     square=n*n
     if(square>=100) break
     message("the square is", ' ', square)
     n=1+n
  }
}

bola(1)


# -------------while loop -------------------------------------------------

x <- 0

while(x < 10){
  
  cat('x is currently: ',x)
  print(' x is still less than 10, adding 1 to x')
  
  # add one to x
  x <- x+1
  if(x==10){
    print("x is equal to 10! Terminating loop")
  }
}

# EX 2

x <- 1
while (x < 100) {
  x=x+x
  x <- x*x
  print(x)
  
}


# ----------------------------------For loop ------------------------------




# ------------------Factor in R -------------------------------------------

Type <- c("s","m","l","s","l","m")
Type[1]>Type[3]
Type[3]>Type[4]
Type[1]>Type[2]
Type[2]<Type[3]
Type[2]>Type[3]

# -------------------------Basic Maths Function ---------------------------

v <- c(-3,0,1,-5,6,4,5)
abs(v)

sum(v)
mean(v)
round(45.12453)
round(45.12453,2) # Rounds the number to 2 decimal places
ceiling(45.12453) # Return the next highest integer
floor(45.12453) # Returns the next lowest integer
trunc(56.783) # Truncates the decimal places 
log(2) # Return the log
exp(2) # Return exponent

# -------------------System Date/system time ------------------------------

Sys.time()
Sys.Date()
# Assigning system date into a variable-------------------------------------
today <- Sys.Date()

as.Date("1999-08-16")

as.Date("Nov-03-90",format="%b-%d-%y")



# ----------------------------dplyr & Tidyr --------------------------------

install.packages('nycflights13')
library(nycflights13)
View(flights)

View(filter(flights,day>=24 | dep_delay!=NA))
view(subset(flights,day>=24 | dep_delay!=NA))

# -------------------Slice in R -------------------------------------------

#slice allows to select row by position
(slice(flights,1:5))
(flights[1:5,] )   



# --------------------Mutate function in R --------------------------------

# Mutate function in R to add new column 
new_flights <- mutate(flights,overall_delay=arr_delay-dep_delay)
View(new_flights)
(new_flights[,15:20])

# --------------Transmute in R ------------------------------------------
# Transmute show in new column
over_delay <- transmute(flights,overall_delay=arr_delay-dep_delay)
over_delay

# ---------------------Summarize function in R ----------------------------

#Summarize function give descriptive statistical summary
summarise(flights,mean(air_time,na.rm=TRUE))
summarise(flights,Avg_air_time=mean(air_time,na.rm=TRUE))
summarize(flights,mean(arr_time,na.rm=TRUE),sum(arr_time,na.rm=TRUE))
aggregate(new_flights$arr_time,list(new_ flights$year),mean,na.rm=TRUE)
flights 
flights %>% summarise(Avg_arr_time=mean(arr_time,na.rm=TRUE))
flights 

# -----------------Group by () calculation ------------------------------------
data("mtcars")
View(mtcars)
a <- group_by(mtcars,gear)
a
summarize(a,mean(gear,na.rm=TRUE),sum(gear,na.rm = TRUE))
aggregate(mtcars$gear,list(mtcars$gear),sum,na.rm=TRUE)

#Example2

View(mtcars)
w <- group_by(mtcars,cyl)
summarize(w,gear=mean(gear,na.rm=TRUE),hp=mean(hp,na.rm=TRUE))
aggregate(mtcars$gear,list(mtcars$cyl),mean,na.rm=TRUE)
aggregate(mtcars$hp,list(mtcars$cyl),mean,na.rm=TRUE)

# ---------sample_n() & Sample_frac ---------------------------------------

# sample_n() & Sample_frac create new sample(rearrande the previous that sample into new one)
View(flights)
salesreport
sample_n(salesreport,10) # 10 random samples
sample_n(salesreport,5)
sample_frac(salesreport,0.4)# give 40% of the data(randomly)

# ----------------arrange () ----------------------------------------------

# arrange () use to sort in R
View(flights)
head(flights)
arrange(flights,month,dep_delay)
arrange(flights,desc(month))
order(flights$month)



arrange(sample_n(filter(flights,month==11),size = 10),desc(dep_time))
(flights %>% filter(month==11) %>% sample_n(size = 10) %>% arrange(desc(dep_time)))

# ----------------------------Tidyr in R ----------------------------------

#Tidyr for Data Manipulation
n=10

wide <- data.frame(
  ID = c(1:n),
  Face.1 = c(411,723,325,456,579,612,709,513,527,379),
  Face.2 = c(123,300,400,500,600,654,789,906,413,567),
  Face.3 = c(1457,1000,569,896,956,2345,780,599,1023,678)
)
wide
 
slice(wide,1:5)
wide[1:5,]
View(wide)



# --------------Gather Fuction in R ---------------------------------------
# gather()Reshaping data from wide format to Long format
wide
x <- gather(wide,Face,Responsetime,Face.1:Face.3)
x
# separate ()splits single column to multiple column
View(separate(x,Face,c('Target','Number')))

#Spread() Reshaping data from long format to wide format

spread(x,Face,Responsetime) # opposite of gather function



# --------------Reading & Writing data files ------------------------------

# Reading text data
credit_data <- read.table("C:\\Users\\USER\\Documents\\Epi training analysis\\R tutorial demo files\\R tutorial demo files\\Data files\\credit.txt")
View(credit_data)
# Assigning names to the column


view(data.frame(
  ID=credit_data[,1],
  Name=paste(credit_data[,2],credit_data[,3]),
  Type=credit_data[,4],
  Transaction=credit_data[,5]
))

View(data.frame(
  ID=credit_data[,1],
  Name=paste(credit_data[,2],credit_data[,3]),
  Type=credit_data[,4],
  Transaction=credit_data[,5]
))

# reading csv data
u <- read.csv("C:\\Users\\USER\\Documents\\Epi training analysis\\R tutorial demo files\\R tutorial demo files\\Data files\\Salaries.csv")
View(u)
str(u)
summary

# Reading Excel data (single sheet)
 x2 <- read_excel("C:\\Users\\USER\\Documents\\Epi training analysis\\R tutorial demo files\\R tutorial demo files\\Data files\\pokemon.xlsx")
View(x2) 


# lapply Fuction R --------------------------------------------------------

#Lappyl fuction used to import multiple excel sheets into list
excel_sheets("C:\\Users\\USER\\Documents\\Epi training analysis\\R tutorial demo files\\R tutorial demo files\\Data files\\pokemon.xlsx")
qw <- lapply(excel_sheets("C:\\Users\\USER\\Documents\\Epi training analysis\\R tutorial demo files\\R tutorial demo files\\Data files\\pokemon.xlsx"),
       read_excel,
       path="C:\\Users\\USER\\Documents\\Epi training analysis\\R tutorial demo files\\R tutorial demo files\\Data files\\pokemon.xlsx")
View(qw)

## write to excel
df <- data.frame(matrix(1:50))

write.xlsx(df, "C:\\Users\\USER\\Documents\\Epi training analysis\\R tutorial demo files\\R tutorial demo files\\Data files\\output.xlsx") 
read_excel("C:\\Users\\avijeet\\Desktop\\R tutorial demo files\\Data files\\output.xlsx")

# Reading a sas file
install.packages('sas7bdat')
library(sas7bdat)
movies<-read.sas7bdat("C:\\Users\\USER\\Documents\\Epi training analysis\\R tutorial demo files\\R tutorial demo files\\Data files\\movies.sas7bdat")
str(movies)
View(movies) 

# Plot pie chart for product and Unitsold

pie(c(135,45,60,120),c("Table","Chair","Desk","Board"),main = "Class Room",col=rainbow(4))
legend('topleft',c("Table","Chair","Desk","Board"),cex = 0.6,fill=rainbow(4))

