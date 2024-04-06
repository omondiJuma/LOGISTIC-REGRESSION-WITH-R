install.packages('faraway')
library(faraway)
data(wcgs, package="faraway")
#install necessary packages
#USING LOGISTIC REGRESION TO DISCOVER PROBABILITY OF DEVELOPING HEART DISEASE
wcgs_lgs<-glm(chd~arcus+timechd+dibep+cigs+behave+chol+dbp+sdp+weight+height+age, family = binomial(link="logit"), data = wcgs,maxit=4000)
summary(wcgs_lgs)
#the results indicate from the small pr(>|z|) values the numbers of cigarettes smokes has an impact on whether one will develop heart disease or not.
#cholesterol has a minimal to no effect on the probability of developing heart disease due to the high Pr(>|z|) value.
#very variable has a contribution to the development of a heart disease but cigarette smoking is the major one
.
