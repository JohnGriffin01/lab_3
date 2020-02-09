#!/bin/bash
# Authors : John Griffin
# Date: 2/06/2020

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter a filename: "
read fileOne
echo "Enter a value to search for "
read searchOne
grep ${searchOne} ${fileOne} # searches the file called fileOne for the value searchOne
grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' regex_practice.txt # looks for a digit from 0-9 spanning 3 digits, a -, 3 more digits, another -, and then the final 4 digits and counts the phone numbers
grep -c '[.@.]' regex_practice.txt # counts the number of emails by searching for @ with any character on either side
grep -o '[303]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' regex_practice.txt # like the phone number count except the first 3 digits must be 303. Then it ouputs the matching phone numbers.
grep -o '[0-9a-zA-Z+_-.]\+@geocities.com' regex_practice.txt >> email_results.txt # reads the emails into a new file by searching for any number or character appended with @geocities.com


