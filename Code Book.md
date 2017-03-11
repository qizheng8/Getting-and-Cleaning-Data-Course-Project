#Code Book

#Data:
1. read files into R:
subject_test.txt
subject_train.txt
X_test.txt
y_test.txt
y_train.txt
X_train.txt
features.txt
activity_labels.txt
2. merge the data and select mean() and std()variables
3. change the variable names:
"t" to "time"
"f" to "frequency"
"Acc" to "Accelerometer"
"Gyro" to "Gyroscope"
"Mag" to "Magnitude"
"BodyBody" to "Body"
4.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Data variables' names:   
 [1] "subject"                                           
 [2] "activity"                                          
 [3] "timeBodyAccelerometer-mean()-X"                    
 [4] "timeBodyAccelerometer-mean()-Y"                    
 [5] "timeBodyAccelerometer-mean()-Z"                    
 [6] "timeGravityAccelerometer-mean()-X"                 
 [7] "timeGravityAccelerometer-mean()-Y"                 
 [8] "timeGravityAccelerometer-mean()-Z"                 
 [9] "timeBodyAccelerometerJerk-mean()-X"                
[10] "timeBodyAccelerometerJerk-mean()-Y"                
[11] "timeBodyAccelerometerJerk-mean()-Z"                
[12] "timeBodyGyroscope-mean()-X"                        
[13] "timeBodyGyroscope-mean()-Y"                        
[14] "timeBodyGyroscope-mean()-Z"                        
[15] "timeBodyGyroscopeJerk-mean()-X"                    
[16] "timeBodyGyroscopeJerk-mean()-Y"                    
[17] "timeBodyGyroscopeJerk-mean()-Z"                    
[18] "timeBodyAccelerometerMagnitude-mean()"             
[19] "timeGravityAccelerometerMagnitude-mean()"          
[20] "timeBodyAccelerometerJerkMagnitude-mean()"         
[21] "timeBodyGyroscopeMagnitude-mean()"                 
[22] "timeBodyGyroscopeJerkMagnitude-mean()"             
[23] "frequencyBodyAccelerometer-mean()-X"               
[24] "frequencyBodyAccelerometer-mean()-Y"               
[25] "frequencyBodyAccelerometer-mean()-Z"               
[26] "frequencyBodyAccelerometer-meanFreq()-X"           
[27] "frequencyBodyAccelerometer-meanFreq()-Y"           
[28] "frequencyBodyAccelerometer-meanFreq()-Z"           
[29] "frequencyBodyAccelerometerJerk-mean()-X"           
[30] "frequencyBodyAccelerometerJerk-mean()-Y"           
[31] "frequencyBodyAccelerometerJerk-mean()-Z"           
[32] "frequencyBodyAccelerometerJerk-meanFreq()-X"       
[33] "frequencyBodyAccelerometerJerk-meanFreq()-Y"       
[34] "frequencyBodyAccelerometerJerk-meanFreq()-Z"       
[35] "frequencyBodyGyroscope-mean()-X"                   
[36] "frequencyBodyGyroscope-mean()-Y"                   
[37] "frequencyBodyGyroscope-mean()-Z"                   
[38] "frequencyBodyGyroscope-meanFreq()-X"               
[39] "frequencyBodyGyroscope-meanFreq()-Y"               
[40] "frequencyBodyGyroscope-meanFreq()-Z"               
[41] "frequencyBodyAccelerometerMagnitude-mean()"        
[42] "frequencyBodyAccelerometerMagnitude-meanFreq()"    
[43] "frequencyBodyAccelerometerJerkMagnitude-mean()"    
[44] "frequencyBodyAccelerometerJerkMagnitude-meanFreq()"
[45] "frequencyBodyGyroscopeMagnitude-mean()"            
[46] "frequencyBodyGyroscopeMagnitude-meanFreq()"        
[47] "frequencyBodyGyroscopeJerkMagnitude-mean()"        
[48] "frequencyBodyGyroscopeJerkMagnitude-meanFreq()"    
[49] "timeBodyAccelerometer-std()-X"                     
[50] "timeBodyAccelerometer-std()-Y"                     
[51] "timeBodyAccelerometer-std()-Z"                     
[52] "timeGravityAccelerometer-std()-X"                  
[53] "timeGravityAccelerometer-std()-Y"                  
[54] "timeGravityAccelerometer-std()-Z"                  
[55] "timeBodyAccelerometerJerk-std()-X"                 
[56] "timeBodyAccelerometerJerk-std()-Y"                 
[57] "timeBodyAccelerometerJerk-std()-Z"                 
[58] "timeBodyGyroscope-std()-X"                         
[59] "timeBodyGyroscope-std()-Y"                         
[60] "timeBodyGyroscope-std()-Z"                         
[61] "timeBodyGyroscopeJerk-std()-X"                     
[62] "timeBodyGyroscopeJerk-std()-Y"                     
[63] "timeBodyGyroscopeJerk-std()-Z"                     
[64] "timeBodyAccelerometerMagnitude-std()"              
[65] "timeGravityAccelerometerMagnitude-std()"           
[66] "timeBodyAccelerometerJerkMagnitude-std()"          
[67] "timeBodyGyroscopeMagnitude-std()"                  
[68] "timeBodyGyroscopeJerkMagnitude-std()"              
[69] "frequencyBodyAccelerometer-std()-X"                
[70] "frequencyBodyAccelerometer-std()-Y"                
[71] "frequencyBodyAccelerometer-std()-Z"                
[72] "frequencyBodyAccelerometerJerk-std()-X"            
[73] "frequencyBodyAccelerometerJerk-std()-Y"            
[74] "frequencyBodyAccelerometerJerk-std()-Z"            
[75] "frequencyBodyGyroscope-std()-X"                    
[76] "frequencyBodyGyroscope-std()-Y"                    
[77] "frequencyBodyGyroscope-std()-Z"                    
[78] "frequencyBodyAccelerometerMagnitude-std()"         
[79] "frequencyBodyAccelerometerJerkMagnitude-std()"     
[80] "frequencyBodyGyroscopeMagnitude-std()"             
[81] "frequencyBodyGyroscopeJerkMagnitude-std()"    