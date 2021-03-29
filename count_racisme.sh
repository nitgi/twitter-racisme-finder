#!/bin/bash

# Author: Niels Top
# Filename: count_racisme.sh
# Date: 25-03-2021

# This script is used to collect data for the paper: 'how the murder of George Floyd affected racism on social media' (Top, 2020)
# Running the script will take approximately 5 hours
# For further instructions on how to use the script consult the README.md file found at: https://github.com/nitgi/twitter-racisme-finder


function get_racisme_count {
	zless *.out.gz | /net/corpora/twitter2/tools/tweet2tab -i text | grep -i 'racisme' | wc -l
}

function get_non_racisme_count {
	zless *.out.gz | /net/corpora/twitter2/tools/tweet2tab -i text | grep -iv 'racisme' | wc -l
}

echo This might take a while! Plenty of time to relax or work on something else.
echo When all data from a month is processed you will be notified with a message in the shell.
echo
echo

# 01-2020
cd /net/corpora/twitter2/Tweets/2020/01
echo Started processing tweets posted in January 2020...
echo
get_racisme_count
echo tweets that do contain the word 'racisme'
echo 
get_non_racisme_count
echo tweets that do not contain the word 'racisme'
echo
echo Collected all data from January
echo
echo

# 06-2020
cd /net/corpora/twitter2/Tweets/2020/06
echo Started processing tweets posted in June 2020...
echo
get_racisme_count
echo tweets that do contain the word 'racisme'
echo 
get_non_racisme_count
echo tweets that do not contain the word 'racisme'
echo
echo Collected all data from June
echo
echo

# 09-2020
cd /net/corpora/twitter2/Tweets/2020/09
echo Started processing tweets posted in September 2020...
echo
get_racisme_count
echo tweets that do contain the word 'racisme'
echo 
get_non_racisme_count
echo tweets that do not contain the word 'racisme'
echo
echo Collected all data from September
echo
echo

# Finished
echo Finished collecting the data
