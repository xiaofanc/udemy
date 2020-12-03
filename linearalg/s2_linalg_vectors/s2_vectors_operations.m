% vector addition&subtraction
v1 = [3 -1];
v2 = [2 4];

v3 = v1 + v2;

% plot
figure(2), clf

plot([0 v1(1)], [0 v1(2)], 'b', 'linew', 2)
hold on
plot([0 v2(1)]+v1(1), [0 v2(2)]+v1(2), 'r', 'linew', 2)
plot([0 v3(1)], [0 v3(2)], 'k', 'linew', 3)
legend({'v1';'v2';'v1+v2'})

% this code just makes the plot look nicer
axis square
axis([ -1 1 -1 1 ]*6)
% hold on
plot(get(gca,'xlim'),[0 0],'k--')
plot([0 0],get(gca,'ylim'),'k--')
xlabel('X_1 dimension')
ylabel('X_2 dimension')

% scaling
v1 = [ 3 -1 ];
l  = -.3;

% plot them
figure(3), clf

% the main plotting lines:
plot([0 v1(1)],[0 v1(2)],'b','linew',2)
hold on
plot([0 v1(1)]*l,[0 v1(2)]*l,'r:','linew',4)
legend({'v1';'v2'},'AutoUpdate','off')

% this code just makes the plot look nicer
axis square
axis([ -1 1 -1 1 ]*max([norm(v1) norm(v1*l)]))
hold on
plot(get(gca,'xlim'),[0 0],'k--')
plot([0 0],get(gca,'ylim'),'k--')
xlabel('X_1 dimension')
ylabel('X_2 dimension')

% dot product
v1 = [1 2 3 4 5];
v2 = [0 -4 -3 6 5];

% method 1
dp = sum(v1.*v2)

% method 2
dp = dot(v1, v2)

% method 3
dp = v1*v2'

% method 4
dp = 0;

% loop over elements
for i = 1:length(v1)
    dp = dp + v1(i)*v2(i);
end

% Dot product properties: associative and distributive
%% Distributive property

n = 10;
a = randn(n,1);
b = randn(n,1);
c = randn(n,1);

res1 = a' * (b+c);
res2 = a'*b + a'*c;

disp([res1 res2])

%% Associative property - does not work
res3 = a * (b'*c);   % n*1 b'*c becomes scaler
res4 = (a'*b)' * c'; % 1*n a'*b becomes scaler

disp([res3 res4'])

% Vector length

v1 = [1 2 3 4 5 6];

vl = sqrt(sum(v1.*v1));

vl = norm(v1);

% compute the angle (radians) between two vectors
v1 = [ 2  4 -3 ];
v2 = [ 0 -3 -3 ];

ang = acos(dot(v1, v2)/(norm(v1)*norm(v2)));

% draw them
figure(4), clf
plot3([0 v1(1)], [0 v1(2)], [0 v1(3)], 'b', 'linew', 2)
hold on
plot3([0 v2(1)],[0 v2(2)],[0 v2(3)],'r','linew',2)

axmax = max([norm(v1) norm(v2)]);
axis([-1 1 -1 1 -1 1]*axmax)
grid on, rotate3d on, axis square
title([ 'Angle between vectors: ' num2str(rad2deg(ang)) '^0' ])

%% equivalence of algebraic and geometric dot product formulas

% two vectors
v1 = [ 2  4 -3 ];
v2 = [ 0 -3 -3 ];


% algebraic
dp_a = sum( v1.*v2 );

% geometric
dp_g = norm(v1)*norm(v2)*cos(ang);

% print dot product to command
disp([ 'Algebra: ' num2str(dp_a) ', geometry: ' num2str(dp_g) ])

% Vector Hadamard multiplication - element-wise

w1 = [ 1 3 5 ];
w2 = [ 3 4 2 ];

w3 = w1 .* w2;

% Vector outer product
v1 = [1 2 3]';
v2 = [-1 0]';

% dot product;
v1'*v2

% outer product;
v1*v2'

op = zeros(length(v1), length(v2));
for i = 1:length(v1)
    for j = 1:length(v2)
        op(i,j) = v1(i)*v2(j);
    end
end

% Vector cross product
v1  = [ -3  2 5 ];
v2  = [  4 -3 0 ];

v3a = cross(v1, v2);

% manual method
v3b = [ v1(2)*v2(3) - v1(3)*v2(2);
        v1(3)*v2(1) - v1(1)*v2(3);
        v1(1)*v2(2) - v1(2)*v2(1);
    ]

% draw vectors and the plane they span
figure(5), clf, hold on
h = ezmesh( @(s,t)v1(1)*s+v2(1)*t , @(s,t)v1(2)*s+v2(2)*t , @(s,t)v1(3)*s+v2(3)*t , [-1 1 -1 1]*2);
set(h,'facecolor','g','cdata',ones(50),'EdgeColor','none')

% individual vectors
plot3([0 v1(1)],[0 v1(2)],[0 v1(3)],'k','linew',3)
plot3([0 v2(1)],[0 v2(2)],[0 v2(3)],'k','linew',3)
plot3([0 v3a(1)],[0 v3a(2)],[0 v3a(3)],'r--','linew',3)

% make the plot look a bit nicer
xlabel('R_1'), ylabel('R_2'), zlabel('R_3')
axis square
grid on, rotate3d on, hold on
title('')

% conjugate transpose
% create a complex number
z = complex(3,4);

% magnitude
norm(z)

% by transpose? (3 + 4i)(3 + 4i) = -7 + 24i
transpose(z)*z  

% by Hermitian transpose (3 - 4i)(3 + 4i) = 25
z'*z  

% not the Hermitian
% z.' is the regular transpose - (3 + 4i)(3 + 4i) = -7 + 24i
z.'*z 

% complex vector
v = [ 3 4i 5+2i complex(2,-5) ];
v'     % Hermitian transpose
v.'    % regualr transpose - same as the original complex
transpose(v)  % regualr transpose - same as the original complex

% Interpreting and creating unit vectors
% vector
v1 = [ -3 6 ];

% mu
mu = 1/norm(v1);

% plot them
figure(6), clf

% the main plotting lines:
plot([0 v1(1)],[0 v1(2)],'b','linew',2)
hold on
plot([0 v1(1)]*mu,[0 v1(2)]*mu,'r:','linew',4)

% this code just makes the plot look nicer
axis square
axis([ -1 1 -1 1 ]*norm(v1))
hold on
plot(get(gca,'xlim'),[0 0],'k--')
plot([0 0],get(gca,'ylim'),'k--')
xlabel('X_1 dimension')
ylabel('X_2 dimension')

% Span
% set S
S = [ [1 1 0]' [1 7 0]' ]; 

% vectors v and w
v = [1 2 0]';
w = [3 2 1]';

figure(6), clf, hold on
plot3([0 S(1,1)],[0 S(2,1)],[0 S(3,1)],'r','linew',3)
plot3([0 S(1,2)],[0 S(2,2)],[0 S(3,2)],'r','linew',3)

plot3([0 v(1)],[0 v(2)],[0 v(3)],'g','linew',3)
plot3([0 w(1)],[0 w(2)],[0 w(3)],'b','linew',3)

% draw the plane spanned by S
normvec = cross(S(:,1),S(:,2));
[X,Y] = meshgrid(-4:4,-4:4);
z = -(normvec(1)*X + normvec(2)*Y)/normvec(3);
surf(X,Y,z)
shading interp

axis square
grid on, rotate3d on










