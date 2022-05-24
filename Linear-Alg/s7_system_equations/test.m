% these are the coefficients of the equation:
% az = bx + cy + d;
eq1o = [1 2 3 -1]; % [a b c d]
eq2o = [2 1 3 3];


figure(2), clf

for i=1:10
    
    % randomly update equations
    eq1 = eq1o + randn*eq2o;
    eq2 = eq2o + randn*eq1o;
    
    X = [eq1(1:3);eq2(1:3)];
    b = [eq1(4);eq2(4)];
    s(:,i) = X\b;

    % plot new lines (solutions)
%     cla
    h(1) = fplot3(@(x)x, @(x) (x*eq1(2)+eq1(4))/eq1(1), @(x) (x*eq1(3)+eq1(4))/eq1(1), plotlim);
    hold on
    h(2) = fplot3(@(x)x, @(x) (x*eq2(2)+eq2(4))/eq2(1), @(x) (x*eq2(3)+eq2(4))/eq2(1), plotlim);
    set(h,'linew',3)
    axis(repmat(plotlim,1,3))
    
    % wait to allow visual inspection
%     pause(1)
end