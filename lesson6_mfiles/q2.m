% Solutions to lesson 5 exercise 2
% 2a File demo_multi.m
function demo_multi
c = a * b;
end

% 2b
demo_multi

% It doesn't work because there are no input arguments.
% The function doesn't know about a and b in the workspace.

% 2c
function demo_multi(a,b)
c = a * b;
end

% 2d
demo_multi(a,b)

% 2e
clear c
demo_multi(a,b)

% c is not in the workspace because it is currently local to the 
% function.
% It is calculated but not passed back out.
% You can verify this by running the function one line at a time using
% the debugger.

% 2f
function [c] = demo_multi(a,b)
% Square brackets around the output argument are optional when there is
% only one output argument.
c = a * b;
end

% 2g
c = demo_multi(a,b)

% 2h
[d] = demo_multi(5,6)

% 2i
function [c] = demo_multi(a,b)
% demo_multi	Simple function to multiply two variables
c = a * b;
end

help demo_multi
lookfor demo_multi
