
v = [ 3 -2 ]';


thetas = linspace(0, 2*pi, 100);

vecmags = zeros(length(thetas), 2);

for i=1:length(thetas)
    % rotation angle (specify in radians)
    theta = thetas(i);

    % 2x2 impure transformation matrix
    A1 = [ 2*cos(theta) -sin(theta);
          sin(theta) cos(theta) ];

    % 2x2 pure transformation matrix
    A2 = [ cos(theta) -sin(theta);
          sin(theta) cos(theta) ];

    % output vector is Av (convert v to column)
    vecmags(i, 1) = norm(A1*v);
    vecmags(i, 2) = norm(A2*v);

end

clf
plot(thetas, vecmags, 'linew', 3)
ylabel('av magnitude')
xlabel('Angle (rad.)')
legend({'impure rotation'; 'pure ratation'})