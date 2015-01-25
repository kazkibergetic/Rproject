#This function was created to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later 
#analysis.

run_analysis <- function(test_dataset_x="data/test/X_test.txt", test_dataset_y="data/test/Y_test.txt", var_names="data/features.txt", train_dataset_x="data/train/X_train.txt", train_dataset_y="data/train/Y_train.txt", subject_test = "data/test/subject_test.txt", subject_train="data/train/subject_train.txt", activities_labels="data/activity_labels.txt", output_file = "newDataset.txt") {
       
        #read all necessary information about test dataset
        test_x <- read.table(test_dataset_x)
        test_y <- read.table(test_dataset_y)
        test_subject <- read.table(subject_test)
        test <- cbind(test_x, test_y, test_subject)
       
        #read all necessary information about training dataset
        train_x <- read.table(train_dataset_x)
        train_y <- read.table(train_dataset_y)
        train_subject <- read.table(subject_train)
        train <- cbind(train_x, train_y, train_subject)
        
        #merge the training and the test sets to create one data set.
        dataset <- rbind(test, train)
       
        #appropriately labels the data set with descriptive variable names
        names <-read.table(var_names, stringsAsFactors=FALSE)
        names <-rbind(names, c(nrow(names)+1, "activities"))  
        names <-rbind(names, c(nrow(names)+2, "subject")) 
        names(dataset) <- names[,2]
        
        #extracts only the measurements on the mean and standard deviation for each measurement.
        std <- grep("std", names(dataset), ignore.case = TRUE)
        mean <- grep("mean", names(dataset), ignore.case = TRUE)
        activity <- grep("activities", names(dataset), ignore.case = TRUE)
        subject <- grep("subject", names(dataset), ignore.case = TRUE)
        
        cols <- c(std,mean, activity,subject)
        dataset <- dataset[,cols]
        
        #use descriptive activity names to name the activities in the data set       
        activities_label <- read.table(activities_labels)
        
        for(i in 1:nrow(dataset))
        {
                dataset[i,]$activities <- toString(activities_label[activities_label$V1==as.numeric(dataset[i,]$activities),]$V2)
        }
        
        #creates a second, independent tidy data set with the average of each variable for each activity and subject 
        newDataset <- aggregate(dataset[,colnames(dataset) != "activities" & names(dataset) != "subject"], by=list(dataset$subject, dataset$activities), FUN=mean)
         
        #newDataset <- group_by(dataset, subject, activities)
        #newDataset <-summarize(newDataset, mean(newDataset[,3:ncol(newDataset)]))
        
        colnames(newDataset) <- paste("mean(", colnames(newDataset),")", sep = "")
        colnames(newDataset)[1] <- "Subject"
        colnames(newDataset)[2] <- "Activity"
        
        write.table(file=output_file, x = newDataset)
}
