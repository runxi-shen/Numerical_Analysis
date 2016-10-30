function make_plot(A, sigma)
[U1 lambda1] = power_method(A);
[U2 lambda2] = inverse_iteration(A, sigma);
[V D] = eig(A);
v = V(:,end);

[m1, t1] = size(U1);
[m2, t2] = size(U2);
d_power = bsxfun(@minus, U1, v);
d_power = sqrt(sum(d_power.^2));
d_inverse = bsxfun(@minus, U2, v);
d_inverse = sqrt(sum(d_inverse.^2));
semilogy(1:t1, d_power(1:t1), 'o-');
hold on;
semilogy(1:t2, d_inverse(1:t2), 'r:');
legend('power method', 'inverse iteration');
xlabel('Iteration steps');
ylabel('Error');
title('Comparison of power method and inverse iteration');


