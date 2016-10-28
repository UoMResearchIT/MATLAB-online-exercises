function listfiles(file_extension,size_threshold)
% listfiles List files in a directory
% Information output depends on a threshold

% Create a structure containing information about all files in the 
% current working directory that match the search criteria.
list=dir(file_extension);

% Variable to determine the length of the loop
nfiles=length(list);

% Abort execution if no files are matched.
assert(nfiles>0,'No files match the file extension supplied.')

% Initialize total file size counter
total = 0;
% Loop over the files
for i=1:nfiles
    % Identify files greater than size threshold
    if list(i).bytes>=size_threshold
        % Display file name and size
        fprintf('%s is %i bytes\n',list(i).name,list(i).bytes)
        % Update total file size over threshold
        total=total+list(i).bytes;
    else
        % For files smaller than threshold
        fprintf('%s is very small\n',list(i).name)
    end
end

% Format string for fprintf. 
% The format string doesn't need to be created first; 
% you could use a 'literal string' instead.
% In this case it is created first to keep the lines short (neat).
fstr='The combined size of %s files over %i bytes is %3.2f KB\n';

% Print combined size of files over threshold.
fprintf(fstr,file_extension,size_threshold,btokb(total))
end