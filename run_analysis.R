setwd("~/Documents/Dropbox/Current Courses/Coursera Cleaning Data/Project")

x.train<-read.table('./UCi HAR Dataset/train/X_train.txt')
y.train<-read.table('./UCi HAR Dataset/train/y_train.txt')
sub.train<-read.table('./UCi HAR Dataset/train/subject_train.txt')
x.test<-read.table('./UCi HAR Dataset/test/X_test.txt')
y.test<-read.table('./UCi HAR Dataset/test/y_test.txt')
sub.test<-read.table('./UCi HAR Dataset/test/subject_test.txt')

## 1. Merges the training and the test sets to create one data set.
# combine the subject info and activity label in the data set.
data.train<-cbind(sub.train, y.train, x.train)
names(data.train)[1:2]<-c("ID","activity")

data.test<-cbind(sub.test, y.test, x.test)
names(data.test)[1:2]<-c("ID","activity")

# label the data set as testing or training, because you may want to know where does each observation come from.
data.train$set<-"train"
data.test$set<-"test"

# Merge the two data sets
data<-rbind(data.train, data.test)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
features<-read.table('./UCi HAR Dataset/features.txt')

# find the means and sd features
index1<-grep("mean", features[,2])
index2<-grep("std", features[,2])
index<-union(index1, index2)
data.subset<-data[,c(564,1:2,index+2)]

## 3. Uses descriptive activity names to name the activities in the data set
activities<-read.table('./UCi HAR Dataset/activity_labels.txt')
data.subset$activity<-activities[data.subset$activity, 2]

## 4. Appropriately labels the data set with descriptive variable names. 
features<-read.table('./UCi HAR Dataset/features.txt')
features[,2]<-as.character(features[,2])
names(data.subset)[4:82]<-features[index, 2]

## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
library(plyr)
library(reshape2)
# convert the data to long format
data.subset.long<-melt(data.subset, 
                       id.vars=c("set", "ID", "activity"),
                       variable.name="feature")
data.subset.long.mean<-ddply(data.subset.long, .(set, ID, activity, feature), summarise, mean=mean(value))
data.subset.mean<-dcast(data.subset.long.mean, set+ID+activity~feature, value.var="mean")

# save the tidy data sets
write.table(data.subset.long.mean, file="tidy_data_average_long.txt")
write.table(data.subset.long, file="tidy_data_long.txt")
write.table(data.subset.mean, file="tidy_data_average_wide.txt")
write.table(data.subset, file="tidy_data_wide.txt")
