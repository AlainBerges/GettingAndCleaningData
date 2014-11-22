Introduction
======================
This repo had been builded for the curses project of the MOOC : 
"Getting and Cleaning Data" by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD, of Johns Hopkins University
It contains :
  - the datasets (and documentation) used for this project, see License at the end of ths doc.
  - the R script of this project : run_analysis.R
  - the result obtained by the run_analysis script
  
how the script works 
======================
The script contains the définition of a function called GetAndCleanProject(), 
this function reads the datasets ( training and test) , builds a data frame containing for every subject and activity the mean of a subset of variables observed : only measures of mean ans standard deviation of features from training and test experiments, and returns a this data frame.

the code book describing the variables.
======================

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
