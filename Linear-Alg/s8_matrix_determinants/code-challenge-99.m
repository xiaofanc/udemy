
% determinant of matrix product
% det(A)*det(B) = det(AB)

A = randn(3);
B = randn(3);
AB = A*B;
[det(A) det(B) det(A)*det(B) det(AB)]

k = 40;
dets = zeros(k,2);

for i =1:k
    A = randn(i);
    B = randn(i)

    AB = A*B;
    dets(i, :) = [det(A)*det(B) det(AB)];
end

plot(dets(:,1)-dets(:,2), 's-')
set(gca, 'ylim', [-1 1])