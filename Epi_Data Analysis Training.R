#Title
#Name: Epi-Data Analysis Training
#Author: Raji Moshood


# Install and packages load--------------------------------------------------

install.packages("pacman")
pacman::p_load("rio",
                "gtsummary",
               "skimr",
               "epikit",
               "tidyverse",
               "sf",
               "tmap")
install.packages("table1")
install.packages("flextable")

library(rio)
library(gtsummary)
library(skimr)
library(epikit)
library(tidyverse)
library(sf)
library(table1)
library(flextable)
library(tmap)

install.packages("textshaping")
install.packages("farver")
library(textshaping)
library(farver)
library(epikit)
install.packages("epikit", dependencies = TRUE)
install.packages("lwgeom")



# Import Dataset ----------------------------------------------------------

library(readxl)
sormas_surv <- import("C:/Users/USER/Documents/Epi training analysis/sormas_surv.csv")
View(sormas_surv)

# Data Exploration --------------------------------------------------------
unique(sormas_surv$Gender)
summary(sormas_surv)
glimpse(sormas_surv)
class(sormas_surv$`State of Residence`)
sum(3,4,5)
X <- sum(3,4,5)
X+10 
names(sormas_surv)


# Data Cleaning and Manipulation ------------------------------------------
unique(sormas_surv$outcome)
sormas_surv %>% select(state) %>% tbl_summary()
sormas_clean<-sormas_surv %>%
  mutate (state=recode(state,
                       "Baushi"="Bauchi",
                       "Lagoon"="Lagos",
                       "Kadura"="kaduna"),
  sex=recode(sex,
                "Meal"="Male",
                 "Femal"="Female"),
  outcome=recode(outcome,
                 "Alaiv"="Alive",
                 "Deth"="Death"),
  date_onset=dmy(date_onset))

# Table Summarization -----------------------------------------------------
view(sormas_clean)
sormas_clean[,c()]
sormas_clean %>% tbl_summary()
unique(sormas_clean$outcome)

#dat <- subset(survival::pbc,!is.na(trt)) #Exclude subjects not randomised
#view(dat)
#dim(dat)
#head(dat)
 
#table1(~age + sex + stage + edema +
    #     spiders + hepato + ascites
   #    + platelet + protime + albumin + alk.phos
   #    + ast + bili + chol+ copper + trig | trt, data=dat)
# Dataset Mapping Geometry ------------------------------------------------

ggplot(data=sormas_clean,
       mapping=aes(x=age)) +
  geom_histogram()

ggplot(sormas_clean,mapping=aes(x=age))+geom_histogram()

 
ggplot(data=sormas_clean,
       mapping=aes(x=sex)) +
  geom_bar()

ggplot(data=sormas_clean,
       mapping=aes(x=age,fill =sex)) +
  geom_bar()
 
ggplot(data=sormas_clean,
       mapping=aes(x=age,fill =outcome)) +
  geom_bar()

ggplot(data=sormas_clean,
       mapping=aes(x=age)) +
  geom_histogram() +
  facet_wrap(~sex)
