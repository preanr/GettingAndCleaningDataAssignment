# Getting and Cleaning Data - Course Project Week  4

## Introduction
The task for this project was to process the human activity recognition (HAR) data from the UCI repository into a tidy dataset that satisfied the following conditions (from the assignment question itself): 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  
## Overview of the data
A simplified overview of the data is as follows: A group of test subjects was outfitted with a smart phone that was tethered to their body; The smart phone was able to record their movement via an accelerometer and gyroscope while they performed 6 different activities. The data from the accelerometer and gyroscope as well as the test subject and actvity constitute the data set.

## Approach
The data was separated in a few files viz. the Test, Training and General. The test and training sets contained X-axis data, y-axis data and subject as well as some inertial data used to feed the test or train set. (For the purpose of this project, the intertial data is not required - only the highler level test and train data sets are considered). The general folder contains the column headers for the x-axis data and the activity names that correspond to the y-axis data in the test and train folders.

The approach taken was as follows: 
1. Read in all of the x-axis data (test and train) and then merge that into an x-axis dataset (using rbind), then read in the test and train y-axis data and merge these as well (again using rbind). This merged y-axis set is then joined to the activity labels data set to get the full activity names.
2. The subject data for test and train is also merged (once again rbind).
3. Then the x-axis variables (columns) that are required are filtered using regular expressions.(Please note all variables that calculate a mean or standard deviation are included, however the angle between mean or standard deviation vectors are excluded.)
4. These variable names are then modified to be more R friendly (i.e. removal of parentheses and replacement of "-" with "."). Additionally, there are variables that include the literal "BodyBody"- this was presumed to be an error and changed to "Body"
5. The subject, activity and x-axis data is then merged to create the total data set (this time using cbind).
6. Finally, the data is grouped by the activity and subject and summarized using the average (Please note after this step the column names are updated to indicate that this data set contains Averages of each variable.

## Important Considerations
1. The code assumes that the data is stored in a sub folder of the working directory named "UCI HAR Dataset"
2. When selected the mean and standard deviation variables, mean(), std() and meanFreq() were included and angle() between mean/std vectors where not. This is since meanFreq() is defined as a mean, and the angle between mean/std vectors are not strictly means or standard deviations.
3. Regarding the selction of meaningful variable names, it was decided that using the variable names from the original data set made more sense than making longer names that did not neccessarily add value. For example, "tBodyGyro-mean()-Y" conveys that this variable is the Y component of the time domain mean of the Angular Velocity from the Gyroscope; The alternative would be to name the variable along the lines of "y_direction_time_domain_Body_Angular_Velocity_mean" - which in my opinion is overly long. The details behind each variable name are available in the codebook. The only changes to the variable names were the removal of the parentheses, and the replacing of "-" signs with dots in order to make the column names more R friendly. Additionally, "Ave" was added after the t or f prefix to indicate that the final data set contains averages of the variables.
4. On whether or not any melting or casting of the data was required: Once the activity name and subject id were married to the x-axis data, each row was a clear observation. Splitting these rows (for example introducing columns for the X,Y or Z directions or for the Magnitude or Jerk) would mean that the same observation was spread over multiple rows and would require introducing additional identifiers to relate the rows again. This, in my opinion made the data messier.

## Retreiving the data file
The following code snippet can be used to read in the summarized data set
```R
url <- "https://cdn.rawgit.com/preanr/GettingAndCleaningDataAssignment/78d55bec/summaryDS.txt"
final_summarized_dataset <- read.table(url, header=TRUE, sep="\t")
```
## Conclusion
The data was collected and processed as required. The separate data files were merged to form a single complete data set and then summarized as required.

The resulting data set satisfies the conditions for tidy for the following reasons:
1. Each variable is a column - this was carried over from the initial data set.
2. Each observation (a single subject performing a single task) forms a row
3. Each type of obsevational unit forms a table.
