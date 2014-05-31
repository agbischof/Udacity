setwd('/Users/agibbs/code/Udacity/Exploratory Data Analysis/lesson2')

statesInfo = read.csv('stateData.csv')

stateSubset = subset(statesInfo, state.region == 1)
#head(stateSubset, 2)
#dim(stateSubset)


#stateSubsetB = statesInfo[statesInfo$state.region == 1, ]
#head(stateSubsetB, 2)
#dim(stateSubsetB)

stateHShigh = subset(statesInfo, highSchoolGrad > 50)
stateHShigh

stateHSlow = subset(statesInfo, highSchoolGrad < 50)
stateHSlow

mean(stateHShigh$illiteracy)
mean(stateHSlow$illiteracy)

mean(stateHShigh$murder)
mean(stateHSlow$murder)

mean(stateHShigh$life.exp)
mean(stateHSlow$life.exp)

mean(stateHShigh$income)
mean(stateHSlow$income)
