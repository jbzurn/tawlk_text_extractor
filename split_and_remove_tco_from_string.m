function mystring_fixed = split_and_remove_tco_from_string(mystring)
%remove the t.co link from a string
%jbzurn 2012-1108

%split it
temp=regexp(mystring,'http://t.co/*','split');

%how many t.co links are there?
[dummy num_splits] = size(temp);

%start with the first part before t.co link
mystring_fixed = temp{1,1};

for i=2:num_splits
    num_flag=1;
    next_temp = remove_first_word(temp,i);
    %don't use strcat because it removes trailing spaces
    %mystring_fixed = strcat(mystring_fixed,' ',next_temp);
    mystring_fixed = [mystring_fixed next_temp];
end

