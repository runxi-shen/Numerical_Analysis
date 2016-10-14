## Copyright (C) 2016 Runxi Shen
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
## @deftypefn {Function File} {@var{retval} =} Brent (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Runxi Shen
## Created: 2016-05-04

function [p as bs cs] = Brent (f, a, b, epsilon)
% record the values of a, b in iterations
as = [a]
bs = [b]

if (abs(f(a)) < abs(f(b)))
  % swap a and b
  temp = a;
  a = b;
  b = temp;
endif
% record the values of c in iterations
c = a;
cs = [c]

flag = true;
sigma = epsilon*max(1, abs(b));
while (abs(f(b)) > epsilon || abs(b-a) > sigma)
  if (abs(f(a)-f(c)) > epsilon && abs(f(b) - f(c)) > epsilon)
    s = a*f(b)*f(c)/((f(a)-f(b))*(f(a)-f(c))) + ...
        b*f(a)*f(c)/((f(b)-f(a))*(f(b)-f(c))) + ...
        c*f(a)*f(b)/((f(c)-f(a))*(f(c)-f(b)))        
  else
    s = b - f(b)*(b-a)/(f(b)-f(a));
  endif
  if (((s-(3*a+b)/4)*(s-b)>0 || (flag == true && abs(s-b)>=abs(b-c)/2)) || ...
     (flag == false && abs(s-b)>=abs(c-d)/2) || ...
     (flag == true && abs(b-c) < sigma) || ...
     (flag == false && abs(c-d) < sigma))
    s =  b + (a-b)/2;
    flag = true;
  else
    flag = false;
  endif
  d = c
  c = b
  if (f(a)*f(s) < 0)
    b = s
  else 
    a = s
  endif
  if (abs(f(a)) < abs(f(b)))
    t = a;
    a = b;
    b = t;
  endif
  sigma = epsilon*max(1, abs(b))
  bs(end+1) = b
  as(end+1) = a
  cs(end+1) = c
endwhile
p = b;

endfunction
