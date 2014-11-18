## This script will complete the following actions:

## 1. Merges the training and the test sets to create one data set.

## 2. Extract only the measurements on the mean and standard deviation
## for each measurement. 

## 3. Uses descriptive activity names to name the activities in the 
## data set

## 4. Appropriately labels the data set with descriptive variable names. 

## 5. Create a second, independent tidy data set with the average of each
## variable for each activity and each subject.


## Call the necessary libraries
library(reshape2)

## Load test datasets
subject_test <- read.table("C:/Users/Maureen/Documents/Coursera/UCI HAR Dataset/test/subject_test.txt", header=FALSE)
x_test <- read.table("C:/Users/Maureen/Documents/Coursera/UCI HAR Dataset/test/x_test.txt", header=FALSE)
y_test <- read.table("C:/Users/Maureen/Documents/Coursera/UCI HAR Dataset/test/y_test.txt", header=FALSE)

## Load training datasets
subject_train <- read.table("C:/Users/Maureen/Documents/Coursera/UCI HAR Dataset/train/subject_train.txt", header=FALSE)
x_train <- read.table("C:/Users/Maureen/Documents/Coursera/UCI HAR Dataset/train/x_train.txt", header=FALSE)
y_train <- read.table("C:/Users/Maureen/Documents/Coursera/UCI HAR Dataset/train/y_train.txt", header=FALSE)

## Load features and activity label lists
features <- read.table("C:/Users/Maureen/Documents/Coursera/UCI HAR Dataset/features.txt", header=FALSE)$V2
activity_labels <- read.table("C:/Users/Maureen/Documents/Coursera/UCI HAR Dataset/activity_labels.txt", header=FALSE)

## Clean up the features list
features <- gsub("BodyBody", "Body", features)
features <- gsub("\\(\\)", "", features)

## Merge the training and test subjects
subject <-rbind(subject_test, subject_train)
colnames(subject) <- "subject"

## Merge the training and test labels
label <- rbind(y_test, y_train)

## Decode the activity labels
label <- merge (label, activity_labels, by=1)[,2]

## Merge the training and test datasets
data_merge <- rbind(x_test, x_train)
colnames(data_merge) <- features

## Merge the subjects, labels and data
one_data_set <- cbind(subject, label, data_merge)

## Label the data set with more descriptive variables names
names(one_data_set) <- gsub("^t", "Time", names(one_data_set))
names(one_data_set) <- gsub("^f", "Frequency", names(one_data_set))
names(one_data_set) <- gsub("Acc", "Accelerometer", names(one_data_set))
names(one_data_set) <- gsub("Gyro", "Gyrometer", names(one_data_set))
names(one_data_set) <- gsub("Mag", "Magnitude", names(one_data_set))
names(one_data_set) <- gsub("mean", "Mean", names(one_data_set))
names(one_data_set) <- gsub("std", "Standard Deviation", names(one_data_set))

## Remove working files
 rm(subject_train, subject_test, y_train, y_test, x_train, x_test, data_merge, features)

## Extract only the measurements on the mean and standard deviation for each measurement
## Match columns whose name contains "Standard Deviation" or "-mean-" or ends with "-mean"
search <- grep("-Mean-|-Mean$|Standard Deviation", colnames(one_data_set))
data_extract <- one_data_set[,c(1,2,search)]

## Convert dataset into a molten data frame
molten_data = melt(data_extract, id.var=c("subject", "label"))

## Compute the average of each variable for each activity and each subject
averages = dcast(molten_data, subject + label ~ variable, mean)

## Create a text file with the resuting data set
write.table(averages, file="C:/Users/Maureen/Documents/Coursera/tidy_data.txt", row.names = FALSE, quote = FALSE)

## Remove working files
rm(averages, molten_data, data_extract, one_data_set, subject, label)
