# Reading initial data sets.
train.features <- read.table("./train/X_train.txt")
train.activity <- read.table("./train/y_train.txt")
train.subject <- read.table("./train/subject_train.txt")

test.features <- read.table("./test/X_test.txt")
test.activity <- read.table("./test/y_test.txt")
test.subject <- read.table("./test/subject_test.txt")

activity <- read.table("activity_labels.txt", stringsAsFactors = FALSE)
features <- read.table("features.txt", stringsAsFactors = FALSE)

# 1. Merges the training and the test sets to create one data set.
all.features <- rbind(train.features, test.features)
all.activity <- rbind(train.activity, test.activity)
all.subject <- rbind(train.subject, test.subject)

all.df <- cbind(all.activity, all.subject, all.features)
colnames(all.df) <- c("activity", "subject", features[,2])

# 2. Extracts only the measurements on the mean and standard deviation
# for each measurement.
mean.std.cols <- grep("mean\\(\\)|std\\(\\)", colnames(all.df), value=TRUE)
mean.std.df <- all.df[,c("activity", "subject", mean.std.cols)]

# 3. Uses descriptive activity names to name the activities in the data set
mean.std.df$activity <- factor(mean.std.df$activity, levels = activity$V1,
                               labels = activity$V2)

# 4. Column names are already descriptive taking into account the information
# given in CodeBook.md file.

# 5. From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject.
library(dplyr)
activity.subject.mean.df <- mean.std.df %>%
  group_by(activity, subject) %>%
  summarize_all(mean)





