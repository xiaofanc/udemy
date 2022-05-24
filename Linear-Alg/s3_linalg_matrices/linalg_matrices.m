%%
%     COURSE: Linear algebra: theory and implementation
%    SECTION: Introduction to matrices
%      VIDEO: A zoo of matrices
% Instructor: sincxpress.com
%
%%

% square vs. rectangular
S = randn(5);
S = randn(5,5);
R = randn(5,2); % 5 rows, 2 columns

% identity
I = eye(3);

% zeros
Z = zeros(4);

% diagonal
D = diag([ 1 2 3 5 2 ]);

% create triangular matrix from full matrices
S = randn(5);
U = triu(S);
L = tril(S);

% concatenate matrices (sizes must match!)
A = randn(3,2);
B = randn(3,4);
C = [ A B ];   % (3,6)

%%

%%
%     COURSE: Linear algebra: theory and implementation
%    SECTION: Introduction to matrices
%      VIDEO: Matrix addition and subtraction
% Instructor: sincxpress.com
%
%%

% create random matrices
A = randn(5,4);
B = randn(5,3);
C = randn(5,4);

% try to add them
A+B
A+C


% "shifting" a matrix
l = .3; % lambda
N = 5; % size of square matrix
D = randn(N); % can only shift a square matrix

% 
Ds = D + l*eye(N);

%%

%%
%     COURSE: Linear algebra: theory and implementation
%    SECTION: Introduction to matrices
%      VIDEO: Matrix-scalar multiplication
% Instructor: sincxpress.com
%
%%

M = [1 2; 2 5];
s = 2;

% pre- and post-multiplication is the same:
M*s
s*M


%%

%%
%     COURSE: Linear algebra: theory and implementation
%    SECTION: Introduction to matrices
%      VIDEO: Transpose
% Instructor: sincxpress.com
%
%%

M = [ 1 2 3; 2 3 4 ];

M'
M'' % note: '' not "

% warning! be careful when using complex matrices
C = [ 4+1i 3 2-4i ];
C'              % Hermitian transpose: [ 4-1i; 3; 2+4i ];
transpose(C)    % normal transpose - same as C
C.'             % normal transpose - same as C


%%

%%
%     COURSE: Linear algebra: theory and implementation
%    SECTION: Introduction to matrices
%      VIDEO: Diagonal and trace
% Instructor: sincxpress.com
%
%%

M = round( 5*randn(4) );

% extract the diagonals
d = diag(M);

% notice the two ways of using the diag function
d = diag(M); % input is matrix, output is vector
D = diag(d); % input is vector, output is matrix with only diagonal


% trace as sum of diagonal elements
tr = trace(M);
tr2 = sum( diag(M) );

%%

%%
%     COURSE: Linear algebra: theory and implementation
%    SECTION: Introduction to matrices
%      VIDEO: Broadcasting matrix arithmetic
% Instructor: sincxpress.com
%
%%

% create a matrix
% 1   4   7   10
% 2   5   8   11
% 3   6   9   12

A = reshape(1:12,3,4);

% and two vectors
r = [ 10 20 30 40 ];
c = [ 100 200 300 ]';

%% three methods for broadcasting

% the repmat way
% [1   4   7   10] + [10 20 30 40] = [11   24   37   50]
% [2   5   8   11] + [10 20 30 40] = [12   25   38   51]
% [3   6   9   12] + [10 20 30 40] = [13   26   39   52]

% repeat r the number of rows by one column
repmat(r,size(A,1),1) 
A + repmat(r,size(A,1),1) 

% [1   4   7   10] + [100 100 100 100] = [101   104   107   110]
% [2   5   8   11] + [200 200 200 200] = [202   205   208   211]
% [3   6   9   12] + [300 300 300 300] = [303   306   309   312]

% repeat c the number of column by one row
repmat(c,1,size(A,2))
A + repmat(c,1,size(A,2)) 

% the bsxfun way
bsxfun(@plus,A,r)
bsxfun(@plus,A,c)

% the non-mathy way
A + r
A + c

%%


%% end.

% Interested in more courses? See sincxpress.com 
% Use code MXC-DISC4ALL for the lowest price for all courses.

