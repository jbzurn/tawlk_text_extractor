%script to get tweet content
filestem = '201211080341';
filestem = '201211071641';
filestem = '201211071611';
filestem = '201211071111';

infile = strcat('C:\Users\Brooks\Desktop\Kral Data\',filestem,'.txt');
outfile = strcat('wordcloud plots\',filestem,'_unique_content.txt');

extract_unique_tweet_content(infile,outfile);
