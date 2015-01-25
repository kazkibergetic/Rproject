---
title: CodeBook
author: Oleg Rybkin
date: Sunday, January 25, 2015
output: html_document
---
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals.
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
In this dataset onle mean(): Mean value, std(): Standard deviation values were used.

1 Subject

>> Subject id

2 Activity

>> Name of activity

WALKING

WALKING_UPSTAIRS

WALKING_DOWNSTAIRS

SITTING

STANDING

LAYING


>>> The following values are the mean of provided value for specified above subject and activity. '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

3 mean(tBodyAcc-std()-X)



4 mean(tBodyAcc-std()-Y)

5 mean(tBodyAcc-std()-Z)


6 mean(tGravityAcc-std()-X)

7 mean(tGravityAcc-std()-Y)

8 mean(tGravityAcc-std()-Z)


9 mean(tBodyAccJerk-std()-X)

10 mean(tBodyAccJerk-std()-Y)

11 mean(tBodyAccJerk-std()-Z)


12 mean(tBodyGyro-std()-X)

13 mean(tBodyGyro-std()-Y)

14 mean(tBodyGyro-std()-Z)


15 mean(tBodyGyroJerk-std()-X)

16 mean(tBodyGyroJerk-std()-Y)

17 mean(tBodyGyroJerk-std()-Z)


18 mean(tBodyAccMag-std())

19 mean(tGravityAccMag-std())

20 mean(tBodyAccJerkMag-std())

21 mean(tBodyGyroMag-std())

22 mean(tBodyGyroJerkMag-std())


23 mean(fBodyAcc-std()-X)

24 mean(fBodyAcc-std()-Y)

25 mean(fBodyAcc-std()-Z)

26 mean(fBodyAccJerk-std()-X)

27 mean(fBodyAccJerk-std()-Y)

28 mean(fBodyAccJerk-std()-Z)

29 mean(fBodyGyro-std()-X)

30 mean(fBodyGyro-std()-Y)

31 mean(fBodyGyro-std()-Z)


32 mean(fBodyAccMag-std())

33 mean(fBodyBodyAccJerkMag-std())

34 mean(fBodyBodyGyroMag-std())

35 mean(fBodyBodyGyroJerkMag-std())


36 mean(tBodyAcc-mean()-X)

37 mean(tBodyAcc-mean()-Y)

38 mean(tBodyAcc-mean()-Z)


39 mean(tGravityAcc-mean()-X)

40 mean(tGravityAcc-mean()-Y)

41 mean(tGravityAcc-mean()-Z)


42 mean(tBodyAccJerk-mean()-X)

43 mean(tBodyAccJerk-mean()-Y)

44 mean(tBodyAccJerk-mean()-Z)


45 mean(tBodyGyro-mean()-X)

46 mean(tBodyGyro-mean()-Y)

47 mean(tBodyGyro-mean()-Z)


48 mean(tBodyGyroJerk-mean()-X)

49 mean(tBodyGyroJerk-mean()-Y)

50 mean(tBodyGyroJerk-mean()-Z)


51 mean(tBodyAccMag-mean())

52 mean(tGravityAccMag-mean())

53 mean(tBodyAccJerkMag-mean())

54 mean(tBodyGyroMag-mean())

55 mean(tBodyGyroJerkMag-mean())

56 mean(fBodyAcc-mean()-X)

57 mean(fBodyAcc-mean()-Y)

58 mean(fBodyAcc-mean()-Z)

59 mean(fBodyAcc-meanFreq()-X)

60 mean(fBodyAcc-meanFreq()-Y)

61 mean(fBodyAcc-meanFreq()-Z)


62 mean(fBodyAccJerk-mean()-X)

63 mean(fBodyAccJerk-mean()-Y)

64 mean(fBodyAccJerk-mean()-Z)


65 mean(fBodyAccJerk-meanFreq()-X)

66 mean(fBodyAccJerk-meanFreq()-Y)

67 mean(fBodyAccJerk-meanFreq()-Z)


68 mean(fBodyGyro-mean()-X)

69 mean(fBodyGyro-mean()-Y)

70 mean(fBodyGyro-mean()-Z)


71 mean(fBodyGyro-meanFreq()-X)

72 mean(fBodyGyro-meanFreq()-Y)

73 mean(fBodyGyro-meanFreq()-Z)


74 mean(fBodyAccMag-mean())

75 mean(fBodyAccMag-meanFreq())

76 mean(fBodyBodyAccJerkMag-mean())

77 mean(fBodyBodyAccJerkMag-meanFreq())

78 mean(fBodyBodyGyroMag-mean())

79 mean(fBodyBodyGyroMag-meanFreq())

80 mean(fBodyBodyGyroJerkMag-mean())

81 mean(fBodyBodyGyroJerkMag-meanFreq())

82 mean(angle(tBodyAccMean,gravity))

83 mean(angle(tBodyAccJerkMean),gravityMean))

84 mean(angle(tBodyGyroMean,gravityMean))

85 mean(angle(tBodyGyroJerkMean,gravityMean))


86 mean(angle(X,gravityMean))

87 mean(angle(Y,gravityMean))

88 mean(angle(Z,gravityMean))
