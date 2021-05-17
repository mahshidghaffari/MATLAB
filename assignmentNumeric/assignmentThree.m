% mahshid ghaffari , i6255201 , assignment three

f = @(x) cos(2*x)/(3 + 2*sin (x));



k = 6;
[ca,cb] = FourierCoef(f,k);

check = @(x) ca(1)/2 + ca(2)*cos(x) + cb(1)*sin(x) + ca(3)*cos(2*x)+ cb(2)*sin(2*x)+ ca(4)*cos(3*x)+ cb(3)*sin(3*x);
check = check(2);


[ca1,cb1] = FourierCoef(f,1);
[ca2,cb2] = FourierCoef(f,2);
[ca3,cb3] = FourierCoef(f,3);
[ca4,cb4] = FourierCoef(f,4);
[ca5,cb5] = FourierCoef(f,5);
[ca6,cb6] = FourierCoef(f,6);

SF1 = TrigonometricPolynomial(ca1,cb1)
SF2 = TrigonometricPolynomial(ca2,cb2)
SF3 = TrigonometricPolynomial(ca3,cb3)
SF4 = TrigonometricPolynomial(ca4,cb4)
SF5 = TrigonometricPolynomial(ca5,cb5)
SF6 = TrigonometricPolynomial(ca6,cb6)

fplot(SF1);hold on;fplot(SF2);hold on;fplot(SF3);hold off;
Error1 = Simpson(-pi,pi,@(x) (f(x)-SF1(x))^2)
Error2 = Simpson(-pi,pi,@(x) (f(x)-SF2(x))^2)
Error3 = Simpson(-pi,pi,@(x) (f(x)-SF3(x))^2)
Error4 = Simpson(-pi,pi,@(x) (f(x)-SF4(x))^2)
Error5 = Simpson(-pi,pi,@(x) (f(x)-SF5(x))^2)
Error6 = Simpson(-pi,pi,@(x) (f(x)-SF6(x))^2)





