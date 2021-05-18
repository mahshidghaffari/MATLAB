%% Author: Mah <mah@HP>
%% Created: 2021-05-17

function SimpsonAns = Simpson (a,b,f)
  n=40;
  h = (b-a)/n;
  x = zeros (1,n+1);
  y = zeros (1,n+1);
  sy = zeros (1,n+1);
  for i = 1:n+1 
    x(i) = a + (i-1)*h;
    y(i) = f(x(i));
    
    if i == 1 || i == n+1
      sy(i) = y(i);
    elseif mod(i,2) == 0
      sy(i) = y(i) * 4;
    else
      sy(i) = y(i) *2;
    end
  
  end
  
 SimpsonAns  = sum( sy ) * (h/3);
end
