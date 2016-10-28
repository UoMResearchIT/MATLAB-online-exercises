% 3c
% Clear all workspace variables
clear

% Create a structure containing information about all files in the
% current working directory that match the search criteria
% (here '*.m').
list=dir('*.m');

% Variable to determine the length of the loop
nfiles=length(list);

% Loop over the files
for i=1:nfiles
    % Identify files greater than 150 bytes
    if list(i).bytes>=150
        % Display file name and size
        fprintf('%s is %i bytes\n',list(i).name,list(i).bytes)
    else
        % Indicate only that the file is very small
        fprintf('%s is very small\n',list(i).name)
    end
end