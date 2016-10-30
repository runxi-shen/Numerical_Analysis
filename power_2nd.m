function [U, lambda] = power_2nd(A, u1)
[m, n] = size(A);
assert(m == n);
maxiter = 10000;
[U1, lambda1] = power_method(A);
% get a new matrix to compute 2nd larget eval
B = A - lambda1*(u1*u1');
U = zeros(n, maxiter);
U(:,1) = rand(n,1);
U(:,1) = U(:,1) - (u1'*U(:,1)) * u1;
for iter = 2:maxiter
    U(:,iter) = B * U(:, iter-1);
    n = norm(U(:,iter));
    U(:,iter) = U(:, iter)/norm(U(:,iter));
    if norm(U(:,iter) - U(:,iter-1)) < 1e-8
        lambda = n;
        U( :, ~any(U,1) ) = [];
        break;
    end
end