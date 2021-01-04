
% diagonal matrices, and their inverse
% think about the condition on the diagnoal matrix for invertibility
% every diagonal element must be non zero 

A = [2 0; 0 3];
% inv(A) = [1/2 0; 0 1/3]  - diagonal elements individually reciprocated
% why?
% A*inv(A) = [1 0; 0 1]

A = diag(1:10);
Adiag = diag(A);
Idiag = diag(inv(A));

Adiag .* Idiag
% [1 1 1 1 1 1 1 1 1 1]'