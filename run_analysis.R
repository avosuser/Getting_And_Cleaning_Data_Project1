# I am using the below two packages in my code so please install and use these packages in case you want to run my code.
# data.table package is similar to data.frame but faster with more features.
install.packages("data.table")
library(data.table)
library(reshape2)

# I setup up my working directory
WD <- c("C:/Users/20537710/Documents/Coursera/Getting And Cleaning Data/Proj1")
setwd(WD)

# Download data set
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./Dataset.zip")
unzip("Dataset.zip", overwrite=TRUE)

# The features file will by used for naming columns on our main test and train data set.
featureNames <- data.table(read.csv(file = "./UCI HAR Dataset/features.txt", sep="", header = FALSE))
								
# Making columns of type character
colNames <- featureNames[, as.character(V2)]

## Start with the 'test' data set
# Read the X_test.txt and column names
xTestTable <- data.table(read.csv(file = "./UCI HAR Dataset/test/X_test.txt", sep = "", header = FALSE))
setnames(xTestTable, colNames)

# Get all the measurements which have a mean or std in the name
stdMeanColumns <- featureNames[ like (V2, "-mean|-std")]
myColumns <- as.character(stdMeanColumns[, V2])

# xTestTable now gives you a table with the mean and stddev measurements
xTestTable <- xTestTable[, myColumns, with = F]

#Read the subject data and add new column called Subject to xTestTable
xTestTable <- xTestTable[, Subject:= read.csv(file = "./UCI HAR Dataset/test/subject_test.txt", header = FALSE)]

# Read the activity data i.e. y_test.txt
testActivityTable <- data.table(read.csv(file = "./UCI HAR Dataset/test/y_test.txt", header = FALSE))
setnames(testActivityTable, "V1", "Activity")

# Give the Activity numbers a description
testActivityTable[testActivityTable == 1] <- "WALKING"
testActivityTable[testActivityTable == 2] <- "WALKING_UPSTAIRS" 
testActivityTable[testActivityTable == 3] <- "WALKING_DOWNSTAIRS" 
testActivityTable[testActivityTable == 4] <- "SITTING" 
testActivityTable[testActivityTable == 5] <- "STANDING" 
testActivityTable[testActivityTable == 6] <- "LAYING" 

# Add the Activity column to xTestTable
xTestTable <- xTestTable[, Activity := testActivityTable[, Activity]]

# Add a key column
xTestTable <- xTestTable[, Key := c(1:nrow(xTestTable))]

# Rearrange columns
setcolorder(xTestTable, c("Key", "Subject", "Activity", names(xTestTable)[1:(length(xTestTable)-3)]))

## I do the same as above for the 'train' data set
# Read the X_test.txt and column names
xTrainTable <- data.table(read.csv(file = "./UCI HAR Dataset/train/X_train.txt", sep = "", header = FALSE))
setnames(xTrainTable, colNames)

# xTrainTable now gives you a table with the mean and stddev measurements
xTrainTable <- xTrainTable[, myColumns, with = F]

#Read the subject table and add new column called Subject to xTrainTable
xTrainTable <- xTrainTable[, Subject:= read.csv(file = "./UCI HAR Dataset/train/subject_train.txt", header = FALSE)]

# # Read the activity data i.e. y_train.txt
trainActivityTable <- data.table(read.csv(file = "./UCI HAR Dataset/train/y_train.txt", header = FALSE))
setnames(trainActivityTable, "V1", "Activity")

# Give the Activity numbers a description
trainActivityTable[trainActivityTable == 1] <- "WALKING"
trainActivityTable[trainActivityTable == 2] <- "WALKING_UPSTAIRS" 
trainActivityTable[trainActivityTable == 3] <- "WALKING_DOWNSTAIRS" 
trainActivityTable[trainActivityTable == 4] <- "SITTING" 
trainActivityTable[trainActivityTable == 5] <- "STANDING" 
trainActivityTable[trainActivityTable == 6] <- "LAYING" 

# Add the Activity column to xTrainTable
xTrainTable <- xTrainTable[, Activity := trainActivityTable[, Activity]]

# Add a Key column
xTrainTable <- xTrainTable[, Key := c(2948:(2947 + nrow(xTrainTable)))]

# Rearrange the columns
setcolorder(xTrainTable, c("Key", "Subject", "Activity", names(xTrainTable)[1:(length(xTrainTable)-3)]))

# Merge the two data.tables using rbindlist(list(x1,x2))
finalTable <- rbindlist(list(xTestTable, xTrainTable))

# I do not need the Key column anymore so I remove it.
finalTable <- finalTable[, Key := NULL]
setkey(finalTable, Activity)

# Melt and Cast the finalTable, this will give us the Tidy Table 'subjActivityAvgData' and has the data we need for the project.
meltedData <- melt(finalTable, id=c("Activity", "Subject"))
subjActivityAvgData <- dcast(meltedData, Activity + Subject ~ variable,mean)
