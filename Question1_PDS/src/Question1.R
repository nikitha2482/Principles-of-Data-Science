
# Remove rows with missing values
cleaned_data <- na.omit(raw_data)

# Convert Frailty column to a factor
cleaned_data$Frailty <- as.factor(cleaned_data$Frailty)

# Split data into training and testing sets
set.seed(123)
trainIndex <- createDataPartition(cleaned_data$Frailty, p=.7, list=FALSE)
train <- cleaned_data[trainIndex, ]
test <- cleaned_data[-trainIndex,]

# Fit logistic regression model
lr_model <- train(Frailty~.,data = train,method ="glm",family ="binomial")

# Fit support vector machine model
svm_model <- train(Frailty ~ ., data = train, method = "svmRadial")
dt_model <- train(Frailty ~ ., data = train, method = "rpart")

# Make predictions on test set
lr_predict <- predict(lr_model, newdata = test) 
svm_predict <- predict(svm_model, newdata = test) 
dt_predict <- predict(dt_model, newdata = test)

# To Evaluate performance of models 
confusionMatrix(lr_predict, test$Frailty)
confusionMatrix(svm_predict, test$Frailty)
confusionMatrix(dt_predict, test$Frailty)

