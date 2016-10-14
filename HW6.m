% problem 1
f1 = @(x) e^(x/3) + x^3
f_x0 = three_endpoint(f1, 1.0, 1.05, 1.10, 0.05)
f_x1 = three_midpoint(f1, 1.0, 1.10, 0.05)
f_x2 = three_midpoint(f1, 1.05, 1.15, 0.05)
f_x3 = three_endpoint(f1, 1.05, 1.10, 1.15, 0.05)