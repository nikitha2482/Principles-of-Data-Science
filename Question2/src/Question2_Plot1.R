
Student = read.csv("C:/Users/DELL/OneDrive/Desktop/StudentsPerformance.csv")
Student

#acquiring the entire CSV's information
summary(Student)


#assembling a data frame
Student_Data <- as.data.frame(Student)
Student_Data
dim(Student_Data)

#deleting the index column
Student_Data=within(Student_Data, rm("X"))

#Knowing the information and dimensions
names(Student_Data)
dim(Student_Data)

#Obtaining the front rows
head(Student_Data)
summary(Student_Data)

library(ggplot2)
install.packages("dplyr")
library(dplyr)
Student_Data.count <- count(Student_Data,race.ethnicity)

ggplot(data = Student_Data.count, mapping = aes(x = n, y = reorder(race.ethnicity, n))) +
  geom_col(aes(fill= n)) +
  scale_fill_gradient(low = munsell::mnsl("5P 7/12"), 
                      high =munsell::mnsl("5P 2/12") ) +
  geom_text(aes(label = n), color = "yellow", hjust = 2.5, size = 3) +
  labs(title = "Data Based On Race Ethnicity",
       
       x = "FREQUENCY",
       y = "RACE ETHNICITY",
       fill = "Frequency")

