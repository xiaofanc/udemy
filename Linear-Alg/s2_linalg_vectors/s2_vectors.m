% vectors

v2 = [3 -2];
v3 = [4 -3 2];

% row to column:
v3'

% plot them
figure(1), clf
subplot(211)

% the main plotting line
plot([0 v2(1)], [0 v2(2)], 'linew', 2)

% this code just makes the plot look nice
axis square
axis([-4 4 -4 4])
hold on
plot(get(gca, 'xlim'), [0 0], 'k--')
plot([0 0], get(gca, 'ylim'), 'k--')
xlabel('x_1 dimension')
ylabel('x_2 dimension')

% plot the 3D vector
subplot(212)

plot3([0 v3(1)], [0 v3(2)], [0 v3(3)],'linew', 2)

% this code just makes the plot look nice
axis square
axis([-4 4 -4 4 -4 4])
hold on, grid on
plot3(get(gca, 'xlim'), [0 0], [0,0], 'k--')
plot3([0 0], get(gca, 'ylim'), [0 0], 'k--')
plot3([0 0], [0 0], get(gca, 'zlim'), 'k--')
xlabel('x_1 dimension')
ylabel('x_2 dimension')
zlabel('x_3 dimension')
rotate3d on


