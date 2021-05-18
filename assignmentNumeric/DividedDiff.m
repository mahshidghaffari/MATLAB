% Author: Mah <mah@HP>
% Created: 2021-04-27

function px = DividedDiff (x,y)
 px = NaN(length(x),length(x)+1);
 space = 1;
 fxx = @(row,col,px,space) (px(row+1,col-1)-px(row,col-1))/( x(row+space)-x(row));  
 
 %filling the first two col with inputs
 for i=1 : length(x)
    px(i,1) = x(i);  
    px(i,2) = y(i);
 end
 
<<<<<<< HEAD
 ## using the divided diffrence for caculates other cols
 rowReduce =  columns(x)-1;
 for (a=3 : columns(x)+1);  # a = numbers of col
   for(b=1 : rowReduce); # b = number of row
=======
 % using the divided diffrence for caculates other cols
 rowReduce =  length(x)-1;
 for a=3 : length(x)+1  % a = numbers of col
   for b=1 : rowReduce % b = number of row
>>>>>>> 40f7f343163cf92d5c2ee6763a5dbac9daa16fd7
   px(b,a) = fxx(b,a,px,space);
   end
  space = space+1;
  rowReduce = rowReduce-1; 
 end
 
end
