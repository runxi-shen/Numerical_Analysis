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
## @deftypefn {Function File} {@var{retval} =} expansion (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Wesley <Wesley@WESLEYPC>
## Created: 2016-04-04

function f1 = expansion (x)
  f1 = 64-192*x+240*x^2-160*x^3+60*x^4-12*x^5+x^6
endfunction
