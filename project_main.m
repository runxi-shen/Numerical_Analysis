f1 = @(x) (x + 3)*(x - 1)^4

f2 = @(x) cos(x^2) - 1/2 * x

% use Brent's Method to calculate the root of both functions
[p1 as1 bs1 cs1] = Brent(f1, -4, 4/3, 10^-15)
[p2 as2 bs2 cs2] = Brent(f2, 0, 2, 10^-15)

% use Bisection Method to calculate the root of both functions
p1_Bisection = bisection(f1, -4, 4/3, 10^-15)
p2_Bisection = bisection(f2, 0, 2, 10^-15)

% use fzero function to calculate "ground truth" solution p_hat
p1_fzero = fzero(f1, [-4; 4/3])
p2_fzero = fzero(f2, [0; 2])

% get the function of error for f1 and f2 in Brent's Method
p1_error_br = abs(bs1 .- p1_fzero)
p2_error_br = abs(bs2 .- p2_fzero)

% get the function of error for f1 and f2 in Bisection Method
p1_error_bi = abs(p1_Bisection .- p1_fzero)
p2_error_bi = abs(p2_Bisection .- p2_fzero)


## The following plotting functions are used to plot the 
## function of error using command lines in the console.

% plot the function of error for f1 and f2 in Brent's Method
%x1 = 0:1:(size(p1_error_br)(2))-1;
%semilogy (x1, p1_error_br);

%x2 = 0:1:(size(p2_error_br)(2))-1;
%semilogy (x2, p2_error_br);

% plot the function of error for f1 and f2 in Bisection Method
%x3 = 0:1:(size(p1_error_bi)(2))-1;
%semilogy (x3, p1_error_bi);

%x4 = 0:1:(size(p2_error_bi)(2))-1;
%semilogy (x4, p2_error_bi);




