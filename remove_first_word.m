function temp_fixed = remove_first_word(temp,this_link_number)
%removes the initial word from a string and
%returns the string
%jbzurn 2012-1107

temp2 = regexp(temp{1,this_link_number},' ','split');

[dummy num_spaces] = size(temp2);

%clear(temp_fixed);
if(num_spaces > 1)
    temp_fixed = temp2{1,2};
    
    if(num_spaces>2) %then need to cat the words back together
        for j=3:num_spaces
            %don't use strcat because it removes trailing spaces
            %temp_fixed = strcat(temp_fixed,' ',temp2{1,j});
            temp_fixed = [temp_fixed temp2{1,j}];
        end
    end
    
else
    %temp_fixed = temp2; %removed, this is returning the link number
    temp_fixed = '';
end