% 3b

% Read about the dir command
doc dir

% Clear all workspace variables - good practice in a script to 
% ensure there is no confusion between variables created in the 
% script and pre-existing variables in the workspace.
clear

% Create a structure containing information about all files in the 
% current working directory that match the search criteria
% (here '*.m').
list=dir('*.m')