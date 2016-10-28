clear all
n = 2500;
b = rand(n);

disp('Running original version')

tic
for i=1:n
    for j=1:n
        if b(i,j) < 0.5 
            a(i,j) = b(i,j)*2;
        else
            a(i,j) = 1;
        end
    end
end

for i=1:n
    for j=1:n
        a(i,j) = a(i,j) - 0.001;
        if a(i,j) < 0 
            a(i,j) = 0;
            flag = 1;
        end
    end
end

for i=1:n
    c(i,1) = b(i,1);
    for j=2:n
        c(i,j) = b(i,j) + c(i,j-1); 
    end
end

for i=1:n
    d(i) = 0;
    for j=1:n
        d(i) = d(i) + c(i,j) + a(i,j) * b(i,j); 
    end
end

toc

disp('Now running optimised version')

tic

% for i=1:n
%     for j=1:n
%         if b(i,j) < 0.5 
%             a(i,j) = b(i,j)*2;
%         else
%             a(i,j) = 1;
%         end
%     end
% end

a_fast = ones(size(b));
indices = find(b<0.5);
a_fast(indices) = b(indices) * 2;

% for i=1:n
%     for j=1:n
%         a(i,j) = a(i,j) - 0.001;
%         if a(i,j) < 0 
%             a(i,j) = 0;
%             flag = 1;
%         end
%     end
% end

a_fast = a_fast - 0.001;
indices = find(a_fast<0);
flag = length(indices)>0;
a_fast(indices)=0;

% for i=1:n
%     c(i,1) = b(i,1);
%     for j=2:n
%         c(i,j) = b(i,j) + c(i,j-1); 
%     end
% end

c_fast = cumsum(b,2);

% for i=1:n
%     d(i) = 0;
%     for j=1:n
%         d(i) = d(i) + c(i,j) + a(i,j) * b(i,j); 
%     end
% end

d_fast=zeros(1,n);
for j=1:n
    d_fast(:) = d_fast(:) + c_fast(:,j) + a_fast(:,j) .* b(:,j);
end

toc

% Use sum of the differences to measure how close the results are
disp('sum(a(:)-a_fast(:))')
sum(a(:)-a_fast(:))
disp('sum(c(:)-c_fast(:))')
sum(c(:)-c_fast(:))
disp('sum(d(:)-d_fast(:))')
sum(d(:)-d_fast(:))