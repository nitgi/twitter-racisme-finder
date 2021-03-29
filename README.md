# twitter-racisme-finder
This repository contains the script used in the research 'Did the murder of George Floyd have an effect on racism awareness on social media in the Netherlands?' by N. Top (March, 2021). In this README.md file you will find instructions on how to reproduce the results. Furthermore it is explained what the script does and what the results of running the script are.

IMPORTANT: in all cases retweets are also counted. This since retweeting something about 'racisme' also means giving attention to the subject.

# Requirements
To run the shell script you will need a computer with Linux or any other Unix based operating system installed. Furthermore it is needed to have access to the Karora server. Access can be aquired at the Facultaty of Arts of the University of Groningen (Rijksuniversiteit). 

## How to use the script
1.  Download the file 'count_racisme.sh', which is in this repository, to your computer.
2.  Upload the file to Karora. To do this enter the following command:
 
    scp /path/to/file/count_racisme.sh s-or-p-number@karora.let.rug.nl:~/
    
    Where you replace /path/to/file with the actual path to the file on your computer and replace s-or-p-number with your number, eg. s1234567
   
    Then enter your password to confirm the upload.

3. Now log in to Karora by using the command:
 
   ssh s-or-p-number@karora.let.rug.nl
   
   Where you again replace s-or-p-number with your number, eg. s1234567
   
   Enter your password to actually log in.

4. Run the script. You can do this by running the following command:

   ./count_racisme.sh
   
   If this results in an error message enter the following command:
   
   sed -i -e 's/\r$//' count_racisme.sh
   
   Then run the script:
   
   ./count_racisme.sh

All set! The script is now running, this will take quite some time (approx 5 hours) so take your time to do something else. Please make sure your computer does not go into sleep mode while running the script, this will disconnect your computer from the Karora server. If this happens you will have to rerun the script and the 5 hours will start over. 

## Results of running the script
The script will go through millions of tweets that where sent in January, June and September 2020. For each month it will return how many tweets (including retweets) there are that DO and DO NOT contain the word 'racisme'.

#### JANUARY 2020 RESULTS

Tweets that DO contain the word 'racisme':

Tweets that DO NOT contain the word 'racisme':

Total tweets: 


#### JUNE 2020 RESULTS

Tweets that DO contain the word 'racisme':

Tweets that DO NOT contain the word 'racisme':

Total tweets: 


#### SEPTEMBER 2020 RESULTS

Tweets that DO contain the word 'racisme':

Tweets that DO NOT contain the word 'racisme':

Total tweets: 


## Functions in the script
There are two important functions in the script, namely: get_racisme_count and get_non_racisme_count

- The first function, get_racisme_count, collects the text of all tweets sent in the Netherlands in a certain month. Then it grabs only the tweets that DO contain the word 'racisme'. Lastly it counts the number of tweets it has found and returns this number.

- The second function, get_non_racisme_count, collects the text of all tweets sent in the Netherlands in a certain month. Then it grabs only the tweets that DO NOT contain the word 'racisme'. Lastly it counts the number of tweets it has found and returns this number.

## See actual tweets
To see the actual tweets sent (and not only the count of tweets) you will have to edit the .sh file. From the functions get_racisme_count and get_non_racisme_count, remove the part that says '| wc -l'. This will provide you with all of the tweets that contain, or do not contain, the word racism.

   
