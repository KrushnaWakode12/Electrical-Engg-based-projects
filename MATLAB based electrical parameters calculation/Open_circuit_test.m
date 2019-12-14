disp('To determine calculations of circuit test')
disp('for: ')
disp('1.Open circuit test')
disp('2.Short circuit test')
a=input('Select the choice: ')
case 1
disp('calculations for open circuit test of a single phase transformer')
V1=input('enter the value of open circuit voltage(V1): ')
I0=input('enter the value of No load current(I0): ')
W0=input('enter the value of No load power(W0): ')
disp('now calculating no load power factor =(W0/V1*I0): ')
cos_x=(W0/(V1*I0));
cos_x
disp('now calculating working component of  no load current(Iw) =(I0*cos_x)')
Iw=(I0*cos_x);
Iw
disp('now calculating magnetising component of  no load current(Iu) =(I0*sin_x')
sin_x=sqrt(1-(cos_x*cos_x));
Iu=(I0*sin_x)
disp('now calculating R0')
R0=V1/Iw
disp('now calculating X0')
X0=V1/Iu
case 2
disp('calculations for short circuit test of a single phase transformer')
Vsc=input('enter the value of short circuit voltage(Vsc): ')
Isc=input('enter the value of short circuit current(Isc): ')
W=input('enter the value of power lost(W): ')
Z=(Vsc/Isc)
R=W/(Isc)^2
X=sqrt(((Z)^2)-((R)^2))
disp('The Short circuit parameters are: ')
disp(Z)
disp(R)
disp(X)
otherwise

end