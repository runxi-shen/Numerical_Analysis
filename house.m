function [W,R] = house(A)
[m, n] = size(A);
R = A;
for k = 1:n
  x = R(k:m,k);
  e1 = zeros(length(x),1); 
  e1(1) = 1;
  u = -sign(x(1))*norm(x)*e1 - x;
  u = u/norm(u);
  R(k:m, k:n) = R(k:m, k:n) -2*u*u'*R(k:m, k:n);
  W(k:m,k) = u;
end