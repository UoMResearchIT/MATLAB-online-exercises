% 2.2 (a)

if class(A)=='double'
    disp('A is double precision')
end

% 2.2 (b)
if class(A)=='double'
    disp('A is double precision')
elseif class(A)=='char'
    disp('A is a character')
elseif class(A)=='logical'
    disp('A is a logical')
end

% 2.2 (c)
if class(A)=='double'
    disp('A is double precision')
elseif class(A)=='char'
    disp('A is a character')
elseif class(A)=='logical'
    disp('A is a logical')
else
    disp('Unknown class')
end

% 2.2 (d)
% (Re-)run the script from 2.2 (c) after each of the following commands
A=true;
A=1.1;
A='Test';
A=single(8);