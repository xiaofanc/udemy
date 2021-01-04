
% singular matrix (reduced-rank matrix) has a determinant of 0

m = 2;
A = randn(m);
A(:,1) = A(:,2);
det(A)    % 0

m = 15;
A = randn(m);
A(:,1) = A(:,2);
det(A)    % 0

m = 30;
A = randn(m);
A(:,1) = A(:,2);
det(A)    % -0.175  => should be 0
          % use cond(A) instead to calculate determinant



