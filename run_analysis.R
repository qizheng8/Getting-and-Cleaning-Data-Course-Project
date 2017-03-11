## Coursera Getting and Cleaning Data Course Project
## 03-09-2017
## Qi

#Description:

# This project downloads the data from:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# 1. Merge the training and the test sets to create one data set.
# 2. Extract only the measurements on the mean and standard deviation for each measurement. 
# 3. Use descriptive activity names to name the activities in the data set
# 4. Appropriately label the data set with descriptive activity names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

################################################################################ 

# Read the data
f <- file.path(getwd(),"subject_test.txt")
subject_test <- read.table(f)
f <- file.path(getwd(),"subject_train.txt")
subject_train <- read.table(f)
f <- file.path(getwd(),"X_test.txt")
X_test <- read.table(f)
f <- file.path(getwd(),"y_test.txt")
y_test <- read.table(f)
f <- file.path(getwd(),"y_train.txt")
y_train <-  read.table(f)
f <- file.path(getwd(),"X_train.txt")
X_train <- read.table(f)
f <- file.path(getwd(),"features.txt")
features <- read.table(f)
f <- file.path(getwd(), 'activity_labels.txt')
activity_labels <- read.table(f)

# Merge the data
subject <- rbind(subject_train, subject_test)
activity <- rbind(y_train, y_test)
data <- rbind(X_train, X_test)
features <- features[,2]
features <- as.character(features)
colnames(data) <- features
names(subject) <- "subject"
names(activity) <- "activity"
data <- cbind(data, subject, activity)

# Extracts only the measurements on the mean and standard deviation for each measurement
x <- c(grep("mean",features),grep("std", features), 562, 563)
data <- data[,x]

#Uses descriptive activity names to name the activities in the data set
data$activity <- activity_labels[data$activity, 2]

#Appropriately labels the data set with descriptive variable names.
names(data)<-gsub("^t", "time", names(data))
names(data)<-gsub("^f", "frequency", names(data))
names(data)<-gsub("Acc", "Accelerometer", names(data))
names(data)<-gsub("Gyro", "Gyroscope", names(data))
names(data)<-gsub("Mag", "Magnitude", names(data))
names(data)<-gsub("BodyBody", "Body", names(data))

#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(plyr)
Data<-aggregate(. ~subject + activity, data, mean)
Data<-Data[order(Data$subject,Data$activity),]

