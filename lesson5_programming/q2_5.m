% 2.5

% 2.5 (a)
% A loop that counts from 1 to 10
for c1 = 1:10
    fprintf('c1=%d\n', c1)
    
    % 2.5 (b)
    % A nested loop that counts from 10 to 1
    for c2 = 10:-1:1
        fprintf('c2=%d\n', c2)
        
        % 2.5 (c)
        % Exit inner loop when c1 is equal to c2
        if c1==c2
            break
        end
    end
    
    % Exit outer loop when c1 is equal to c2
    if c1==c2
        break
    end
end