% Author: Mah <mah@HP>
% Created: 2021-04-30

function finalequation = NestedForm (matrix,x)
 
  numCol = columns(matrix);
  finalequation = matrix(1,numCol);
  
  while (numCol~=2)
  finalequation = matrix(1,numCol-1) + ( finalequation *(x-matrix(numCol-2,1)));
  numCol = numCol-1;
  end
 endfunction
