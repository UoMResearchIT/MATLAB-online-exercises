% 1.7
% Clear all variable
clear

% Create two 5*5 matrices of random numbers
r1=rand(5)
r2=rand(5)

% 1.7 (a)
% Create logical matrix showing which values are greater in r1 than r2
greaterthan = r1 > r2

% 1.7 (b)
resulta = r1 > 0.5
resultb = r1 > 0.9
resultc = r1 > 0.99