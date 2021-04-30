## Copyright (C) 2021 Mah
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} DividedDiff (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Mah <mah@HP>
## Created: 2021-04-27

function px = DividedDiff (x,y);
 fxx = @(i) (y(i+1)-y(i))/( x(i+1)-x(i) );   
 px = NaN(columns(x),columns(x)+1)
 
 for (i=1 : columns(x)-1);
    px(i,1) = x(i);  
    px(i,2) = y(i);
    px(i,3) = fxx(i); 
 endfor
 
 
endfunction
