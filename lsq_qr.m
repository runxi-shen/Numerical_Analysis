function x = lsq_qr(epsilon)
A = [1 1 1; epsilon 0 0; 0 epsilon 0; 0 0 epsilon];
b = [1; 0; 0; 0];
[W, R] = house(A);
q = eye(4);
for i = 3:-1:1
  v = W(i:4,i);
  I = eye(4-i+1);
  m = I - 2*(v*v')/(v'*v);
  Q = eye(4);
  Q(i:4, i:4) = m;
  q = Q' * q;
end
x = zeros(3,1);
% back forward substitution
b = q' * b;
for i=3:-1:1
   x(i) = ( b(i) - R(i, :)*x)/R(i, i);
end