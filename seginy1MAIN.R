# Change the working directory to the folder containing the .csv file
data <- read.csv("grc.csv") # This line is used to extract the excel file from my directory.
data # Calling the database.
sum (duplicated(data)) # Checking out number of duplicates, there are exactly 2.
data_without = unique(data) # Used to clean the data from duplicates, and making a new unique one.
data_without # Calling it. 
sum (duplicated(data_without)) # Assuring there are no duplicates anymore. Output = 0 duplicates.
sum (is.na(data)) # Checking out number of "NA" values, there is none. 
outlier = boxplot(data[, c(2,3,4,6)])$out # Detecting outliers; abnormal values from the file.
outlier # In this specific case and context of grocery sets, it isn't required to remove
# the outliers due to the reason that the value of each outlier is logical, purchasable
# , and not ridiculous. 


# Summary: Three methods were used in order to clean the data. Checking duplicates, checking
# NA values, and illogical outliers. Results only concluded two errors, being 2 duplicates.
#test test
