Introduction
======================
This repo had been builded for the curses project of the MOOC : 
"Getting and Cleaning Data", by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD, of Johns Hopkins University
It contains :
  - 	the datasets (and documentation) used for this project, taken from the study : 
		"Human Activity Recognition Using Smartphones Dataset" publied
		at International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 ( See $License at the end of this document)
  - 	the R script of this project : run_analysis.R
  - 	the result obtained by an execution of the function defined in the run_analysis script
  
how the script works 
======================
The script contains the définition of a function called GetAndCleanData. 
this function 
- 	reads the datasets (training and test) , 
- 	builds a data frame containing for every subject and activity the mean of a subset of variables observed : 
		only measures of mean ans standard deviation of features from training and test experiments,
- 	returns the data frame.

the code book describing the variables
=======================================
The result of this script is a 81 columns data frame. The description of the features can be found in the 
documentation of the datasets of the "Human Activity Recognition Using Smartphones Dataset" experiment. 
The result of this project is the mean for every subject and activity of some features (mean and standard deviation of timestamped observations).

-	"Subject" : each value identify a volunteers of the experiment
	values : 1.;30

-	"Activity"  : 6 labels of a human activity observed.
	values : 
	-	WALKING
	-	WALKING_UPSTAIRS
	-	WALKING_DOWNSTAIRS
	-	SITTING
	-	STANDING
	-	LAYING
	
The others variables are :
"tBodyAcc-mean()-X"               "tBodyAcc-mean()-Y"              
"tBodyAcc-mean()-Z"               "tGravityAcc-mean()-X"           
"tGravityAcc-mean()-Y"            "tGravityAcc-mean()-Z"           
"tBodyAccJerk-mean()-X"           "tBodyAccJerk-mean()-Y"          
"tBodyAccJerk-mean()-Z"           "tBodyGyro-mean()-X"             
"tBodyGyro-mean()-Y"              "tBodyGyro-mean()-Z"             
"tBodyGyroJerk-mean()-X"          "tBodyGyroJerk-mean()-Y"         
"tBodyGyroJerk-mean()-Z"          "tBodyAccMag-mean()"             
"tGravityAccMag-mean()"           "tBodyAccJerkMag-mean()"         
"tBodyGyroMag-mean()"             "tBodyGyroJerkMag-mean()"        
"fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"              
"fBodyAcc-mean()-Z"               "fBodyAcc-meanFreq()-X"          
"fBodyAcc-meanFreq()-Y"           "fBodyAcc-meanFreq()-Z"          
"fBodyAccJerk-mean()-X"           "fBodyAccJerk-mean()-Y"          
"fBodyAccJerk-mean()-Z"           "fBodyAccJerk-meanFreq()-X"      
"fBodyAccJerk-meanFreq()-Y"       "fBodyAccJerk-meanFreq()-Z"      
"fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"             
"fBodyGyro-mean()-Z"              "fBodyGyro-meanFreq()-X"         
"fBodyGyro-meanFreq()-Y"          "fBodyGyro-meanFreq()-Z"         
"fBodyAccMag-mean()"              "fBodyAccMag-meanFreq()"         
"fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-meanFreq()" 
"fBodyBodyGyroMag-mean()"         "fBodyBodyGyroMag-meanFreq()"    
"fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-meanFreq()"
"tBodyAcc-std()-X"                "tBodyAcc-std()-Y"               
"tBodyAcc-std()-Z"                "tGravityAcc-std()-X"            
"tGravityAcc-std()-Y"             "tGravityAcc-std()-Z"            
"tBodyAccJerk-std()-X"            "tBodyAccJerk-std()-Y"           
"tBodyAccJerk-std()-Z"            "tBodyGyro-std()-X"              
"tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"              
"tBodyGyroJerk-std()-X"           "tBodyGyroJerk-std()-Y"          
"tBodyGyroJerk-std()-Z"           "tBodyAccMag-std()"              
"tGravityAccMag-std()"            "tBodyAccJerkMag-std()"          
"tBodyGyroMag-std()"              "tBodyGyroJerkMag-std()"         
"fBodyAcc-std()-X"                "fBodyAcc-std()-Y"               
"fBodyAcc-std()-Z"                "fBodyAccJerk-std()-X"           
"fBodyAccJerk-std()-Y"            "fBodyAccJerk-std()-Z"           
"fBodyGyro-std()-X"               "fBodyGyro-std()-Y"              
"fBodyGyro-std()-Z"               "fBodyAccMag-std()"              
"fBodyBodyAccJerkMag-std()"       "fBodyBodyGyroMag-std()"         
"fBodyBodyGyroJerkMag-std()"     

License
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
