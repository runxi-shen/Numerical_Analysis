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
## @deftypefn {Function File} {@var{retval} =} fixedPoint (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Wesley <Wesley@WESLEYPC>
## Created: 2016-04-20

% function fixedPoint calculates the root of function f by fixedPoint method
% arguments: 
% f: the function needed to be calculate the roots
% p0: the initial root approximation
% e: the precision wanted for the root
% return: a list of the approximated roots for function f
function pIter = fixedPoint (g, p0, err)
x = p0;
iter = 0;
% create an array with all zero entries to store the approximated roots of f
pIter = zeros(1, 20);
gx = g(x);
e = abs(x - gx);

% updata the approximated roots in the roots' array
while(e > err)
  iter = iter + 1;
  x = gx;
  pIter(iter) = x;
  gx = g(x);
  e = abs(x - gx);
end

endfunction
