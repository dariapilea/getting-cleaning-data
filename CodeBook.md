# Code book 
## Data for the project
Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip <br>

A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Variables
featurestxt - table contents of <code>features.txt</code> <br>
feattest - table contents of <code>X_test.txt</code><br>
feattrain - table contents of <code>X_train.txt</code> <br>
subjtest - table contents of <code>subject_test.txt</code><br>
subjtrain - table contents of <code>subject_train.txt</code><br>
acttrain - table contents of  <code>y_train.txt</code><br>
acttest - table contents of <code>y_test.txt</code><br>
actlabels - table contents of <code>activity_labels.txt</code><br>
subject - data set created by binding train and test data for subject<br>
activity - data set created by binding train and test data for activity<br>
features - data set created by binding train and test data for features<br>
data - data set created by merging the training and the test sets for subject,activity,features<br>
name - list of column names for data set<br>
mdata - subset of data containing only values of measurement of mean and std deviation<br>
tidydata - final data set<br>

## Functions 
Downloading and unzipping appropriate files was performed by using functions <code>download.file, unz</code><br>
Read data <code>read.table</code><br>
Rename columns <code>names</code><br>
Produced one data set <code>cbind, rbind</code><br>
Searching pattern of characters <code>grepl</code><br>
Subsetting data set <code>subset</code><br>
Convert variable to the factor <code>factor</code><br>
Replace all occurrences of the pattern <code>gsub</code><br>
Aggregating data <code>aggregate</code><br>
Write to a .txt file <code>write.table</code><br>

## Output
Check <code>tidydata.txt</code><br>
