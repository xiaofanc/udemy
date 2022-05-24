
% whether pseudoinverse is the same as the real inverse for an invertible matrix? yes

m=5;
A = randn(m);

AinvF = inv(A);
AinvP = pinv(A);

A*AinvF   % identity matrix
A*AinvP   % identity matrix

A*AinvF - A*AinvP  % = 0

