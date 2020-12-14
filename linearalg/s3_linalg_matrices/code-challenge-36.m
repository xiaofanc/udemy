
% test for some random MxN matrics whether s(A+B) = sA+sB - Yes
% in another word: whether the matrix-scalar multiplication a linear operation?

s = 2;

m = 7;
n = 5;

A = randn(m,n);
B = randn(m,n);

% compute both sides of the equation
resL = s * (A+B)
resR = s*A + s*B

resR - resL
