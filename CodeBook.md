---
title: "Code Book - Coursera Getting and Cleaning Data"
author: "J.Breiteneicher" 
date: "January 2022" 
---

### Input
The data is provided by UCI in a zip file. A full description is available at the site where the data was obtained: <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The data for the project : <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

After the download the files are stored in the folder ..\\UCI HAR Dataset

### Output - Tidy Result File - JB_results.txt
The result is written as a tidy table into file JB_results.txt

### File run_analysis.R

1.  Merges the training and the test sets to create one data set.

2.  Extracts only the measurements on the mean and standard deviation for each measurement.

3.  Uses descriptive activity names to name the activities in the data set

4.  Appropriately labels the data set with descriptive variable names.

5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Variables

`[x,y,subject] _[train,test]` are read as table from the input files

`[x,y,subject] _data` are the combined data sets (rbind)

`all_data` is the combined dataset

`result_df` is the final tidy data set with the means
