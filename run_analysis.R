## This function does the Project assignment for "Getting And Cleaning Data" course in Coursera.
## Files should already been downloaded and unzipped in working directory before this function is run
## Files can be downloaded from here:
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

run_analysis <- function(){
    
    subjecttrain <- read.table("./subject_train.txt")   ##Read subjects from file to R
    names(subjecttrain) <- 'Subject'                    ##Attach a name to the column
    
    ytrain <- read.table("./y_train.txt")               ##Read activities from file to R
    names(ytrain) <- 'Activity'                         ##Attach a name to the column
    
    xtrain <- read.table("./X_train.txt")               ##Read training set from file to R
    features <- read.table("./features.txt")            ##Read list of features to R
    names(xtrain) <- features[,2]                       ##Attach names taken from features to the columns 
    xtrain <- xtrain[,grep("-mean\\(\\)|-std\\(\\)", features[,2])] ##Use only mean and std columns in xtrain
    
    ##Merge subjecttrain, ytrain and xtrain in one data frame
    TidyData1 <- subjecttrain                       
    TidyData1 <- cbind(TidyData1, ytrain)
    TidyData1 <- cbind(TidyData1, xtrain)
    
    subjecttest <- read.table("./subject_test.txt")     ##Read subjects from file to R 
    names(subjecttest) <- 'Subject'                     ##Attach a name to the column
    
    ytest <- read.table("./y_test.txt")                 ##Read activities from file to R
    names(ytest) <- 'Activity'                          ##Attach a name to the column
    
    xtest <- read.table("./X_test.txt")                 ##Read training set from file to R
    names(xtest) <- features[,2]                        ##Attach names taken from features to the columns
    xtest <- xtest[,grep("-mean\\(\\)|-std\\(\\)", features[,2])] ##Use only mean and std columns in xtest
    
    ##Merge subjecttest, ytest and xtest into one data frame
    TidyData2 <- subjecttest
    TidyData2 <- cbind(TidyData2, ytest)
    TidyData2 <- cbind(TidyData2, xtest)
    
    ##Merge train and test data frames into one data set
    TidyData <- rbind(TidyData1, TidyData2)
    
    ##Remove special characters (such as '-', '(' and ')') from column names of the data set
    names(TidyData) <- sub("mean\\(\\)-","mean_",names(TidyData),)
    names(TidyData) <- sub("std\\(\\)-","std_",names(TidyData),)
    names(TidyData) <- sub("mean\\(\\)","mean",names(TidyData),)
    names(TidyData) <- sub("std\\(\\)","std",names(TidyData),)
    names(TidyData) <- sub("-","_",names(TidyData),)
    
    activitylabels <- read.table("./activity_labels.txt")   ##Read activity labels from file to R
    TidyData$Activity <- as.factor(TidyData$Activity)       ##Convert Activity column from num to factor
    levels(TidyData$Activity) <- activitylabels[,2]         ##Update levels of Activity factor with Activity laels values
    
    library(data.table)
    Tidy <- as.data.table(TidyData)                         ##Convert data frame to data table
    
    ##Reshape data - calculate  average of each variable for each activity and each subject (.SD is used for this)
    ##Tidy data is put into TidyMean data table
    TidyMean <- Tidy[, lapply(.SD, mean), by=list(Subject,Activity)] 
    
    ##Write TidyMean data table into file
    write.table(TidyMean, file="./TidyMean.txt", row.names=FALSE)
}

    