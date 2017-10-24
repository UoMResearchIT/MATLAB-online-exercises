% 2.2 (a)

if isa(A,'double')
    disp('A is double precision')
end

% 2.2 (b)
if isa(A,'double')
    disp('A is double precision')
elseif isa(A,'char')
    disp('A is a character')
elseif isa(A,'logical')
    disp('A is a logical')
end

% 2.2 (c)
if isa(class(A),'double')
    disp('A is double precision')
elseif isa(A,'char')
    disp('A is a character')
elseif isa(A,'logical')
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
