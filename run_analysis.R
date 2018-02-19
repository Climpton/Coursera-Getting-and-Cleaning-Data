# load package
#library(dplyr)
library(reshape2)

# NOTE: Put the "UCI HAR Dataset" folder in the working directory!

# Read test data 
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", sep = "")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", sep = "")
sub_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", sep = "")

# Read train data 
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", sep = "")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", sep = "")
sub_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", sep = "")

# Read feture and activity names
features <- read.table("./UCI HAR Dataset/features.txt", sep = "")
activities <- read.table("./UCI HAR Dataset/activity_labels.txt", sep = "")

# Combine the X_train and X_test data frames. Name the columns after the names in 
# the features.txt file.
X_data <- rbind(X_train, X_test)
colnames(X_data) <- features$V2

# Combine the sub_train and sub_test data frames. Name the column "subjectID".
sub_data <- rbind(sub_train,sub_test)
colnames(sub_data) <- "subjectID"

# Combine the y_train and y_test data frames.
labels <- rbind(y_train, y_test)

# Change the activity index to corresponding activity (WALKING, WALKING_UPSTAIRS, 
# WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
label_func <- function(x) activities[x,2]
labels <- data.frame(sapply(labels[,1], label_func))

# Name the data frame column: "activities".
colnames(labels) <- "activities"

# Extract columns with mean and standard deviation of the measurements.
temp_data <- X_data[ , grep('(mean|std)\\(\\)',names(X_data))]

# Combine the data frames labels, sub_data, temp_data.
data <- cbind(labels, sub_data, temp_data)

# Create tidy data set
melt_data <- melt(data, id=c("subjectID","activities"))
tidy_data <- dcast(melt_data, subjectID + activities ~ variable, mean)

# write the tidy data set to a file
write.table(tidy_data, "tidy_data.txt", row.names=FALSE)