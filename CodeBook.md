# Code Book

## Variable information
The following is taken from the variable description from the original dataset

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

>These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

>tBodyAcc-XYZ

>tGravityAcc-XYZ

>tBodyAccJerk-XYZ

>tBodyGyro-XYZ

>tBodyGyroJerk-XYZ

>tBodyAccMag

>tGravityAccMag

>tBodyAccJerkMag

>tBodyGyroMag

>tBodyGyroJerkMag

>fBodyAcc-XYZ

>fBodyAccJerk-XYZ

>fBodyGyro-XYZ

>fBodyAccMag

>fBodyAccJerkMag

>fBodyGyroMag

>fBodyGyroJerkMag

In the summarized dataset the "-" signs were replaced with "." symbols. (Please refer to the table of variables for the complete variable names)

From the set of variables that were estimated from these signals, only the following were included in the summarized dataset: 

>mean(): Mean value

>std(): Standard deviation

>meanFreq(): Weighted average of the frequency components to obtain a mean frequency


The activity_name and subject_id variables indicate the task performed and person performing the task respectively.

### Data Summarizing
The dataset was grouped by the activity_name and the subject_id. This allowed a summary table to be created by generating the average of each of the varibles included from the original dataset by the activity_name and the subject_id.
To deferentiate this from the original set, the word Ave was included after the t or f prefix for each variable.

## Table of variables

|Variable Name    | Description                                           | Type        | Range         |
|-----------------|-------------------------------------------------------|-------------|---------------|
|activity_name  |The name of the task performed by the subject  |char |LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS |
|subject_id | The id for the subject that performed the task  | int | 1:30  |
|tAveBodyAcc.mean.X | The average of the time domain mean of the x-component of the acceleration of the body for the given activity name and subject id| numeric | -1.0:1.0   |
|tAveBodyAcc.mean.Y | The average of the time domain mean of the y-component of the acceleration of the body for the given activity name and subject id| numeric | -1.0:1.0   |
|tAveBodyAcc.mean.Z | The average of the time domain mean of the z-component of the acceleration of the body for the given activity name and subject id| numeric | -1.0:1.0   |               
|tAveBodyAcc.std.X  | The average of the time domain standard deviation of the x-component of the acceleration of the body for the given activity name and subject id| numeric | -1.0:1.0   |         
|tAveBodyAcc.std.Y| The average of the time domain standard deviation of the y-component of the acceleration of the body for the given activity name and subject id| numeric | -1.0:1.0   |  
|tAveBodyAcc.std.Z| The average of the time domain standard deviation of the z-component of the acceleration of the body for the given activity name and subject id| numeric | -1.0:1.0   |           
|tAveGravityAcc.mean.X| The average of the time domain mean of the x-component of the acceleration due to gravity for the given activity name and subject id| numeric | -1.0:1.0   |               
|tAveGravityAcc.mean.Y| The average of the time domain mean of the y-component of the acceleration due to gravity for the given activity name and subject id| numeric | -1.0:1.0   | 
|tAveGravityAcc.mean.Z| The average of the time domain mean of the z-component of the acceleration due to gravity for the given activity name and subject id| numeric | -1.0:1.0   |
|tAveGravityAcc.std.X| The average of the time domain standard deviation of the x-component of the acceleration due to gravity for the given activity name and subject id| numeric | -1.0:1.0   | 
|tAveGravityAcc.std.Y| The average of the time domain standard deviation of the y-component of the acceleration due to gravity for the given activity name and subject id| numeric | -1.0:1.0| 
|tAveGravityAcc.std.Z| The average of the time domain standard deviation of the z-component of the acceleration due to gravity for the given activity name and subject id| numeric | -1.0:1.0   |
|tAveBodyAccJerk.mean.X| The average of the time domain mean of the x-component of the acceleration jerk of the body for the given activity name and subject id| numeric | -1.0:1.0   |
|tAveBodyAccJerk.mean.Y| The average of the time domain mean of the y-component of the acceleration jerk of the body for the given activity name and subject id| numeric | -1.0:1.0   |
|tAveBodyAccJerk.mean.Z| The average of the time domain mean of the z-component of the acceleration jerk of the body for the given activity name and subject id| numeric | -1.0:1.0   |           
|tAveBodyAccJerk.std.X| The average of the time domain standard deviation of the x-component of the acceleration jerk of the body for the given activity name and subject id| numeric | -1.0:1.0   |
|tAveBodyAccJerk.std.Y| The average of the time domain standard deviation of the y-component of the acceleration jerk of the body for the given activity name and subject id| numeric | -1.0:1.0   |
|tAveBodyAccJerk.std.Z| The average of the time domain standard deviation of the z-component of the acceleration jerk of the body for the given activity name and subject id| numeric | -1.0:1.0   |
|tAveBodyGyro.mean.X| The average of the time domain mean of the x-component of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0   |
|tAveBodyGyro.mean.Y| The average of the time domain mean of the y-component of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0   |
|tAveBodyGyro.mean.Z| The average of the time domain mean of the z-component of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0   |
|tAveBodyGyro.std.X| The average of the time domain standard deviation of the x-component of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0   |
|tAveBodyGyro.std.Y| The average of the time domain standard deviation of the y-component of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0   |
|tAveBodyGyro.std.Z| The average of the time domain standard deviation of the z-component of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0   |
|tAveBodyGyroJerk.mean.X| The average of the time domain mean of the x-component of the angular velocity jerk of the body for the given activity name and subject id| numeric | -1.0:1.0   |         
|tAveBodyGyroJerk.mean.Y| The average of the time domain mean of the y-component of the angular velocity jerk of the body for the given activity name and subject id| numeric | -1.0:1.0   |
|tAveBodyGyroJerk.mean.Z| The average of the time domain mean of the z-component of the angular velocity jerk of the body for the given activity name and subject id| numeric | -1.0:1.0   |
|tAveBodyGyroJerk.std.X| The average of the time domain standard deviation of the x-component of the angular velocity jerk of the body for the given activity name and subject id| numeric | -1.0:1.0|
|tAveBodyGyroJerk.std.Y| The average of the time domain standard deviation of the y-component of the angular velocity jerk of the body for the given activity name and subject id| numeric | -1.0:1.0|
|tAveBodyGyroJerk.std.Z| The average of the time domain standard deviation of the z-component of the angular velocity jerk of the body for the given activity name and subject id| numeric | -1.0:1.0|
|tAveBodyAccMag.mean| The average of the time domain mean of the magnitude of the acceleration of the body for the given activity name and subject id| numeric | -1.0:1.0|             
|tAveBodyAccMag.std| The average of the time domain standard deviation of the magnitude of the acceleration of the body for the given activity name and subject id| numeric | -1.0:1.0|
|tAveGravityAccMag.mean| The average of the time domain mean of the magnitude of the acceleration due to gravity for the given activity name and subject id| numeric | -1.0:1.0|          
|tAveGravityAccMag.std| The average of the time domain standard deviation of the magnitude of the acceleration due to gravity for the given activity name and subject id| numeric | -1.0:1.0| 
|tAveBodyAccJerkMag.mean| The average of the time domain mean of the magnitude of the acceleration jerk due to gravity for the given activity name and subject id| numeric | -1.0:1.0|           
|tAveBodyAccJerkMag.std| The average of the time domain standard deviation of the magnitude of the acceleration jerk due to gravity for the given activity name and subject id| numeric | -1.0:1.0| 
|tAveBodyGyroMag.mean| The average of the time domain mean of the magnitude of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0|              
|tAveBodyGyroMag.std| The average of the time domain standard deviation of the magnitude of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0| 
|tAveBodyGyroJerkMag.mean| The average of the time domain mean of the magnitude of the angular velocity jerk of the body for the given activity name and subject id| numeric | -1.0:1.0|          
|tAveBodyGyroJerkMag.std| The average of the time domain standard deviation of the magnitude of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyAcc.mean.X| The average of the frequency domain mean of the x-component of the acceleration of the body for the given activity name and subject id| numeric | -1.0:1.0|                
|fAveBodyAcc.mean.Y| The average of the frequency domain mean of the y-component of the acceleration of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyAcc.mean.Z| The average of the frequency domain mean of the z-component of the acceleration of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyAcc.std.X| The average of the frequency domain standard deviation of the x-component of the acceleration of the body for the given activity name and subject id| numeric | -1.0:1.0
|fAveBodyAcc.std.Y| The average of the frequency domain standard deviation of the y-component of the acceleration of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyAcc.std.Z| The average of the frequency domain standard deviation of the z-component of the acceleration of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyAcc.meanFreq.X| The average of the frequency domain mean frequency of the x-component of the acceleration of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyAcc.meanFreq.Y| The average of the frequency domain mean frequency of the y-component of the acceleration of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyAcc.meanFreq.Z| The average of the frequency domain mean frequency of the z-component of the acceleration of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyAccJerk.mean.X| The average of the frequency domain mean of the x-component of the acceleration jerk of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyAccJerk.mean.Y| The average of the frequency domain mean of the y-component of the acceleration jerk of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyAccJerk.mean.Z| The average of the frequency domain mean of the z-component of the acceleration jerk of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyAccJerk.std.X| The average of the frequency domain standard deviation of the x-component of the acceleration jerk of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyAccJerk.std.Y| The average of the frequency domain standard deviation of the y-component of the acceleration jerk of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyAccJerk.std.Z| The average of the frequency domain standard deviation of the z-component of the acceleration jerk of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyAccJerk.meanFreq.X| The average of the frequency domain mean frequency of the x-component of the acceleration jerk of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyAccJerk.meanFreq.Y| The average of the frequency domain mean frequency of the y-component of the acceleration jerk of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyAccJerk.meanFreq.Z| The average of the frequency domain mean frequency of the z-component of the acceleration jerk of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyGyro.mean.X| The average of the frequency domain mean of the x-component of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0|              
|fAveBodyGyro.mean.Y| The average of the frequency domain mean of the y-component of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyGyro.mean.Z| The average of the frequency domain mean of the z-component of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyGyro.std.X| The average of the frequency domain standard deviation of the x-component of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyGyro.std.Y| The average of the frequency domain standard deviation of the y-component of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyGyro.std.Z| The average of the frequency domain standard deviation of the z-component of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyGyro.meanFreq.X| The average of the frequency domain mean frequency of the x-component of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyGyro.meanFreq.Y| The average of the frequency domain mean frequency of the y-component of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyGyro.meanFreq.Z| The average of the frequency domain mean frequency of the z-component of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyAccMag.mean| The average of the frequency domain mean of the magnitude of the acceleration of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyAccMag.std| The average of the frequency domain standard deviation of the magnitude of the acceleration of the body for the given activity name and subject id| numeric | -1.0:1.0|        
|fAveBodyAccMag.meanFreq| The average of the frequency domain mean frequency of the magnitude of the acceleration of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyAccJerkMag.mean| The average of the frequency domain mean of the magnitude of the acceleration jerk of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyAccJerkMag.std| The average of the frequency domain standard deviation of the magnitude of the acceleration jerk of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyAccJerkMag.meanFreq| The average of the frequency domain mean frequency of the magnitude of the acceleration of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyGyroMag.mean| The average of the frequency domain mean of the magnitude of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyGyroMag.std| The average of the frequency domain standard deviation of the magnitude of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0|
|fAveBodyGyroMag.meanFreq| The average of the frequency domain mean frequency of the magnitude of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0|    
|fAveBodyGyroJerkMag.mean| The average of the frequency domain mean of the magnitude of the angular velocity jerk of the body for the given activity name and subject id| numeric | -1.0:1.0|     
|fAveBodyGyroJerkMag.std| The average of the frequency domain standard deviation frequency of the magnitude of the angular velocity of the body for the given activity name and subject id| numeric | -1.0:1.0|    
|fAveBodyGyroJerkMag.meanFreq| The average of the frequency domain mean frequency of the magnitude of the angular velocity jerk of the body for the given activity name and subject id| numeric | -1.0:1.0|   
