
#Features
Features includes data for the following variables with *mean* and *standard* deviation of each variable (totally 66 features):
** Features are normalized and bounded within [-1,1]
Each feature vector is a row on the text file.
The units given are g’s for the accelerometer and rad/sec for the gyro and g/sec and rad/sec/sec for the corresponding jerks.**

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag


#Subject
There are 30 volunteers who carried out the experiments therefore the *subject* index them as 1-30

#Activities
There are six activities that observations were made, and the column *activity* have values as the following:

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

#Data Manipulation
An independent tidy data set with the average of each variable for each activity and each subject were created and named as "average_data.txt"