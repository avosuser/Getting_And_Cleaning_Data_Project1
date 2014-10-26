
### "Getting and Cleaning Data" Poject1 Assignment Summary.

This Repository has all the data files and code for the "Getting and Cleaning Data" Project1 Assignment.

* My code uses package data.table, see comments on the code file for installation instructions.
* I setup working directory which suits my needs, feel free to change it as needed for your computer.

##### Data used on this project

* The Data for the project was obtained here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##### How my code works

* Tables Created with my R code
	<ul>
		<li>colNames</li>
		<li>xTestTable</li>
		<li>stdMeanColumns</li>
		<li>myColumns</li>
		<li>testActivityTable</li>
		<li>xTrainTable</li>
		<li>trainActivityTable</li>
		<li>meltedData</li>
		<li>subjActivityAvgData</li>
	</ul>
##### Started with the 'train' data set.

* I setup my working directory and load the needed libraries.

* I read the features.txt file, the variables from this file will by used for naming columns on our test and train data set.
	<p>
	Sample Output:<br />
	> head(colNames,2)<br />
	[1] "tBodyAcc-mean()-X" "tBodyAcc-mean()-Y"<br />
	</p>
* I read in the main 'test' data file and set the column names from the previous step. This will create table xTestTable and for the most part will be the master table for the 'test' data.
	<p>
	Sample Output:<br />
	> head(xTestTable,1)<br />
     tBodyAcc-mean()-X tBodyAcc-mean()-Y tBodyAcc-mean()-Z ..."<and many more>"<br />
	1:       0.2571778       -0.02328523       -0.01465376 <br />
	</p>
* Next I use the data.table like function to select the mean & standard dev columns from the colNames table I created earlier. I am selecting any columns with a '-mean' or '-std' as the columns containing the data we need for the project.
	Sample Output:<br />
	> head(xTestTable, 1)<br />
    tBodyAcc-mean()-X tBodyAcc-mean()-Y tBodyAcc-mean()-Z ..."<and many more>"<br />
    1:      0.2571778       -0.02328523       -0.01465376 <br />
* I then read the 'subject' data and this as a new column 
	<p>
	Sample Output:<br /><br />
	> head(xTestTable, 1)<br />
    tBodyAcc-mean()-X tBodyAcc-mean()-Y tBodyAcc-mean()-Z ..............Subject<br />
    1:      0.2571778       -0.02328523       -0.01465376                     2<br />
	</p>
* I read the 'activity' data i.e 'Y_test.txt' and give the activity number 1 thru 6 descriptive names like "WALKING" and so on. This part of the code will create table 'testActivityTable'
	<p>
	Sample Output:<br />
	> head(testActivityTable, 3)<br />
    Activity<br />
	1: STANDING<br />
	2: STANDING<br />
	3: STANDING<br />
	</p>
* Next I then add the column from 'testActivityTable' to my master table 'xTestTable', add a column called 'Key' and order the table so that it will have the columns 'Key', 'Subject', 'Activity' at the very beginning.
	<p>
	Sample Output:<br />
	> head(xTestTable, 1)<br />
       Key Subject Activity tBodyAcc-mean()-X tBodyAcc-mean()-Y ..."<and many more>"<br />
    1:   1       2 STANDING         0.2571778       -0.02328523 <br />  
	</p>

##### I did the same exact steps as above for the 'train' data set.
* The only difference is that when added the 'Key' column I started from 2948 (the 'test' data set has 2947 rows).

##### Merging the 'test' and 'train' data and getting averages
* I merged the 'test' and 'train' data set into a big single table, called 'finalTable'
* I do not need the 'Key' column any more as it adds an extra column for my averges table. I remove the 'Key' column.
* Next I melt the 'finalTable' using columns 'Activity' & 'Subject' as id's and all other columns as variables.
* I finally cast the data to get my averages. My final table is called 'subjActivityAvgData' 

	<p>
	Sample Output:<br />
	> dim(subjActivityAvgData)<br />
	[1] 180  81<br />

	> head(subjActivityAvgData, 1)<br />
	  Activity Subject tBodyAcc-mean()-X tBodyAcc-mean()-Y ..."<and many more>"<br />
	1   LAYING       1         0.2215982       -0.04051395<br />
	
	> tail(subjActivityAvgData, 1)
        Activity                   Subject tBodyAcc-mean()-X tBodyAcc-mean()-Y ..."<and many more>"<br />
    180 WALKING_UPSTAIRS                30         0.2714156       -0.02533117<br />
	</p>
	