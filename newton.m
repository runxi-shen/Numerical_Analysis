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
## @deftypefn {Function File} {@var{retval} =} Newton (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Wesley <Wesley@WESLEYPC>
## Created: 2016-04-26

% function newton calculates the root of function f by Newton's method
% arguments: 
% f: the function needed to be calculate the roots
% f_der: the derivative of function f
% x0: the initial root approximation
% e: the precision wanted for the root
% return: the approximated root for function f
function [x e] = newton (f, f_der, x0, e)
  % calculate the next root by Newton's method formula
  xi = x0 - f(x0)/f_der(x0);
  % calculate the error
  epsilon = abs(xi - x0);
  % update the new root in each iteration
  while (epsilon > e)
    x = xi - f(xi)/f_der(xi);
    epsilon = abs(x - xi);
    xi = x;
  end
endfunction
