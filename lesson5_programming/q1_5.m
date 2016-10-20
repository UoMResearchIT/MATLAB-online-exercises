% Q1.5 solutions

% clear all variables
clear

% create array with 500 rows
a=rand(500,1);

% 1.5 (a)
% Test if any values are greater than 0.5, 0.9, 0.99.
% Output text to explain the following:
disp('The output from any(a>0.5) is')
disp(any(a>0.5))

disp('The output from any(a>0.9) is')
disp(any(a>0.9))

disp('The output from any(a>0.99) is')
disp(any(a>0.99))

% 1.5 (b)
% Find indices where values are greater than 0.99.
indices=find(a>0.99);
disp('Indices where a>0.99')
disp(indices)

% 1.5 (c)
% Are all values greater than 0.5, 0.1, 0.01?
result=all(a>0.5);
disp('All values are greater than 0.5: true or false?')
disp(result)

result=all(a>0.1);
disp('All values are greater than 0.1: true or false?')
disp(result)

result=all(a>0.01);
disp('All values are greater than 0.01: true or false?')
disp(result)

% 1.5 (d)
indices=find(a>0.99);
a(indices)=1
