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
## @deftypefn {Function File} {@var{retval} =} bisection_project (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Runxi Shen
## Created: 2016-05-04

function [p] = bisection(f, a, b, epsilon)
% BISECTION finds a root of f between a and b, requiring that f(a)f(b)<0
% p is a sequence of approximations for the root 
fa = f(a); fb = f(b);
if sign(fa)*sign(fb) > 0
    error('the function values should have opposite signs at two ends');
end

delta = epsilon*max(1,abs(b));
iter = 1;
fs = f(a);
while abs(fs)>epsilon || abs(a-b)>delta
    s = a + (b-a)/2;
    fs = f(s);
    if sign(fs)*sign(fa)>0
        a = s;
        fa = fs;
    else
        b = s;
        fb = fs;
    end
    p(iter) = s;
    iter = iter + 1;
end
endfunction
