function [U, lambda] = inverse_iteration(A, sigma)
[m, n] = size(A);
assert(m == n);
maxiter = 1000;
U = zeros(n, maxiter);
U(:,1) = rand(n,1);
U(:,1) = U(:,1)/norm(U(:,1));
for iter = 2 : maxiter
    U(:,iter-1) = U(:,iter-1)/norm(U(:,iter-1));
    U(:,iter) = (A - sigma*eye(n,n))\U(:,iter-1);
    theta = U(:,iter)'*U(:,iter-1);
    if norm(U(:,iter)-theta*U(:,iter-1)) <= 1e-8*abs(theta)
        lambda = sigma + 1/theta;
        U(:,iter) = U(:,iter)/norm(U(:,iter));
        U( :, ~any(U,1) ) = [];
        break;
    end
end
