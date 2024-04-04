install.packages('faraway')
library(faraway)
data(wcgs, package="faraway")
#install necessary packages
#USING LOGISTIC REGRESION TO DISCOVER PROBABILITY OF DEVELOPING HEART DISEASE
wcgs_lgs<-glm(chd~arcus+timechd+dibep+cigs+behave+chol+dbp+sdp+weight+height+age, family = binomial(link="logit"), data = wcgs,maxit=4000)
summary(wcgs_lgs)
