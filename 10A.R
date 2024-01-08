#reads excel file and declares to variable 
a=read.csv("penguin.csv")
#creates scatter plot for penguins vs years with labels 
plot(a$Year, a$Penguins, xlab="Year", ylab="Amount of Penguins", main="Number of Penguins Over The Years")
#assign variables to x and y axis
x=a$Year
y=a$Penguins
#collects and assigns variables used for quadratic equation 
yearsqu =x*x
quadm=lm(y~x+yearsqu)
#sets range for prediction
s=seq(1980,2010,1)
#gathers values for the line based on prediciton 
pc =predict(quadm,list(x=s, yearsqu=s^2))
#creates the quadratic line
lines(s,pc,col="red",lwd=4)

