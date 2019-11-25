# Group HomeWork (25):

Use ChickWeight.csv dataset inside ForSharing>Datasets.  Assume that weight measurements per chick x diet are automatically uploaded every time period ’Time’ to a repository that you have access to.  Loop the codes in slides 23-25 to check (every time period) for any outlier data i.e. weight outside the 3sd thresholds. R code should:

- Import data for a given time period ‘Time’ from a directory
- Calculate LCL and UCL for the given time period
- Flag if LCL / UCL has been breached for the period Time

## Group BonusPoint (+5): 
Perform the outliers test using the same data for the given time period but with Boxplot.

## Group BonusPoint (+5): 
Extend the process further to send an email notification to a set of recipients (including yykangleon@gmail.com) on whether the threshold has been breached or not.  Use mailR: https://cran.r-project.org/web/packages/mailR/mailR.pdf

## Group BonusPoint (+5): 
Wrap process in .bat file.  Schedule the batch job using Task Scheduler.

