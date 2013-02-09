function data = extract_tweet_content(filename)
%extract the content of tweets in Tawlk format
%jbzurn 2012-1107

%filename = 'test1.txt';
filename = '201211071641.txt';

data = formatKral(filename);

[num_tweets dummy] = size(data);

%make variables to contain the data
tweetnum = zeros(num_tweets,1);
service  = cell(num_tweets,1);
term  = cell(num_tweets,1);
user  = cell(num_tweets,1);
followers  = zeros(num_tweets,1);
content = cell(num_tweets,1);

for i=1:num_tweets
    [tweetnum(i,1) service{i,1} term{i,1} user{i,1} followers(i,1) content{i,1}] = deal(data{i,:});
end

%find all retweets of the same thing
%union
%retweets = union(content,'rows');

% % %find all the different tweets
% % %unique
% % %first get rid of http://t.co/ links because they're unique
% % content_fixed = remove_tco_links(content);
% % 
% % %now get rid of duplicate tweets
% % %unique_tweets = unique(content,'rows');
% % unique_tweets2 = unique(content_fixed,'rows');

% % %write out one item to a text file
% % filename_out = 'temp.txt';
% % 
% % [num_unique dummy] = size(unique_tweets2);
% % 
% % fid = fopen(filename_out,'w');
% % 
% % for i=1:num_unique
% %     fprintf(fid,'%s\n',unique_tweets2{i,1});
% % end
% % 
% % status = fclose(fid);
