
% dot product with unit vector - smaller than 1

% create two random-integer vectors (R4)
n = 4;
v1 = round(20*randn(n,1));
v2 = round(20*randn(n,1));

% computer the length of the vectors and the magnitude of their dot product
v1m = norm(v1);
v2m = sqrt(v2'*v2);
dpm = abs( sum(v1.*v2) );    % v1.*v2 is the element-wise product 

% normalize the vectors
v1u = v1/v1m;
v2u = v2/v2m;

v1um = norm(v1u);
v2um = sqrt(v2u'*v2u);

% compute the magnitude of that dot product of the unit vectors
% = cos(theta)
dpum = abs( sum(v1u.*v2u) ); 