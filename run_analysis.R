library(dplyr)

### Load Data
x_test <- read.table("..\\UCI HAR Dataset\\test\\X_test.txt")
y_test <- read.table("..\\UCI HAR Dataset\\test\\Y_test.txt")
x_train <- read.table("..\\UCI HAR Dataset\\train\\X_train.txt")
y_train <- read.table("..\\UCI HAR Dataset\\train\\Y_train.txt")
subject_test <- read.table("..\\UCI HAR Dataset\\test\\subject_test.txt")
subject_train <- read.table("..\\UCI HAR Dataset\\train\\subject_train.txt")

### combine train and test data
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

### Step 2
features <- read.table("..\\UCI HAR Dataset\\features.txt")
mean_features <- grep("-(mean|std)\\(\\)", features[, 2])

# subset the desired columns
x_data <- x_data[, mean_features]

names(x_data) <- features[mean_features, 2]

### Step 3
activities <- read.table("..\\UCI HAR Dataset\\activity_labels.txt")


## Step 5
result_df <- ddply(all_data, .(subject, activity), function(x) colMeans(x[, 1:66]))

### write output
write.table(result_df, file="JB_result.txt", row.name=FALSE)

