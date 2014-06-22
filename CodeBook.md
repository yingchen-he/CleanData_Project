## Code Book
This is a code book describing the variables, the data, and the things I've done to clean up the data. For detailed information about the dataset, please see corresponding description files in the zip file.

### Cleaning up the data   
**Merge**  
First, I merged the training & test data with their subject info and activity labels. These two variables are named "ID" and "activity".

Next, I created a new variable in each data set called "set" to label each data set as testing or training.

Finally, I merged the two data sets together.

**Extracting means and standard deviations**  
From the features.txt file, I selected the features containing "mean" or "std" and subset the data according to these indices.

**Changing variable names**  
I used the activity names from activity_labels.txt to rename the activities in the data set. Also, I renamed the column names of the dataset using the names in the features.txt.

**Create a new data set**  
There are four tidy data sets:  
"tidy\_data\_long.txt" and "tidy\_data\_wide.txt": The tidy data set with different observations in a time window in the long/wide format.
"tidy\_data\_average\_long.txt" and "tidy\_data\_average\_long.txt": The tidy data set in the long/wide format with the average of each variable for each set, each activity and each subject.

### Description of the variables in tidy\_data\_long.txt
- set:   
      Indicate whether the observation is from "train" or "test".

- ID:   
      An integer indicating the ID of the subject, from 1 to 30.

- activity:  
      A factor with 6 levels indicating the activity the subject was doing during the measurement.
      1. Laying
      2. Sitting
      3. Standing
      4. Walking
      5. Walking_downstairs
      6. Walking_upstairs  


- feature:
      A factor with 79 levels indicating the type of measurement.
      1. tBodyAcc-mean()-X
      2. tBodyAcc-mean()-Y
      3. tBodyAcc-mean()-Z
      4. tGravityAcc-mean()-X
      5. tGravityAcc-mean()-Y
      6. tGravityAcc-mean()-Z
      7. tBodyAccJerk-mean()-X
      8. tBodyAccJerk-mean()-Y
      9. tBodyAccJerk-mean()-Z
      10. tBodyGyro-mean()-X
      11. tBodyGyro-mean()-Y
      12. tBodyGyro-mean()-Z
      13. tBodyGyroJerk-mean()-X
      14. tBodyGyroJerk-mean()-Y
      15. tBodyGyroJerk-mean()-Z
      16. tBodyAccMag-mean()
      17. tGravityAccMag-mean()
      18. tBodyAccJerkMag-mean()
      19. tBodyGyroMag-mean()
      20. tBodyGyroJerkMag-mean()
      21. fBodyAcc-mean()-X
      22. fBodyAcc-mean()-Y
      23. fBodyAcc-mean()-Z
      24. fBodyAcc-meanFreq()-X
      25. fBodyAcc-meanFreq()-Y
      26. fBodyAcc-meanFreq()-Z
      27. fBodyAccJerk-mean()-X
      28. fBodyAccJerk-mean()-Y
      29. fBodyAccJerk-mean()-Z
      30. fBodyAccJerk-meanFreq()-X
      31. fBodyAccJerk-meanFreq()-Y
      32. fBodyAccJerk-meanFreq()-Z
      33. fBodyGyro-mean()-X
      34. fBodyGyro-mean()-Y
      35. fBodyGyro-mean()-Z
      36. fBodyGyro-meanFreq()-X
      37. fBodyGyro-meanFreq()-Y
      38. fBodyGyro-meanFreq()-Z
      39. fBodyAccMag-mean()
      40. fBodyAccMag-meanFreq()
      41. fBodyBodyAccJerkMag-mean()
      42. fBodyBodyAccJerkMag-meanFreq()
      43. fBodyBodyGyroMag-mean()
      44. fBodyBodyGyroMag-meanFreq()
      45. fBodyBodyGyroJerkMag-mean()
      46. fBodyBodyGyroJerkMag-meanFreq()
      47. tBodyAcc-std()-X
      48. tBodyAcc-std()-Y
      49. tBodyAcc-std()-Z
      50. tGravityAcc-std()-X
      51. tGravityAcc-std()-Y
      52. tGravityAcc-std()-Z
      53. tBodyAccJerk-std()-X
      54. tBodyAccJerk-std()-Y
      55. tBodyAccJerk-std()-Z
      56. tBodyGyro-std()-X
      57. tBodyGyro-std()-Y
      58. tBodyGyro-std()-Z
      59. tBodyGyroJerk-std()-X
      60. tBodyGyroJerk-std()-Y
      61. tBodyGyroJerk-std()-Z
      62. tBodyAccMag-std()
      63. tGravityAccMag-std()
      64. tBodyAccJerkMag-std()
      65. tBodyGyroMag-std()
      66. tBodyGyroJerkMag-std()
      67. fBodyAcc-std()-X
      68. fBodyAcc-std()-Y
      69. fBodyAcc-std()-Z
      70. fBodyAccJerk-std()-X
      71. fBodyAccJerk-std()-Y
      72. fBodyAccJerk-std()-Z
      73. fBodyGyro-std()-X
      74. fBodyGyro-std()-Y
      75. fBodyGyro-std()-Z
      76. fBodyAccMag-std()
      77. fBodyBodyAccJerkMag-std()
      78. fBodyBodyGyroMag-std()
      79. fBodyBodyGyroJerkMag-std()  


- value: 
      The measurement corresponding to each feature.