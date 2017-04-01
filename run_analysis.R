## this fucntion loads and processes data from the UCI HAR dataset
## it assumes that the UCI HAR dataset is in a sub-folder of the working directory
## this function returns a data frame

run_analysis <- function(){
        
        ##ensure the dplyr library is loaded
        library(dplyr)
        
        ##get the x-axis data for the Training dataset and store in a data frame
        url_xTrain <- "UCI HAR Dataset\\train\\X_train.txt"
        df_xTrain <- read.table(url_xTrain)
        
        ##get the y-axis data for the Training dataset
        url_yTrain <- "UCI HAR Dataset\\train\\y_train.txt"
        df_yTrain <- read.table(url_yTrain, col.names = "activity_id")
        
        ##get the subject data for the Training dataset
        url_subjectTrain <- "UCI HAR Dataset\\train\\subject_train.txt"
        df_subjectTrain <- read.table(url_subjectTrain, col.names="subject_id")
        
        ##get the x-axis data for the test dataset and store in a data frame
        url_xTest <- "UCI HAR Dataset\\test\\X_test.txt"
        df_xTest <- read.table(url_xTest)
        
        ##get the y-axis data for the test dataset
        url_yTest <- "UCI HAR Dataset\\test\\y_test.txt"
        df_yTest <- read.table(url_yTest, col.names = "activity_id")
        
        ##get the subject data for the test dataset
        url_subjectTest <- "UCI HAR Dataset\\test\\subject_test.txt"
        df_subjectTest <- read.table(url_subjectTest, col.names="subject_id")
        
        ##get the feature names
        url_Features <- "UCI HAR Dataset\\features.txt"
        featureNames <- read.table(url_Features, col.names=c("feature_id", "feature_name"))
        
        ##get the activity names
        url_Activity <- "UCI HAR Dataset\\activity_labels.txt"
        activityNames <- read.table(url_Activity, col.names=c("activity_id", "activity_name"))
        
        ##merge test and train x-axis data
        df_x <- rbind(df_xTest, df_xTrain)
        
        ##merge test and train y-axis activity data
        df_y <- rbind(df_yTest, df_yTrain)
        
        ##merge test and train subject data
        df_subject <- rbind(df_subjectTest, df_subjectTrain)
        
        ##replace activty ids with activity names and update the y-axis data frame
        df_y <- inner_join(df_y, activityNames, by = "activity_id")[2]
        
        ##update the column names for the x-axis data set to include the feature names
        names(df_x) <- featureNames$feature_name
        
        ##filter dataset so that only mean and std deviation variables are included
        ##please note: the "mean|std" expression is used since it captures the 
        ##mean and std deviations and excludes the angle
        ##(the +2 at the end accounts for the subject_id and activity name which is
        ## not in the feature list)
        df_x_filtered <- df_x[, grep("mean|std", featureNames$feature_name)]

        ##merge x and y axis and subject data to form complete data
        df_complete <- cbind(df_subject, df_y, df_x_filtered)
        
        ##this step groups the data set by activity name and subject id
        ##then summarizes each variable using the mean function
        summarize_each(group_by(df_complete, activity_name, subject_id), funs(mean))
}

