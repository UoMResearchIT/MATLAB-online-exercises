% 2.8 (a)


% Initialise variables
% The first 2 variables are for use in the fprintf statement at the end
first=1;
last=100;
count=0;

% Loop from 1 to 100
for i=first:1:last % This would normally be "for i=1:1:100"
    % Test if the loop counter is divisbile by both 5 and 7
    if mod(i,5)==0 && mod(i,7)==0
        fprintf('%i is divisible by both 5 and 7\n',i)
        % 2.8 (b)
        % Count iterations
        count=count+1;
    end
end

% Print number of iterations
fprintf('There are %i integers between %i and %i that are divisible by 5 and 7\n',count,first,last)