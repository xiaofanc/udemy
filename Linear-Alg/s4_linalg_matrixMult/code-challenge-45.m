
% implement matrix multiplication via layers

% generate two matrices
m = 4;
n = 6;
A = randn(m,n);
B = randn(n,m);
A*B

% build the product matrix layer-wise (for-loop)
C1 = zeros(m);

for i = 1:n
    C1 += A(:,i)*B(i,:);
end

% implement the matrix multiplication directly
C2 = A*B;

% compare the results
C1 - C2
