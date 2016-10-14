% Question S2
g1 = @(x) ((2 - x.^4)/3)^0.5;
p1 = fixedPoint(g1, 1, 10^-3)
display(p1)

%Program can't run because it will take the 4th root of a negative number
%g2 = @(x) (2 - 3*x.^2)^0.25;
%p2 = fixedPoint(g2, 1, 10^-3);
%display(p2);

g3 = @(x) (2-x.^4)/(3*x);
p3 = fixedPoint(g3, 1, 10^-3)

%Program will run into a infinite loop, as the all the p's will be alternating
%between 1 and -1. 
%g4 = @(x) ((2-3*x.^2)/x)^(1/3);
%p4 = fixedPoint(g4, 1, 10^-3);
%display(p4);

% Question S3 
f3 = @(x) x.^3 - 2;
% derivative of f3
f3_der = @(x) 3*x.^2;
% use Newton's method to solve function
% since we find the interval for initial approximation of p0 to be [1,2]
% here I choose to use 1.5 as the initial starting point
p3 = newton (f3, f3_der, 1.5, 10^-3)

% Question S5
f5 = @(x) exp(x) - 3*(x.^2);
% derivative of f5
f5_der = @(x) exp(x) - 6*x;
% use Bisection method to solve the function
p5_bi = bisection (f5, 0, 1, 10^-3)
% use Newton's method to solve the function
p5_newton = newton(f5, f5_der, 0.5, 10^-3)
