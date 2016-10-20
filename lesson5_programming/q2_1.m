% 2.1
% Create a variable x and assign it a value
x=5;

% 2.1 (a)
if x > 1 && x < 2
    disp('1 < x < 2')
end

% 2.1 (b)
if x > 1 && x < 2
    disp('1 < x < 2')
elseif x <= 1
    disp('x is less than or equal to one')
end

% 2.1 (c)
if x > 1 && x < 2
    disp('1 < x < 2')
elseif x <= 1
    disp('x is less than or equal to one')
else
    disp('x is greater than or equal to 2')
end

% 2.1 (d)
x=0.5; % Then run the script from 2.1 (c)
% This tests x<=1 condition

x=1; % Then run the script from 2.1 (c)
% This tests the boundary condition for x <=1

x=1.3 % Then run the script from 2.1 (c)
% This tests the condition x > 1 && x < 2

x=2 % Then run the script from 2.1 (c)
% This tests the "else" condition 
