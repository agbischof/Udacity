#Reddit Survey Response DataSet

getwd()
setwd('/Users/agibbs/code/Udacity/Exploratory Data Analysis/lesson2')

reddit = read.csv('reddit.csv')
str(reddit)

table(reddit$employment.status)
summary(reddit)

levels(reddit$age.range)

library(ggplot2)

AgeLevels = c('Under 18', '18-24', '25-34', '35-44', '45-54', '65 or Above', 'NA')

reddit$age.range = factor(reddit$age.range, levels = AgeLevels)
#reddit$age.range = ordered(reddit$age.range, levels = AgeLevels)
qplot(reddit$age.range)


IncomeLevels = c("Under $20,000", "$20,000 - $29,999", "$30,000 - $39,999", "$40,000 - $49,999", "$50,000 - $69,999", "$70,000 - $99,999", "$100,000 - $149,999", "$150,000 or more")

reddit$income.range = factor(reddit$income.range, levels = IncomeLevels)

qplot(reddit$income.range)
