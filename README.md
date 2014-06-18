##Analysis for Getting and Cleaning Data
##Human Activity Recognition Using Smartphones Dataset
========================================================

Original data were collected by:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The assignment called for combining the data provided by the 30 subjects performing 6 different activities. Originally, 561 measurements were collected for each observation.Only a subset of these variables were required. The run_analysis.R file performs the following functions:

1) reads the 8 files provided by the data source

2) combines the test data subjects and measurements, then the training data subjects and measurements, then both test and training data together

3) titles the columns using the provided variables

4) converts the activity identity to readable text (i.e. 1 to "WALKING")

5) subsets the data frame only include columns which contain std or mean values, in accordance with the assignment's requirements. It is assumed that the fields requested are those containing "mean()" and "std()".

6) summarizes the data by evaluating the mean of each variable for each activity and subject, in accordance with the assignment's requirements

The resulting data frame contains 180 observations (30 subjects performing 6 activities) with 66 averaged measurements.

Original data files used are:
x_test.txt; 
x_train.txt; 
y_test.txt; 
y_train.txt; 
subject_train.txt; 
subject_test.txt; 
activity_labels.txt; 
features.txt; 

