function fixed = remove_tco_links(content)
%remove t.co links from tweet content 
%to more easily identify retweets
%jbzurn 2012-11-07

[num_tweets dummy] = size(content);

%fixed = cell(num_tweets,1);
fixed = content;
tco_tweets=zeros(num_tweets,1);

%find all the t.co link rows
for i=1:num_tweets
    temp_location = findstr(content{i,1},'http://t.co');
    if(not(isempty(temp_location)))
        %grab the first
        %tco_tweets(i,1) = temp_location(1,1);
        %just mark that it's there
        tco_tweets(i,1) = 1;
    end
end
%num_of_tcos = sum(tco_tweets);

%now remove each t.co link
% % % % for i=1:num_tweets
% % % %     if(tco_tweets(i,1))
% % % %         fixed{i,1}=split_and_remove_tco_from_string(content{i,1});
% % % %     else
% % % %         fixed{i,1}=content{i,1};
% % % %     end
% % % % end


for i=1:num_tweets
        fixed{i,1}=split_and_remove_tco_from_string(content{i,1});
end
%return fixed




