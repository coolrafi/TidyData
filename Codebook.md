### Introduction
Codebook.md for the project written during 'Getting And Cleaning Data' Coursera course.
The script created in this project is called: run_analysis.R. It can be found in this repo among this Codebook.md
file as well as Readme.md document that contains some details on the processing

### Original Data
Original data can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
Full description on the experiment can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

### Tidy data set
tidy data set with the average of each variable for each activity and each subject
the result tidy TidyMean data set contains columns as follows:</br>
COLUMN NAME:               TYPE:<br>
-Subject                  : int
-Activity                 : Factor
-tBodyAcc_mean_X          : num
-tBodyAcc_mean_Y          : num
-tBodyAcc_mean_Z          : num
-tBodyAcc_std_X           : num
-tBodyAcc_std_Y           : num
-tBodyAcc_std_Z           : num
-tGravityAcc_mean_X       : num
-tGravityAcc_mean_Y       : num
-tGravityAcc_mean_Z       : num
tGravityAcc_std_X        : num
tGravityAcc_std_Y        : num
tGravityAcc_std_Z        : num
tBodyAccJerk_mean_X      : num
tBodyAccJerk_mean_Y      : num
tBodyAccJerk_mean_Z      : num
tBodyAccJerk_std_X       : num
tBodyAccJerk_std_Y       : num
tBodyAccJerk_std_Z       : num
tBodyGyro_mean_X         : num
tBodyGyro_mean_Y         : num
tBodyGyro_mean_Z         : num
tBodyGyro_std_X          : num
tBodyGyro_std_Y          : num
tBodyGyro_std_Z          : num
tBodyGyroJerk_mean_X     : num
tBodyGyroJerk_mean_Y     : num
tBodyGyroJerk_mean_Z     : num
tBodyGyroJerk_std_X      : num
tBodyGyroJerk_std_Y      : num
tBodyGyroJerk_std_Z      : num
tBodyAccMag_mean         : num
tBodyAccMag_std          : num
tGravityAccMag_mean      : num
tGravityAccMag_std       : num
tBodyAccJerkMag_mean     : num
tBodyAccJerkMag_std      : num
tBodyGyroMag_mean        : num
tBodyGyroMag_std         : num
tBodyGyroJerkMag_mean    : num
tBodyGyroJerkMag_std     : num
fBodyAcc_mean_X          : num
fBodyAcc_mean_Y          : num
fBodyAcc_mean_Z          : num
fBodyAcc_std_X           : num
tGravityAcc_std_Y        : num
tGravityAcc_std_Z        : num
tBodyAccJerk_mean_X      : num
tBodyAccJerk_mean_Y      : num
tBodyAccJerk_mean_Z      : num
tBodyAccJerk_std_X       : num
tBodyAccJerk_std_Y       : num
tBodyAccJerk_std_Z       : num
tBodyGyro_mean_X         : num
tBodyGyro_mean_Y         : num
tBodyGyro_mean_Z         : num
tBodyGyro_std_X          : num
tBodyGyro_std_Y          : num
tBodyGyro_std_Z          : num
tBodyGyroJerk_mean_X     : num
tBodyGyroJerk_mean_Y     : num
tBodyGyroJerk_mean_Z     : num
tBodyGyroJerk_std_X      : num
tBodyGyroJerk_std_Y      : num
tBodyGyroJerk_std_Z      : num
tBodyAccMag_mean         : num
tBodyAccMag_std          : num
tGravityAccMag_mean      : num
tGravityAccMag_std       : num
tBodyAccJerkMag_mean     : num
tBodyAccJerkMag_std      : num
tBodyGyroMag_mean        : num
tBodyGyroMag_std         : num
tBodyGyroJerkMag_mean    : num
tBodyGyroJerkMag_std     : num
fBodyAcc_mean_X          : num
fBodyAcc_mean_Y          : num
fBodyAcc_mean_Z          : num
fBodyAcc_std_X           : num
fBodyAcc_std_Y           : num
fBodyAcc_std_Z           : num
fBodyAccJerk_mean_X      : num
fBodyAccJerk_mean_Y      : num
fBodyAccJerk_mean_Z      : num
fBodyAccJerk_std_X       : num
fBodyAccJerk_std_Y       : num
fBodyAccJerk_std_Z       : num
fBodyGyro_mean_X         : num
fBodyGyro_mean_Y         : num
fBodyGyro_mean_Z         : num
fBodyGyro_std_X          : num
fBodyGyro_std_Y          : num
fBodyGyro_std_Z          : num
fBodyAccMag_mean         : num
fBodyAccMag_std          : num
fBodyBodyAccJerkMag_mean : num
fBodyBodyAccJerkMag_std  : num
fBodyBodyGyroMag_mean    : num
fBodyBodyGyroMag_std     : num
fBodyBodyGyroJerkMag_mean: num
fBodyBodyGyroJerkMag_std : num

Each column, except subject and activity contains mean value of the given feature (column name)
