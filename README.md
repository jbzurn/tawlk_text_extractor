tawlk_text_extractor
====================

matlab-based text extractor for TAWLK-format social media data files

README

This code extracts text from social media data 
files, gathered using the software Kral. The source
files are ascii text and formatted as follows:

tweet# | service | searchterm | username | follower_count_for_user | post_content

The file 'script extract unique content' allows 
you to extract to an output file, just the post_content,
with a little pre-processing to remove duplicate posts
and http://t.co/* links (helps for identifying unique 
posts, since retweets may have different t.co links).

Once you have extracted the data, a word cloud 
generator can display the data nicely. The contents can 
be pasted into http://www.wordle.net/create .  

A few example files are included. They are for earthquake
data gathered on November 7, 2012. There is a file 
for prior to the Guatemala earthquake (baseline), 
just before, at peak data, and a few hours afterwards.
The times are indicated by the timestamp of the file
name, and are for 30-minute increments. PDFs of Wordle
outputs are also included, for the 'script extract unique
content.m' file.

Enjoy!

More information on Kral, and the related 
company Tawlk, can be found at http://www.tawlk.com 
or in the paper "Hybrid Browser / Server Collection
of Streaming Social Media Data for Scalable 
Real-Time Analysis.", RAMSS 2012 workshop at
ICWSM-12, 4 June 2012, by Lance Reagan Vick,
Titus Soporan, Daniel Robert Lewis and Jane 
Brooks Zurn.
http://www.aaai.org/ocs/index.php/ICWSM/ICWSM12/paper/view/4787
