 
% RREF of different matrices (random)
% - square
% - rectangular (tall, wide)
% - linear dependencies (columns, rows)

m = 5;
n= 5;
A=randn(m,n);
rref(A)

%% 1   0   0   0   0
%% 0   1   0   0   0
%% 0   0   1   0   0
%% 0   0   0   1   0
%% 0   0   0   0   1

m = 8;
n = 3;
A=randn(m,n);
rref(A)

%% 1   0   0
%% 0   1   0
%% 0   0   1
%% 0   0   0
%% 0   0   0
%% 0   0   0
%% 0   0   0
%% 0   0   0

rref(A') % 不能通过row opertion消掉

%% 1.00000   0.00000   0.00000   2.41979   2.80055  -0.39240   0.95527   0.91030
%% 0.00000   1.00000   0.00000   0.66033   5.32757  -0.80657   0.21675   2.32550
%% 0.00000   0.00000   1.00000  -0.24803  -0.65250  -1.39156  -0.62229   0.40885

m = 5;
n= 5;
A=randn(m,n);

A(:,1) = A(:,2);
rref(A)

%% 1   1   0   0   0
%% 0   0   1   0   0
%% 0   0   0   1   0
%% 0   0   0   0   1
%% 0   0   0   0   0

m = 5;
n= 5;
A=randn(m,n);
A(1,:) = rand*A(2,:) + rand*A(4,:);
rref(A)

%% 1.00000   0.00000   0.00000   0.00000   1.39250
%% 0.00000   1.00000   0.00000   0.00000   1.67817
%% 0.00000   0.00000   1.00000   0.00000   3.25911
%% 0.00000   0.00000   0.00000   1.00000   2.83700
%% 0.00000   0.00000   0.00000   0.00000   0.00000


