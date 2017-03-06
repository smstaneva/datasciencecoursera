#**Code Book**

The Code Book contains information about the data and how the data is manipulated.  
##Variables

| Variable | Description | Reference |
|---|---|---|   
subject_test	| subject_test.txt file is read and assigned to variable | subject_test, subject_test.txt
subject_train	| subject_train.txt file is read and assigned to variable | subject_train, subject_train.txt
Y_test	| Y_test.txt file is read and assigned to variable | Y_test	Y_test.txt
Y_train	| Y_train.txt file is read and assigned to variable | Y_train	Y_train.txt
X_test	| X_test.txt file is read and assigned to variable | X_test	X_test.txt
X_train	| X_train.txt file is read and assigned to variable | X_train	X_train.txt
subject	| Subject_test and subject_train are combined by row and assigned to variable subject	| subject_test.txt, subject_train.txt
activity	| Y_test and Y_train are combined by row and assigned to variable activity	| Y_test.txt, Y_train.txt
features	| X_test and X_train are combined by row and assigned to variable features	| X_test.txt, X_train.txt
features_names	| features.txt file is read and assigned to variable features_names	| features.txt
dataset	| subject, activity and features are combined by column and assigned to variable dataset | 	
features_names_meanstd	| features_names containing mean or std are extracted and assigned to variable features_names_meanstd	| 
names_meanstd	| New data frame is given labels and assigned to variable names_meanstd	| 
activity_labels	| activity_labels.txt file is read and assigned to variable activity_labels	| activity_labels.txt
dataset2	| Second tidy dataset has been derived from dataset with mean of variables for each activity and each subject | 	
 
##**Data**
 
The data was collected from the accelerometers from the Samsung Galaxy S Smartphone and is retrieved from the following link: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
The files of interest are text files with data about subject, activity and features, named subject, y, x correspondingly. The names of the data are stored in two additional files, named activity_labels.txt and features.txt.
 
##**Manipulation**
 
The data is manipulated according to the following instructions:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set.
* Appropriately labels the data set with descriptive variable names.
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

