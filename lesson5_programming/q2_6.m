% 2.6

% Initialise variables
B = 1;
c = 0; % c is our counter

% Our loop
while B ~= Inf
    B = B * 10;
    c = c + 1;
end

% Print to screen the number of iterations
fprintf('Number of iterations = %d\n', c)
