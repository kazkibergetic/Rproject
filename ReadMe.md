---
title: "Run Analysis"
author: "Oleg Rybkin"
date: "Sunday, January 25, 2015"
output: html_document
---

The purpose of this project is to demonstrate our ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

#Program description
>>>File: run_analysis.R

>Function parameters and it default values

test_dataset_x="data/test/X_test.txt" : path to the X_test file (dataset for testing)

test_dataset_y="data/test/Y_test.txt" : path to the Y_test file (dataset for testing)

var_names="data/features.txt" : path to the feature description file

train_dataset_x="data/train/X_train.txt" : path to the X_train file (dataset for training)

train_dataset_y="data/train/Y_train.txt" : path to the Y_train file (dataset for training) 

subject_test = "data/test/subject_test.txt" : path to the file with subjects (dataset for testing)  

subject_train="data/train/subject_train.txt" : path to the file with subjects (dataset for training)   

activities_labels="data/activity_labels.txt" : path to the file with activity labels

output_file = "newDataset.txt" : output file for tidy dataset

###Algorithm

* Read all necessary information about test dataset
    * read X_test file with the most dataset attributes
    * read Y_test file with an activities attribute
    * read subject_test file with a subject attribute   
    * merge it together (test dataset)
* Read all necessary information about training dataset
    * read X_train file with the most dataset attributes
    * read Y_train file with an activities attribute
    * read subject_train file with a subject attribute  
    * merge it together (train dataset)
* Merge train and test datasets to create one dataset
* Appropriately label the data set with descriptive variable names (see CodeBook.md)
* Extracts only the measurements on the mean and standard deviation for each measurement
    * all attributs that had "mean"" or "std"" word in their names were extracted
* Replace activity numbers with descriptive activity names in the data set 
    * names, provided in activity_labels file were used
* Second, independent tidy data set with the average of each variable for each activity and subject was created and saved as a file



    

