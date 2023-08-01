#Load libraries

library(ggplot2)

## View data (faithful is a dataset built into R)
faithful

#I like to view the data as I'm working, so call up the view.

View(faithful)

#Create a histogram using my data:

faithful_histogram <- ggplot(faithful, aes(x = eruptions))
faithful_histogram + geom_histogram()

#Pretty, but let's do some more work! Warning suggests adjusting binwidth.

#However, there is another way that gives even more control over the bin boundaries. 
#You will create a vector of bin boundaries (sometimes called breaks), 
#and pass this vector as the breaks argument to geom_histogram(). 
#In the following, you create bins with a width of 0.2:

faithful_histogram + 
  geom_histogram(breaks = seq(1.4, 5.2, by = 0.2),
                 fill= "darkred", color="black") +
  ggtitle("Histogram of Eruption Length") +
  xlab("Eruption Length (min)") +
  ylab("Number of Eruptions")

#Now we can plot the time between eruptions (waiting time)

waiting_histogram <- ggplot(faithful, aes(x = waiting))
waiting_histogram + 
  geom_histogram(binwidth = 3, fill= "blue" , color="darkblue") +
  ggtitle("Histogram of Time Between Eruptions") +
  xlab("Waiting Time (min)") +
  ylab("Number of Eruptions")


