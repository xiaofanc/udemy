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















