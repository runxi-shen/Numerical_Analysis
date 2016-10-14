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
## @deftypefn {Function File} {@var{retval} =} three_endpoint (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Wesley <Wesley@WESLEYPC>
## Created: 2016-05-17

function [retval] = three_endpoint (f, x0, x1, x2, h)
retval = 1/(2*h)*(-3*f(x0)+4*f(x1)-f(x2))+h^2/3*6
endfunction
