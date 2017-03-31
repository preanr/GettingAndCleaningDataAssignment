## Getting and Cleaning Data - Course Project Week  4

# Introduction
The task for this project was to process the human activity recognition (HAR) data from the UCI repository into a tidy dataset that satisfied the following conditions (from the assignment question itself): 

  (1) Merges the training and the test sets to create one data set.
  
  (2) Extracts only the measurements on the mean and standard deviation for each measurement.
  
  (3) Uses descriptive activity names to name the activities in the data set
  
  (4) Appropriately labels the data set with descriptive variable names.
  
  (5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  

# Overview of the data
A simplified overview of the data is as follows: A group of test subjects was outfitted with a smart phone that was tethered to their body; The smart phone was able to record their movement via an accelerometer and gyroscope while they performed 6 different activities. The data from the accelerometer and gyroscope as well as the test subject and actvity constitute the data set.

# Approach
The data was separated in a few files viz. the Test, Training and General. The test and training sets contained X-axis data, y-axis data and subject as well as some inertial data used to feed the test or train set. (For the purpose of this project, the intertial data is not required - only the highler level test and train data sets are considered). The general folder contains the column headers for the x-axis data and the activity names that correspond to the y-axis data in the test and train folders.

The approach taken was to read in all of the x-axis data (test and train) and then merge that into an x-axis dataset (using rbind), then read in the test and train y-axis data and merge these as well (again using rbind). This merged y-axis set is then joined to the activity labels data set to get the full activity names.
The subject data for test and train is also merged (once again rbind).
The subject, activity and x-axis data is then merged to create the total data set (this time using cbind).
Then the variables (columns) that are required are filtered using regular expressions.
