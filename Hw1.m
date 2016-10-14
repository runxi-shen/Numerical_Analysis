xrange = linspace(1.95, 2.05, 11)

for n = 1:11
  xrange(n) = single(xrange(n));
endfor

polymo = zeros(1,11)

for n = 1:11
 polymo(n) = single(polynom(xrange(n)));
endfor

expo = zeros(1,11)
for n = 1:11
  expo(n) = single(expansion(xrange(n)));
endfor

display("\nValues calculated by polynomial:")

for n = 1:11
 fprintf("%.8g \n", polymo(n));
endfor

display("\nValues calculated by expansion:")

for n = 1:11
 fprintf("%.8g \n", expo(n));
endfor

plot(xrange, polymo, 'bd', xrange, expo, 'ro', 'MarkerSize', 8)

quit()

