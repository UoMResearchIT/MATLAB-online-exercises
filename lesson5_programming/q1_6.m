% 1.6 - repeat for 10*10 matrix
clear
a=rand(10,10);

% 1.6 (a)
% Test if any values are greater than 0.5, 0.9, 0.99.
% Output text to explain the following:
disp('The output from any(a(:)>0.5) is')
disp(any(a(:)>0.5))

disp('The output from any(a(:)>0.9) is')
disp(any(a(:)>0.9))

disp('The output from any(a(:)>0.99) is')
disp(any(a(:)>0.99))

% 1.6 (b)
% Find indices where values are greater than 0.99.
indices=find(a(:)>0.99);
disp('Indices where a(:)>0.99')
disp(indices)

% Find row and column indices (more useful)
[row_indices,col_indices]=find(a>0.99);
disp('row_indices')
disp(row_indices)
disp('col_indices')
disp(col_indices)


% 1.6 (c)
% Are all values greater than 0.5, 0.1, 0.01?
result=all(a(:)>0.5);
disp('All values are greater than 0.5: true or false?')
disp(result)

result=all(a(:)>0.1);
disp('All values are greater than 0.1: true or false?')
disp(result)

result=all(a(:)>0.01);
disp('All values are greater than 0.01: true or false?')
disp(result)

% 1.6 (d)
a(a>0.99)=1
