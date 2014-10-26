
## "Getting and Cleaning Data" Poject1 Assignment Summary.

This Repository has all the data files and code for the "Getting and Cleaning Data" Project1 Assignment.

* My code uses package data.table, see comments on the code file for installation instructions.
* I setup working directory which suits my needs, feel free to change it as needed for your computer.

## Data used on this project

* The Data for the project was obtained here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## How my code works

* I setup my working directory and load the needed libraries.
* I read the features.txt file, the variables from this file will by used for naming columns on our test and train data set.
	<p>
	Sample Output:<br />
	> head(colNames,2)
	[1] "tBodyAcc-mean()-X" "tBodyAcc-mean()-Y"
	</p>
*I read in the main 'test' data file and set the col




