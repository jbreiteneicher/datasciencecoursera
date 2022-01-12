### Load Data
x_test <- read.csv("..\\UCI HAR Dataset\\test\\X_test.txt")
y_test <- read.csv("..\\UCI HAR Dataset\\test\\Y_test.txt")
x_train <- read.csv("..\\UCI HAR Dataset\\train\\X_train.txt")
y_train <- read.csv("..\\UCI HAR Dataset\\train\\Y_train.txt")



### write output
write.table(result_df, row.name=FALSE)
