function Tnew = qralg_one(T)
[m, n] = size(T);
assert (m == n);
Tnew = T;
for k = 1:100
    sigma = Tnew(n,n);
    [Q,R] = qr(Tnew - sigma*eye(m));
    Tnew = R*Q + sigma*eye(m);
    if (abs(Tnew(n-1, n)) < 10e-12)
        break;
    end
end