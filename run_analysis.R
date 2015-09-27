library(plyr)

#Step 0: data preparation
#Download and unzip file
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",temp)
featurestxt <- read.table(unz(temp, "UCI HAR Dataset/features.txt"))
feattest <- read.table(unz(temp, "UCI HAR Dataset/test/X_test.txt"))
feattrain <- read.table(unz(temp, "UCI HAR Dataset/train/X_train.txt"))
subjtest <- read.table(unz(temp, "UCI HAR Dataset/test/subject_test.txt"))
subjtrain <- read.table(unz(temp, "UCI HAR Dataset/train/subject_train.txt"))
acttrain <- read.table(unz(temp, "UCI HAR Dataset/train/y_train.txt"))
acttest <- read.table(unz(temp, "UCI HAR Dataset/test/y_test.txt"))
actlabels <- read.table(unz(temp, "UCI HAR Dataset/activity_labels.txt"))
unlink(temp)

#Step 1: Create one data set
#Task: Merge the training and the test sets to create one data set
subject <- rbind(subjtrain, subjtest)
activity<- rbind(acttrain, acttest)
features<- rbind(feattrain, feattest)
names(subject)<-c("subject")
names(activity)<- c("activity")
names(features)<- featurestxt$V2
data <- cbind(features, cbind(subject, activity))

#Step 2: Subset only values containing measurement of mean and std deviation
#Task: Extract only the measurements on the mean and standard deviation for each measurement
stdmean <- grep("std\\()|mean\\()", names(data), value = FALSE)
name <- names(data)
mdata<-subset(data,select=c(as.character(name[stdmean]),"subject", "activity"))

#Step 3: Rename activity (add names from activity_labels.txt instead of numbers in the data set)
#Task: Use descriptive activity names to name the activities in the data set
mdata$activity <- factor(mdata$activity, labels = actlabels$V2)
#head(mdata$activity,40)

#Step 4: Use full names for columns (replace short names)
#Task: Appropriately labels the data set with descriptive variable names 
names(mdata) <- gsub("Acc", "Accelerator", names(mdata))
names(mdata) <- gsub("^f", "frequency", names(mdata))
names(mdata) <- gsub("Mag", "Magnitude", names(mdata))
names(mdata) <- gsub("Gyro", "Gyroscope", names(mdata))
names(mdata) <- gsub("^t", "time", names(mdata))
#names(mdata)

#Step 5: Calculate the average of variables and save result into the file
# Task: From the data set in step 4, create a second, independent tidy data set 
# with the average of each variable for each activity and each subject
tidydata <-aggregate(.~subject + activity, mdata, FUN = "mean")
write.table(tidydata, file = "tidydata.txt",row.name=FALSE)
            