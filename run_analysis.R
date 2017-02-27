
library(dplyr)
library(data.table)
# assuming all files downloaded have been unzipped at the working directory
# load feature names and activity lables into dataframes so we can use them later
feature_names <- read.table("./UCI HAR Dataset/features.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

# load training and test data individually and combine them together
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
X_data <- rbind(X_train, X_test)

y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
y_data <- rbind(y_train,y_test)
# Use descriptive activity names to name the activities in the data set
y_data[, 1] <- activity_labels[y_data[, 1], 2]

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject <- rbind(subject_train, subject_test)

# Merges the training and the test sets to create one data set.
total <- cbind(X_data, y_data, subject)

# Appropriately labels the data set with descriptive variable names.
names(X_data) <- feature_names$V2
names(y_data) <- "activity"
names(subject) <- "subject"

# find those columns of features containing means or stds of observations
mean_and_std <- grep("-(mean|std)\\(\\)", feature_names$V2)
selected <- cbind(X_data[,mean_and_std], y_data, subject)

# create a tidy data set with the average of each variable for each activity and each subject
average_data <- selected%>%group_by(subject,activity)%>%summarise_all(mean)
write.table(average_data, "average_data.txt", row.name=FALSE)