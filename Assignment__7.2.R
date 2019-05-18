#Ques.1.write a program to create barplots for all the catagorical columns in mtcars

library(ggplot2)
ggplot(mtcars, aes(x = cyl, y = gear, fill = vs)) +
  geom_bar(stat = "identity")

#Ques.2.create a scatterplot matrix by gear types in mtcars dataset
scatterplotMatrix(~mpg+disp+drat|cyl, data=mtcars , reg.line="" , smoother="", col=heat.colors(4) , smoother.args=list(col="grey") ,
                  cex=1.5 , pch=c(15,16,17) , main="Scatter plot with Three Cylinder Options")

#Ques.3.write a program to create a plot density by class variables

densityplot(~ hp, group = cyl, data = mtcars, auto.key = TRUE)
