# Code Book

This Code Book describes the resulting data 'tidy_dataset.txt'

## Data Wrangling

The data tidying process included:

1) Merging the training and the test sets to create one data set.

2) Extracting only the measurements on the mean and standard deviation for each measurement. 

3) Given descriptive names to the levels of the factor 'Activity'

4) Giving more descriptive names to the measured variables. 

5) Summarising the data to present the average of each variable for each activity and each subject.



## Fixed Variables

subject.ID - The identification number of the test subject  
Activity - The type of activity measured with 6 tyoes of activity; WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, LAYING, STANDING  

## Measured variables

The remaining 79 variables are measured variables. Only the mean and standard deviation (std) are included for each measured variable. The data are aggregated to represent the mean of each variable for each combination of subject.ID/Activity

tBodyAccMeanX  
tBodyAccMeanY  
tBodyAccMeanZ  
tBodyAccStdX  
tBodyAccStdY  
tBodyAccStdZ  
tGravityAccMeanX  
tGravityAccMeanY  
tGravityAccMeanZ  
tGravityAccStdX  
tGravityAccStdY  
tGravityAccStdZ  
tBodyAccJerkMeanX  
tBodyAccJerkMeanY  
tBodyAccJerkMeanZ  
tBodyAccJerkStdX  
tBodyAccJerkStdY  
tBodyAccJerkStdZ  
tBodyGyroMeanX  
tBodyGyroMeanY  
tBodyGyroMeanZ  
tBodyGyroStdX  
tBodyGyroStdY  
tBodyGyroStdZ  
tBodyGyroJerkMeanX  
tBodyGyroJerkMeanY  
tBodyGyroJerkMeanZ  
tBodyGyroJerkStdX  
tBodyGyroJerkStdY  
tBodyGyroJerkStdZ  
tBodyAccMagMean  
tBodyAccMagStd  
tGravityAccMagMean  
tGravityAccMagStd  
tBodyAccJerkMagMean  
tBodyAccJerkMagStd  
tBodyGyroMagMean  
tBodyGyroMagStd  
tBodyGyroJerkMagMean  
tBodyGyroJerkMagStd  
fBodyAccMeanX  
fBodyAccMeanY  
fBodyAccMeanZ  
fBodyAccStdX  
fBodyAccStdY  
fBodyAccStdZ  
fBodyAccMeanFreqX  
fBodyAccMeanFreqY  
fBodyAccMeanFreqZ  
fBodyAccJerkMeanX  
fBodyAccJerkMeanY  
fBodyAccJerkMeanZ  
fBodyAccJerkStdX  
fBodyAccJerkStdY  
fBodyAccJerkStdZ  
fBodyAccJerkMeanFreqX  
fBodyAccJerkMeanFreqY  
fBodyAccJerkMeanFreqZ  
fBodyGyroMeanX  
fBodyGyroMeanY  
fBodyGyroMeanZ  
fBodyGyroStdX  
fBodyGyroStdY  
fBodyGyroStdZ  
fBodyGyroMeanFreqX  
fBodyGyroMeanFreqY  
fBodyGyroMeanFreqZ  
fBodyAccMagMean  
fBodyAccMagStd  
fBodyAccMagMeanFreq  
fBodyBodyAccJerkMagMean  
fBodyBodyAccJerkMagStd  
fBodyBodyAccJerkMagMeanFreq  
fBodyBodyGyroMagMean  
fBodyBodyGyroMagStd  
fBodyBodyGyroMagMeanFreq  
fBodyBodyGyroJerkMagMean  
fBodyBodyGyroJerkMagStd  
fBodyBodyGyroJerkMagMeanFreq  
