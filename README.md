# Getting and cleaning data (Course Project)
##Overview
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data below represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Original data set
Here are the data for the project: <br>
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Task
Create one R script (<code>run_analysis.R</code>) that does the following:<br>
Step 1: Merges the training and the test sets to create one data set.<br>
Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.<br>
Step 3: Uses descriptive activity names to name the activities in the data set.<br>
Step 4: Appropriately labels the data set with descriptive variable names. <br>
Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.<br>

##Repo structure<br>
The repositoty includes the following files:<br>
1. <code>run_analysis.R</code>- source code<br>
2. <code>README.md</code> - overview of the task and repo structure<br>
3. <code>CodeBook.md</code> - description of the project, data and what was done during analysis<br> 
4. <code>tidydata.txt</code> - final dataset

##Description of the script <code>run_analysis.R</code> <br>
Modifications needed: On step 0 zip file is downloaded. You need to check your working directory and 
change filepath in the script if needed. <br>
Step 0: Download and unzip file with data, load data from txt files into variables<br>
Step 1: Create one data set by merging test and train data for subject, activity, features<br>
Step 2: From data set created on step 1 subset only values containing measurement of mean and standard deviation <br>
Step 3: Rename activity (add names from activity_labels.txt instead of numbers in the data set)<br>
Step 4: Use full names for columns (replace short unclear names)<br>
Step 5: Calculate the average of variables and save result into the file<br>

