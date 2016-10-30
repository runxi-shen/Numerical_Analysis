function x = lsq_normaleq(epsilon)
A = [1 1 1; epsilon 0 0; 0 epsilon 0; 0 0 epsilon];
b = [1; 0; 0; 0];
% Cholesky can't be applied to 10^-8 and 10^-16 conditions since the matrix
% is not positive definite anymore
L = chol(A'*A);
z = zeros(3,1);
% L'*z = A'*b
for i = 1:3
  Ab = A' * b;
  Lt = L';
  z(i) = (Ab(i) - Lt(i, :)*z)/Lt(i,i);
end
% L*beta = z
x = zeros(3,1);
for i=3:-1:1
   x(i) = ( z(i) - L(i, :)*x )/L(i, i);
end