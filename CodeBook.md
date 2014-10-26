## DATA DICTIONARY FOR MY TIDY UCI HAR DATA SET 

##### Data used on this project

* The Data for the project was obtained here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##### Variables used for my Tidy Data Set
* I went with the approach where I selected all variables with a '-mean' & '-std' anywhere in the names of the variable in the 'features.txt' file. This approach may give a few more variables which may/maynot be needed by a user, however its much easier to remove un-needed  data than modifying the code to get more data.

* Mean and Standard Deviation Measurements Used In My Tidy Data Set
<ul>
<li> "tBodyAcc-mean()-X" </li>
<li>"tBodyAcc-mean()-Y" </li>
<li> "tBodyAcc-mean()-Z" </li>
<li> "tBodyAcc-std()-X"  </li>             
<li> "tBodyAcc-std()-Y" </li>
<li> "tBodyAcc-std()-Z" </li>
<li> "tGravityAcc-mean()-X" </li>
<li> "tGravityAcc-mean()-Y" </li>
<li> "tGravityAcc-mean()-Z" </li>
<li> "tGravityAcc-std()-X" </li>
<li> "tGravityAcc-std()-Y"  </li>
<li> "tGravityAcc-std()-Z"   </li>         
<li> "tBodyAccJerk-mean()-X"  </li>
<li> "tBodyAccJerk-mean()-Y"  </li>
<li> "tBodyAccJerk-mean()-Z" </li>
<li> "tBodyAccJerk-std()-X"   </li>        
<li> "tBodyAccJerk-std()-Y"  </li>
<li> "tBodyAccJerk-std()-Z" </li>
<li> "tBodyGyro-mean()-X"  </li>
<li> "tBodyGyro-mean()-Y"  </li>           
<li> "tBodyGyro-mean()-Z" </li>
<li> "tBodyGyro-std()-X"  </li>
<li> "tBodyGyro-std()-Y"  </li>   
<li> "tBodyGyro-std()-Z"  </li>            
<li> "tBodyGyroJerk-mean()-X" </li>
<li> "tBodyGyroJerk-mean()-Y"  </li>
<li> "tBodyGyroJerk-mean()-Z" </li>
<li> "tBodyGyroJerk-std()-X"   </li>       
<li> "tBodyGyroJerk-std()-Y"  </li>
<li> "tBodyGyroJerk-std()-Z" </li> 
<li> "tBodyAccMag-mean()"  </li>   
<li> "tBodyAccMag-std()"  </li>            
<li> "tGravityAccMag-mean()"</li>
<li> "tGravityAccMag-std()"  </li> 
<li> "tBodyAccJerkMag-mean()"  </li>
<li> "tBodyAccJerkMag-std()"  </li>        
<li> "tBodyGyroMag-mean()" </li>    
<li> "tBodyGyroMag-std()"  </li>  
<li> "tBodyGyroJerkMag-mean()"  </li>
<li> "tBodyGyroJerkMag-std()"   </li>      
<li> "fBodyAcc-mean()-X"    </li> 
<li> "fBodyAcc-mean()-Y"  </li> 
<li> "fBodyAcc-mean()-Z" </li>  
<li> "fBodyAcc-std()-X"  </li>             
<li> "fBodyAcc-std()-Y"  </li> 
<li> "fBodyAcc-std()-Z"  </li>  
<li> "fBodyAcc-meanFreq()-X" </li>
<li> "fBodyAcc-meanFreq()-Y" </li>         
<li> "fBodyAcc-meanFreq()-Z" </li>
<li> "fBodyAccJerk-mean()-X" </li> 
<li> "fBodyAccJerk-mean()-Y" </li>
<li> "fBodyAccJerk-mean()-Z" </li>         
<li> "fBodyAccJerk-std()-X"  </li>
<li> "fBodyAccJerk-std()-Y"  </li> 
<li> "fBodyAccJerk-std()-Z"  </li>  
<li> "fBodyAccJerk-meanFreq()-X"   </li>   
<li> "fBodyAccJerk-meanFreq()-Y" </li>
<li> "fBodyAccJerk-meanFreq()-Z" </li>
<li> "fBodyGyro-mean()-X"  </li>      
<li> "fBodyGyro-mean()-Y" </li>            
<li> "fBodyGyro-mean()-Z" </li>     
<li> "fBodyGyro-std()-X" </li>      
<li> "fBodyGyro-std()-Y" </li>     
<li> "fBodyGyro-std()-Z" </li>             
<li> "fBodyGyro-meanFreq()-X"  </li>
<li> "fBodyGyro-meanFreq()-Y" </li> 
<li> "fBodyGyro-meanFreq()-Z" </li>   
<li>"fBodyAccMag-mean()" </li>     
<li>"fBodyAccMag-meanFreq()"  </li> 
<li> "fBodyBodyAccJerkMag-mean()" </li>
<li> "fBodyBodyAccJerkMag-std()"</li>     
<li> "fBodyBodyAccJerkMag-meanFreq()"</li>
<li>"fBodyBodyGyroMag-mean()"</li>     
<li>"fBodyBodyGyroMag-std()" </li>    
<li>"fBodyBodyGyroMag-meanFreq()" </li>  
<li>"fBodyBodyGyroJerkMag-mean()"</li>
<li>"fBodyBodyGyroJerkMag-std()" </li> 
<li>"fBodyBodyGyroJerkMag-meanFreq()"</li>
</ul>