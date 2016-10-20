% 2.3

switch class(A)
    case 'double'
        disp('A is double precision')
    case 'char'   
        disp('A is character')
    case 'logical'
        disp('A is logical')
    otherwise
        disp('Unknown class')
end