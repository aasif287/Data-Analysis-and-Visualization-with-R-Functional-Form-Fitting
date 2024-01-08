#reads excel file and declares to variable 
a=read.csv("beerfroth.csv")
#creates scatter plot for Beer Froth vs Time with labels 
plot(a$Time, a$Foam, xlab="Time (minutes)", ylab="Length of Beer Foam", main="Height of Beer Foam As Time Passes")
#creates variable for log of the y axis vs the x axis
em=lm(log(a$Foam)~a$Time)
#predicts values for the line across the plot
pd=exp(predict(em,list(a$Time)))
#creates the exponential line
lines(a$Time,pd, col="green", lwd=4)

