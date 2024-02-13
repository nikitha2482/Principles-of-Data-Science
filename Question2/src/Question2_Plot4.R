par(mfrow=c(2,2))
hist(Student_Data$math.score, xlim=c(0,100), col="Green", xlab = "MATH SCORE", main = "Distribution Math Score")
hist(Student_Data$reading.score,xlim=c(0,100), col="Blue", xlab = "READING SCORE", main = "Distribution Reading Score")
hist(Student_Data$writing.score,xlim=c(0,100), col="purple", breaks=10, xlab = "WRITING", main = "Distribution writing Score")
