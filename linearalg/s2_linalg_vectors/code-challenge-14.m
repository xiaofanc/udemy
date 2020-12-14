
% Is the dot product commutative? Yes
% a'*b == b'*a

% generate two 100-element random row vectors
a = randn(1,100);
b = randn(1,100);

[a*b' b*a']

a = [2 4];
b = [3 5];

[a*b' b*a']