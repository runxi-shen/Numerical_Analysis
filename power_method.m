function [ U, lambda ] = power_method( A )
[m,n] = size(A);
assert(m == n);
maxiter = 100;
U = zeros(n, 100);
U(:,1) = rand(n, 1);
U(:,1) = U(:, 1)/norm(U(:,1));
for iter = 2:maxiter
    U(:,iter) = A * U(:, iter-1);
    n = norm(U(:,iter));
    U(:,iter) = U(:, iter)/norm(U(:,iter));
    if norm(U(:,iter) - U(:,iter-1)) < 1e-8
        lambda = n;
        U( :, ~any(U,1) ) = [];
        break;
    end
end


