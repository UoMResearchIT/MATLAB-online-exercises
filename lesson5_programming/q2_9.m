% 2.9
% While loop to calculate first 10 numbers divisble by 3, 4, and 5.

% Counter to record how many numbers have met our criteria
count=0;
number=1; % This could start from 3*4*5=60 because this will be the first result.
while count<10
    % Test if number meets the criteria
    if mod(number,3)==0 && mod(number,4)==0 && mod(number,5)==0
        % Print text to screen when a result is found
        fprintf('%i is divisible by 3, 4 and 5.\n',number)
        % Increment counter for each result
        count=count+1;
    end
    % Increment number
    number=number+1; 
end