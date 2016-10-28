clear
n = 2500
b = rand(n)
tic

for i=1:n
    for j=1:n
        if b(i,j) < 0.5 
            a(i,j) = b(i,j)*2
        else
            a(i,j) = 1;
        end
    end
end

for i=1:n
    for j=1:n
        a(i,j) = a(i,j) - 0.001
        if a(i,j) < 0 
            a(i,j) = 0
            flag = 1
        end
    end
end

for i=1:n
    c(i,1) = b(i,1);
    for j=2:n
        c(i,j) = b(i,j) + c(i,j-1)
    end
end

for i=1:n
    d(i) = 0
    for j=1:n
        d(i) = d(i) + c(i,j) + a(i,j) * b(i,j); 
    end
end

toc