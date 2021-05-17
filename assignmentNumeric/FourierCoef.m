
## Author: Mah <mah@HP>
## Created: 2021-05-17

function [ca,cb] = FourierCoef (f, n)
  
  for k=1:n+1
    ca(k) = (1/pi)*Simpson(-pi,pi,@(x) f(x) * cos((k-1)*x));
  
    if k != n+1
      cb(k) = (1/pi) * Simpson(-pi,pi,@(x) f(x) * sin((k)*x)); 
    end
    
  end
  
endfunction
