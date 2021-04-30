x = [2.5,2.0,3.0,1.5,3.5,1.0,4.0,0.5,4.5,0.0,5.0];
y = [0.68,0.66,0.90,0.79,1.31,1.02,1.77,1.30,1.87,1.50,1.33];
ay = [0.70,0.74,0.94,0.79,1.34,1.05,1.78,1.33,1.87,1.49,1.31];

 matirx = DividedDiff(x,y)                 
 matirxApproximate = DividedDiff(x,ay)
  
 nestedForm = @(x) NestedForm(matirx,x)
 nestedFormApproximate = @(xAp) NestedForm(matirxApproximate,xAp)
 
 coefficientNestedForm = matirx(1,2:columns(matirx))
 coefficientNestedFormAppro = matirxApproximate(1,2:columns(matirxApproximate))

## from here it's just on Matlsb caculation
 degree = length(x) -1;
 coeff = polyfit(x,y,degree);
 fun = @(x) polyval(coeff,x);
 fplot(nestedForm,[-0.1,5.1]);hold on;fplot(fun,[-0.1,5.1]);hold off
 
 ## answer for the last part :
 ## according to the deviation 0.04 the general behavior of the functions are almost the same , so we can conculde from that even with
 ## some noised we still can calculate the real function
 
