
% test whether the dot product sign is invariant to scalar multiplication? No

% generate two vector 
v1 = [-3 4 5]';
v2 = [2 6 -2]';

% generate two scalars
s1 = -2;
s2 = 3;

disp(['original: ' num2str(dot(v1,v2))]) %8
disp(['scaled: ' num2str((s1*v1)'*(s2*v2))]) %-48