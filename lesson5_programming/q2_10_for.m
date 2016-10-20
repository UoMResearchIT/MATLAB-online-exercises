% 2.10 (a) - using a for loop
% Test for prime numbers

% Get user input
prompt='Enter an integer greater than 1: \n';
number=input(prompt);

% 2.10 (b)
% Check the number is greater than 1
assert(number>1,'Number must be greater than 1')

% 2.10 (b)
% Check the number is an integer
assert(mod(number,1)==0,'Number must be an integer')

% Initialise the prime flag as 1 (true)
prime=1; 

% Loop through all numbers required to determine result
for i=2:1:number/2
    % Test if number isn't prime
    if mod(number,i)==0
        % Set the prime flag to false
        prime=0;
        % No need to continue the loop now the result is known
        break
    end
end

% Print result and explanation
if prime
    fprintf('%d is a prime number\n',number)
else
    fprintf('%d is not a prime number\n',number)
    fprintf('%d is divisible by %d\n',number,i)
end