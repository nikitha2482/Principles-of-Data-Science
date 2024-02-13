
# Eliminate the rows that have empty values.
cleaned_data <- na.omit(raw_data)

# Create a factor out of the fragility column.
cleaned_data$Frailty <- as.factor(cleaned_data$Frailty)

# Make training and testing sets from the data.
set.seed(123)
trainIndex <- createDataPartition(cleaned_data$Frailty, p=.7, list=FALSE)
train <- cleaned_data[trainIndex, ]
test <- cleaned_data[-trainIndex,]

#Create a model of logistic regression
lr_model <- train(Frailty~.,data = train,method ="glm",family ="binomial")

# Fit support vector machine model
svm_model <- train(Frailty ~ ., data = train, method = "svmRadial")
dt_model <- train(Frailty ~ ., data = train, method = "rpart")

# Make assumptions based on the test set.
lr_predict <- predict(lr_model, newdata = test) 
svm_predict <- predict(svm_model, newdata = test) 
dt_predict <- predict(dt_model, newdata = test)

# To assess how well models perform 
confusionMatrix(lr_predict, test$Frailty)
confusionMatrix(svm_predict, test$Frailty)
confusionMatrix(dt_predict, test$Frailty)

