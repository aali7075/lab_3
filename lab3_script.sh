#!/bin/bash
# Authors : Aaron Li
# Date: 9/19/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
# use echo to prompt messege and then store input inside variable
echo "Please enter file name : "
read filename
echo "Please enter regular expression: "
read reg
#use $ to represent variables
egrep $reg $filename
####### Problem 2 ##########
#first match numbers from 0-9 with 3 characters then a dash then 3 and 4
echo "The amount of phone numbers in text file are"
egrep -c  [0-9]{3}[-][0-9]{3}[-][0-9]{4} regex_practice.txt
###### Problem 3 #########
#find emails by first finding @ then any amount of workds followed by .com
echo "The number of emails are: "
egrep -c @[a-zA-Z0-9._-]+\.[com]+ regex_practice.txt
##### Problem 4 #########
#same as problem 2 but first 3 numbers are 303
echo "All phone numbers with phone numbers in the 303 area code: "
egrep -o [303]{3}[-][0-9]{3}[-][0-9]{4} regex_practice.txt
##### Problem 5 #########
# take all emails with @geocities and store in text email_results.txt
grep "@geocities.com" regex_practice.txt >> email_results.txt

