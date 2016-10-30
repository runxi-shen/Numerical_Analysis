function lambdas = qralg(A)
[m,n] = size(A);
assert (m==n);
lambdas = zeros(1,m);
% matrix to contain the eigenvalues
mat = A;
for i = m:-1:2
    mat = qralg_one(mat);
    eval = mat(i,i);
    lambdas(5-i) = eval;
    mat = mat(1:i-1, 1:i-1);
end
lambdas(n) = mat(1,1);

fid=fopen('result.txt','w');
fprintf(fid, 'Eigenvalues for matrix hilb(4): \n');
fprintf(fid, '%f \n', lambdas');
fclose(fid);
