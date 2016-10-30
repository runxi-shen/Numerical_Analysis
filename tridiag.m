function T = tridiag(A)
[m, n] = size(A);
assert (m == n);
T = A;
for k = 1:n-2
  x = T(k+1:m,k);
  e1 = zeros(length(x),1); 
  e1(1) = 1;
  u = -sign(x(1))*norm(x)*e1 - x;
  u = u/norm(u);
  T(k+1:m, k:n) = T(k+1:m, k:n) -2*u*(u'*T(k+1:m, k:n));
  T(1:n, k+1:n) = T(1:n,k+1:n) - 2*(A(1:n,k+1:n)*u)*(u');
end