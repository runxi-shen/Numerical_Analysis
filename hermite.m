## Copyright (C) 2016 Wesley
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} hermite (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Wesley <Wesley@WESLEYPC>
## Created: 2016-05-11

% function hermite(x, f, df) takes the x values, f(x) values and f'(x) values
% return an array of coefficients Hermite interpolating polynomials
function [retval] = hermite (x, f, df)
n = size(x)(2)
Q = zeros(2*n, 2*n)
z = zeros(1, n)

for i = 1: n
  z(2*i-1) = x(i)
  z(2*i)  = x(i)
  Q(2*i-1,1) = f(i)
  Q(2*i, 1) = f(i)
  Q(2*i, 2) = df(i)
  if (i != 1)
    Q(2*i-1, 2) = (Q(2*i-1,1)-Q(2*i-2,1))/(z(2*i-1)-z(2*i-2))
  endif
endfor

for j = 3: 2*n
  for k = j: 2*n
    Q(k,j) = (Q(k,j-1)-Q(k-1,j-1))/(z(k)-z(k-j+1))
  endfor
endfor

retval = zeros(1, 2*n)
for i = 1:2*n
  for j = 1:2*n
    if (i == j)
      retval(i) = Q(i, j)
    endif
  endfor
endfor
endfunction
