GetAndCleanData <- function () {
	library("stringr") # to retrieve the mean and std features, using the str_detect function
	
    # Step 0 : Read all the files
	# Step 1 : Merges the training and the test sets to create one data set.
    # Step 2 : Extracts only the measurements on the mean and standard deviation for each measurement. 
    # Step 3 : Uses descriptive activity names to name the activities in the data set
    # Step 4 : Appropriately labels the data set with descriptive variable names. 
    # Step 5 : From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


	# Step 0
	# reading all the file needed, assuming they are in a subdirectory called "UCI HAR Dataset" of the working directory 
	WD<-getwd()
	## reading the descriptive information
	features <- read.table(paste0(WD,"/UCI HAR Dataset/features.txt"), quote="\"")
	activity_labels <- read.table(paste0(WD,"/UCI HAR Dataset/activity_labels.txt"), quote="\"", col.names = c("Activity id","Activity"))
	## reading the test set
	y_test <- read.table(paste0(WD,"/UCI HAR Dataset/test/y_test.txt"), quote="\"", col.names = c("Activity id"))
	subject_test <- read.table(paste0(WD,"/UCI HAR Dataset/test/subject_test.txt"), quote="\"", col.names = c("subject id"))
	x_test <- read.table(paste0(WD,"/UCI HAR Dataset/test/X_test.txt"), quote="\"")
	## reading the train set
	y_train <- read.table(paste0(WD,"/UCI HAR Dataset/train/y_train.txt"), quote="\"",, col.names = c("Activity id"))
	subject_train <- read.table(paste0(WD,"/UCI HAR Dataset/train/subject_train.txt"), quote="\"", col.names = c("subject id"))
	x_train <- read.table(paste0(WD,"/UCI HAR Dataset/train/X_train.txt"), quote="\"")


	# Step 1
	## merging the features with the subject id and the activity id, for test and train dataset
	tempo_test<-cbind(x_test,subject_test,y_test)
	tempo_train<-cbind(x_train,subject_train,y_train)
	## concatenate the train and the test datasets
	df1<-rbind(tempo_train, tempo_test)

	# Step 2
	## Finding all column Index of the variables corresponding to a mean or a std
	LogicalVariableIsMean<-str_detect(features[,2],"mean()")
	LogicalVariableIsStd<-str_detect(features[,2],"std()")
	ColIndexMean<-which(LogicalVariableIsMean == TRUE)
	ColIndexStd<-which(LogicalVariableIsStd == TRUE)
	## subject id  and activity id had been added at the end of the data frame df1 (step1)
	ColIndexsSubjectandActivity = c(ncol(df1)-1, ncol(df1))
	## Extract the subset of columns
	df2<-df1[,c(ColIndexMean,ColIndexStd,ColIndexsSubjectandActivity)]

	# Step 3 
	## adding the activity labels
	df3<-merge(df2, activity_labels, by.x = ncol(df2), by.y = 1)
	## removing the activity id (first column after the merge on this variable)
	df3<-df3[,-1]

	# Step 4 
	## get the names of the variables
	NamesMeanAndStd <-as.vector(features[c(ColIndexMean,ColIndexStd),2])
	NamesColumn <-c(NamesMeanAndStd,"Subject","Activity")
	## update the column names of the data.frame
	colnames(df3)<-NamesColumn

	# Step 5
	Res<-aggregate(df3[,1:79],by = list(Subject = df3$Subject, Activity = df3$Activity),mean)
	Res
}
	
