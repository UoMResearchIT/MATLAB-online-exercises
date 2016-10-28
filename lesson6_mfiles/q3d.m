function listfiles(file_extension)
% Create a structure containing information about all files in the
% current working directory that match the search criteria.
list=dir(file_extension);

% Variable to determine the length of the loop
nfiles=length(list);

% Initialize total file size counter
total = 0;
% Loop over the files
for i=1:nfiles
    % Identify files greater than 150 bytes
    if list(i).bytes>=150
        % Display file name and size
        fprintf('%s is %i bytes\n',list(i).name,list(i).bytes)
        % Update total file size over threshold
        total=total+list(i).bytes;
    else
        % For files smaller than 150 bytes
        fprintf('%s is very small\n',list(i).name)
    end
end