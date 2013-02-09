function data = formatKral(filename)
%function to read in Kral format data, 
%and return in a n_lines by 6 fields cell structure
%jbzurn

% Read file as text
text=fileread(filename); 
% Split by line
x = regexp(text, '\n', 'split');

[dummy, num_lines] = size(x);

%define a data structure with n_tweets x 6 fields
x2 = cell(num_lines,6);

%for each line, extract and place in structure
for i=1:num_lines

%dereference the current line
temp = x(i);

%find all the pipes
temp2 = regexp(temp{1,1},'\|', 'split');

%check for extra pipes
[dummy num_pipes] = size(temp2);

%field 1: line #
temp3=textscan(temp2{1,1},'%d');
x2{i,1}=temp3{1,1};

%field 2: service
temp3=textscan(temp2{1,2},'%s');
x2{i,2}=temp3{1,1};

%field 3: search term
temp3=textscan(temp2{1,3},'%s');
x2{i,3}=temp3{1,1};

%field 4: username
temp3=textscan(temp2{1,4},'%s');
x2{i,4}=temp3{1,1};

%field 5: user's follower count
temp3=textscan(temp2{1,5},'%d');
x2{i,5}=temp3{1,1};

%field 6: content
%if extra pipes in the tweet, recombine 
%them into one string 
clear('temp_string');
temp_string = temp2{1,6};
if (num_pipes > 6) %extra pipes and must combine
    to_combine = num_pipes - 5;
    for k=6:(5+to_combine-1)
        temp_string = strcat(temp_string,' | ',temp2{1,k+1});
    end
end
%and place in 6th field 
x2{i,6}=temp_string;

end


%return data
data=x2;