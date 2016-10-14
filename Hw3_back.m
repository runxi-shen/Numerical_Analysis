# Question S5
%f5 = @(x) exp(x) - 3*x.^2
%f5_der = @(x) e^x - 6*x
p5_bi = bisection(f5, 0, 1, 10^-3)

