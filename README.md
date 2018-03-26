'run_analysis.R' script is designed for creating a tidy data set from the initial data, which can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The script reads the initial data and performs the following actions:

1. Training and Test data sets are merged into single data set (10299 observations in total). Activity IDs are given in 'activity' column, subject IDs are supplied in column 'subject'.
2. Only mean (mean()) and standard deviation (std()) variables are extracted for each measurement ('mean.std.df' data frame).
3. 'activity' column is replaced from IDs to descriptive labels indicating the specific activity performed.
4. Ensured descriptive column names taking into account the description provided above in this CodeBook.
5. Second data set is derived from step 4 calculating the mean of each variable for each activity and each subject ('activity.subject.mean.df' data frame).

'tidy_dataset.txt' is the output of the tidy data frame obtained after performing these 5 steps above. 
