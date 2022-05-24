
% the linearity of trace

% determine the relationship between tr(A) + tr(B) and tr(A+B)
% trace is only for square matrix

m = 5;
n = 5;
A = round(5*randn(m,n))
B = round(5*randn(m,n))

a = trace(A)+trace(B)
b = trace(A+B)
disp([a b])

% determine the relationship between tr(l*A) and l*tr(A)
l = 10
c = trace(l*A)
d = l*trace(A)

disp([c d])