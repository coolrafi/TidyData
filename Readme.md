### Introduction
This file contains information on the project written during 'Getting And Cleaning Data' Coursera course.
The script created in this project is called: run_analysis.R. It can be found in this repo among this Readme.md
file as well as Codebook.md document that contains information on the data (variables, columns etc.)

### Prerequirements
1. Data that can be found under the following link: 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip' should be downloaded
2. The data should be unzipped into the working directory. The files as below must be placed directly in working directory before script can be run:
- subject_train.txt
- y_train.txt
- X_train.txt
- features.txt
- subject_test.txt
- y_test.txt
- X_test.txt
- activity_labels.txt 

### What data is used by the script
- subject_train.txt - Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- y_train.txt - Training activities (numbers)
- X_train.txt - Training set
- features.txt - List of all features
- subject_test.txt - Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- y_test.txt - Test activities (numbers)
- X_test.txt - Test set
- activity_labels.txt - Links the class labels with their activity name

Some additional info on data:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

### The script way of working
The run_analysis.R script does as follows:
- reads data from files listed abowe to R
- gives new column names
- For x_train and x_test data: uses only columns where column name contains '-mean()' or '-std()' value. Other columns are not used
- first merges data from subject_train with y_train and x_train into one data set
- then merges data from subject_test with y_test and x_test into another data set
- At the end the above two (train and test) are merged into one data set
- Special characters (such as: '-', '(' and ')') are removed from column names
- Activity numbers are replaced by activity labels (names)
- The data is reshaped in order to calculate average of each variable for each activity and each subject.
  The .SD function for data table is used to do this.
- The result tidy data is written into TidyMean.txt text file in working directory.

More detailed information on how script works can be found in script's comments

