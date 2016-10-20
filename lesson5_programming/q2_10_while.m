% 2.10 (a) - using a while loop
% Test for prime numbers

% Get user input
prompt='Enter a number: \n';
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
% Flag to determine whether loop should continue
i=2;
while prime && i<number/2 
    % Test if the number is not prime
    if mod(number,i)==0
        prime=0;
    end
    i=i+1;
end

% Print result and explanation
if prime
    fprintf('%d is a prime number\n',number)
else
    fprintf('%d is not a prime number\n',number)
    fprintf('%d is divisible by %d\n',number,i)
end