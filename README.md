tidydata Repository
========

Getting and Cleaning Data Course Project
Johns Hopkins University

The work in this repository demonstrates my ability to collect, work with, and clean a data set so that it can be used for later analysis.   

The data set used in this project can be downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The original source of the data is:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The repository contains the run_analysis.R script, which is designed to: 
1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The resulting clean dataset contains one row for each subject/activity pair and columns for subject, activity, and each feature that was a mean or standard deviation from the original dataset.

A codebook accompanies the run_analysis.R script and describes the data which can be found in tidydata.txt. The version of the codebook in this repository modifies and updates the previous codebooks available with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.  Please refer to codebook.MD for more details.

