==================================================================
Data cleaning and manipulation of Human Activity Recognition Using Smartphones Dataset
==================================================================
Bopeng Zhang
Coursera Data Science Specialist student
==================================================================
The repository includes:

- README.txt file: As you are reading now
- CodeBook.md: explaining all the variables and summaries calculated, along with units, and any other relevant information.
- avarage_data.txt: An independent tidy data set with the average of each variable for each activity and each subject.
- run_analysis.R: The R code doing the following:

	Merges the training and the test sets to create one data set.
	Extracts only the measurements on the mean and standard deviation for each measurement.
	Uses descriptive activity names to name the activities in the data set
	Appropriately labels the data set with descriptive variable names.
	From the data set in the last step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The data were collected from the training set and test set of HAR USD dataset.

The original dataset contains the data from the experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- These signals were used to estimate variables of the feature vector for each pattern: ‘-XYZ’ is used to denote 3-axial signals in the X, Y and Z directions. They total 33 measurements including the 3 dimensions - the X,Y, and Z axes.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are:

mean(): Mean value
std(): Standard deviation

Therefore, there are 66 features in the data set containing 10299 observation.

- Its activity label. 
- An identifier of the subject who carried out the experiment.
