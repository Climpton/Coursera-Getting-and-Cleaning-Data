# Code Book

## Actions performed on data:
1. Loading the data files given in the table below as data frames, 

| File name        | Data frame name  |
| ------------- | ------------- | 
| `X_test.txt`     | `X_test` |
| `y_test.txt`     | `y_test` |
| `subject_test.txt`     | `sub_test` |
| `X_train.txt`     | `X_train` |
| `y_train.txt`     | `y_train` |
| `subject_train.txt`     | `sub_train` |
| `features.txt`     | `features` |
| `activity_labels.txt`     | `activities` |

2. Merging `X_train` and `X_test` into one data frame: `X_data`
3. Merging `sub_train` and `sub_test` into one data frame: `sub_data`
4. Merging `y_train` and `y_test` into one data frame: `labels`
5. Setting the column names of `X_data` to the names in  `features`
6. Setting the column name of `sub_data` to "subjectID"
7. Change the activity number to activity name, by picking the rigth name from `activities` 
8. Setting the column name of `sub_data` to "activities"
9. Subsetting `X_data` into `temp_data` keeping only the key columns and features containing `std()` or `mean()`
10. Merge `labels`, `sub_data` and `temp_data` into the data frame `data`
11. Melt `data` into `melt_data`, based on columns "subjectID" and "activities"
12. Cast `melt_data` into `tidy_data` with the average of each variable for each activity and each subject
13. Write `tidy_data` to file `./data/tidy_data.txt

## `tidyData`data frame

| Column name        | Description  |
| ------------- | ------------- | 
| `subjectID`    | ID of subject, int (1-30) |
| `activities`     | Label of activity |
| `tBodyAcc-mean()-X`     | the average value for this feature, num (range: -1:1) |
| `tBodyAcc-mean()-Y`     | the average value for this feature, num (range: -1:1) |
| `tBodyAcc-mean()-Z`     | the average value for this feature, num (range: -1:1) |
| `tBodyAcc-std()-X`     | the average value for this feature, num (range: -1:1) |
| `tBodyAcc-std()-Y`     | the average value for this feature, num (range: -1:1) |
| `tBodyAcc-std()-Z`     | the average value for this feature, num (range: -1:1) |
| `tGravityAcc-mean()-X`     | the average value for this feature, num (range: -1:1) |
| `tGravityAcc-mean()-Y`     | the average value for this feature, num (range: -1:1) |
| `tGravityAcc-mean()-Z`     | the average value for this feature, num (range: -1:1) |
| `tGravityAcc-std()-X`     | the average value for this feature, num (range: -1:1) |
| `tGravityAcc-std()-Y`     | the average value for this feature, num (range: -1:1) |
| `tGravityAcc-std()-Z`     | the average value for this feature, num (range: -1:1) |
| `tBodyAccJerk-mean()-X`     | the average value for this feature, num (range: -1:1) |
| `tBodyAccJerk-mean()-Y`     | the average value for this feature, num (range: -1:1) |
| `tBodyAccJerk-mean()-Z`     | the average value for this feature, num (range: -1:1) |
| `tBodyAccJerk-std()-X`     | the average value for this feature, num (range: -1:1) |
| `tBodyAccJerk-std()-Y`     | the average value for this feature, num (range: -1:1) |
| `tBodyAccJerk-std()-Z`     | the average value for this feature, num (range: -1:1) |
| `tBodyGyro-mean()-X`     | the average value for this feature, num (range: -1:1) |
| `tBodyGyro-mean()-Y`     | the average value for this feature, num (range: -1:1) |
| `tBodyGyro-mean()-Z`     | the average value for this feature, num (range: -1:1) |
| `tBodyGyro-std()-X`     | the average value for this feature, num (range: -1:1) |
| `tBodyGyro-std()-Y`     | the average value for this feature, num (range: -1:1) |
| `tBodyGyro-std()-Z`     | the average value for this feature, num (range: -1:1) |
| `tBodyGyroJerk-mean()-X`     | the average value for this feature, num (range: -1:1) |
| `tBodyGyroJerk-mean()-Y`     | the average value for this feature, num (range: -1:1) |
| `tBodyGyroJerk-mean()-Z`     | the average value for this feature, num (range: -1:1) |
| `tBodyGyroJerk-std()-X`     | the average value for this feature, num (range: -1:1) |
| `tBodyGyroJerk-std()-Y`     | the average value for this feature, num (range: -1:1) |
| `tBodyGyroJerk-std()-Z`     | the average value for this feature, num (range: -1:1) |
| `tBodyAccMag-mean()`     | the average value for this feature, num (range: -1:1) |
| `tBodyAccMag-std()`     | the average value for this feature, num (range: -1:1) |
| `tGravityAccMag-mean()`     | the average value for this feature, num (range: -1:1) |
| `tGravityAccMag-std()`     | the average value for this feature, num (range: -1:1) |
| `tBodyAccJerkMag-mean()`     | the average value for this feature, num (range: -1:1) |
| `tBodyAccJerkMag-std()`     | the average value for this feature, num (range: -1:1) |
| `tBodyGyroMag-mean()`     | the average value for this feature, num (range: -1:1) |
| `tBodyGyroMag-std()`     | the average value for this feature, num (range: -1:1) |
| `tBodyGyroJerkMag-mean()`     | the average value for this feature, num (range: -1:1) |
| `tBodyGyroJerkMag-std()`     | the average value for this feature, num (range: -1:1) |
| `fBodyAcc-mean()-X`     | the average value for this feature, num (range: -1:1) |
| `fBodyAcc-mean()-Y`     | the average value for this feature, num (range: -1:1) |
| `fBodyAcc-mean()-Z`     | the average value for this feature, num (range: -1:1) |
| `fBodyAcc-std()-X`     | the average value for this feature, num (range: -1:1) |
| `fBodyAcc-std()-Y`     | the average value for this feature, num (range: -1:1) |
| `fBodyAcc-std()-Z`     | the average value for this feature, num (range: -1:1) |
| `fBodyAccJerk-mean()-X`     | the average value for this feature, num (range: -1:1) |
| `fBodyAccJerk-mean()-Y`     | the average value for this feature, num (range: -1:1) |
| `fBodyAccJerk-mean()-Z`     | the average value for this feature, num (range: -1:1) |
| `fBodyAccJerk-std()-X`     | the average value for this feature, num (range: -1:1) |
| `fBodyAccJerk-std()-Y`     | the average value for this feature, num (range: -1:1) |
| `fBodyAccJerk-std()-Z`     | the average value for this feature, num (range: -1:1) |
| `fBodyGyro-mean()-X`     | the average value for this feature, num (range: -1:1) |
| `fBodyGyro-mean()-Y`     | the average value for this feature, num (range: -1:1) |
| `fBodyGyro-mean()-Z`     | the average value for this feature, num (range: -1:1) |
| `fBodyGyro-std()-X`     | the average value for this feature, num (range: -1:1) |
| `fBodyGyro-std()-Y`     | the average value for this feature, num (range: -1:1) |
| `fBodyGyro-std()-Z`     | the average value for this feature, num (range: -1:1) |
| `fBodyAccMag-mean()`     | the average value for this feature, num (range: -1:1) |
| `fBodyAccMag-std()`     | the average value for this feature, num (range: -1:1) |
| `fBodyBodyAccJerkMag-mean()`     | the average value for this feature, num (range: -1:1) |
| `fBodyBodyAccJerkMag-std()`     | the average value for this feature, num (range: -1:1) |
| `fBodyBodyGyroMag-mean()`     | the average value for this feature, num (range: -1:1) |
| `fBodyBodyGyroMag-std()`     | the average value for this feature, num (range: -1:1) |
| `fBodyBodyGyroJerkMag-mean()`     | the average value for this feature, num (range: -1:1) |
| `fBodyBodyGyroJerkMag-std()`     | the average value for this feature, num (range: -1:1) |

