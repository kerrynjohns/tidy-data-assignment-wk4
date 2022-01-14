library(tidyverse)


#Load test data
X_test<-read.table("test/X_test.txt")
Y_test<-read.table("test/Y_test.txt")
subject_test<-read.table("test/subject_test.txt")

#Load train data
X_train<-read.table("train/X_train.txt")
Y_train<-read.table("train/Y_train.txt")
subject_train<-read.table("train/subject_train.txt")

#Merge test and train data for each of X,Y and subject
x_merge<-rbind(X_test, X_train)
y_merge<-rbind(Y_test, Y_train) %>% rename(Activity=V1) %>%
    mutate(Activity=as.factor(Activity))
subject_merge<-rbind(subject_test, subject_train) %>% rename(subject.ID=V1) %>%
    mutate(subject.ID=as.factor(subject.ID))

#load variable (feature) label set
features<-read.table("features.txt")


#create index to select mean and std variables only
mean.std <- grep("-(mean|std).*", as.character(features[,2]))

#Rename variables
variableNames <- features[mean.std, 2]
variableNames <- gsub("-mean", "Mean", variableNames)
variableNames <- gsub("-std", "Std", variableNames)
variableNames <- gsub("[-()]", "", variableNames)


#Select mean and std variables only using index
x_merge <- x_merge[mean.std]

#Rename columns in X data my variable names
colnames(x_merge)<-variableNames

#merge X, Y and subject data
merge_all<-cbind(subject_merge, y_merge, x_merge)

#Load activity label set
activity_labels<-read.table("activity_labels.txt")

#Add activity labels
allData<- merge_all %>% mutate(Activity=factor(Activity, levels=activity_labels[,1],
                                               labels=activity_labels[,2]))



#Average of each variable for each subject/activity combination
tidy.data<- allData %>% group_by(subject.ID, Activity) %>%
    summarise_at(vars(tBodyAccMeanX:fBodyBodyGyroJerkMagMeanFreq), mean, na.rm=TRUE)

#Save as text file
write.table(tidy.data, "../tidy_dataset.txt", row.names = TRUE)

#Saving as .RData retains class of variables
save(tidy.data, file="../tidy_dataset.RData")
