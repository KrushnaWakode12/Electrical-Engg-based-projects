disp('TRANSFORMER')
disp('1.For single phase transformer')
disp('2.For three phase transformer')
q=input('Select the choice: ');
switch q
    case 1
disp('For Single Phase Transformer')
disp('Select choice : 1. EMF Equation')
 disp('2. Transformer Parameters')
 disp('3. Voltage Regulation')
 disp('4. Efficiency of transformer')
 disp('5. Load sharing ')
 disp('6. Open and Short circuit test ')
t=input('Select the choice: ');
switch t
    case 1
disp('to find: ')
disp('1.emf per turn')
disp('2.emf')
disp('3.frequency')
disp('4.flux')
disp('5.turns')
a=input('select your choice: ');
switch a
    case 1
        f=input('frequency: ')
    P=input('flux: ')
    e=4.44*f*P
    disp('E.M.F per turn is: ')
    e
case 2
    F=input('frequency: ')
    P=input('flux: ')
    N=input('turns: ')
    E=4.44*N*F*P
    disp('EMF is: ')
    E
case 3
    e=input('e.m.f: ')
    P=input('flux: ')
    N=input('turns: ')
    F=e/(4.44*P*N)
    disp('frequency is: ')
    f
    case 4
        f=input('frequency: ')
    N=input('turns: ')
    e=input('EMF: ')
    P=e/(4.44*f*N)
    disp('flux is: ')
    P
    case 5
        e=input('EMF: ')
    P=input('flux: ')
    f=input('frequency: ')
    N=e/(4.44*f*P)
    disp('turns are: ')
    N
    otherwise
    disp('Sorry !!! Please make correct choice')
end
    case 2
        disp('Calculations of equivalent parameters of transformer as reffered to primary and secondary ')
R1=input('Input Primary resistance: ')
R2=input('Input secondary resistance: ')
X1=input('Input Primary reactance: ')
X2=input('Input Primary reatance: ')
 K=input('Input Transmission ratio: ')
 disp('Make choice : 1. equvalent parameters reffered to primary;  2. equvalent parameters reffered to secondary ')
a=input('choice: ');
switch a
    case 1 
        R21=(R2)/(K^2)
        X21=(X2)/(K^2)
        R01=(R1)+(R21)
        X01=(X1)+(X21)
        Z01=sqrt(((R01)^2)+((X01)^2))
        disp('equivalent resistance reffered to primary')
        R01
        disp('equivalent reactance reffered to primary')
        X01
        disp('equivalent impedance reffered to primary')
        Z01
    case 2
        R12=(R2)*(K^2)
        X12=(X2)*(K^2)
        R02=(R1)+(R12)
        X02=(X1)+(X12)
        Z02=sqrt(((R02)^2)+((X02)^2))
        disp('equivalent resistance reffered to secondary')
        R02
        disp('equivalent reactance reffered to secondary')
        X02
        disp('equivalent impedance reffered to primary')
        Z02
    otherwise
        disp('Sorry !!! Please make correct choice')
end
case 3
disp('voltage regulation of a single phase transformer')
disp('1:for no load and full voltages')
disp('2:for lagging power factor')
disp('3:for leading power factor')
a=input('enter your selection: ');
switch a
case 1
    E0=input('enter the value of terminal voltage at no load: ')
   v2=input('enter the value of terminal voltage at full load: ')
    disp('voltage regulation=(E0-v2)/v2*100')
    voltage_regulation=((E0-v2)/v2)*100;
    disp('The voltage regulation is: ')
    voltage_regulation
case 2
    v2=input('terminal voltage at full load: ')
    r=input('enter the value of resistance: ')
    x=input('enter the value of reactance: ')
    i2=input('enter the value of current: ')
    pf=input('enter the value of power factor: ')
    rpf=input('enter the value of reavtive power factor: ')
    disp('voltage_regulation=i2*r*pf+i2*x*rpf)/v2')
    voltage_regulation=(i2*r*pf+i2*x*rpf)/v2;
    disp('The voltage regulation is: ')
    voltage_regulation
case 3 
    v2=input('terminal voltage at full load: ')
    r=input('enter the value of resistance: ')
    x=input('enter the value of reactance: ')
    i2=input('enter the value of current: ')
    pf=input('enter the value of power factor: ')
    rpf=input('enter the value of reavtive power factor: ')
    disp('voltage_regulation=i2*r*pf+i2*x*rpf)/v2')
    voltage_regulation=(i2*r*pf-i2*x*rpf)/v2;
    disp('The voltage regulation is: ')
    voltage_regulation
otherwise
        disp('Sorry !!! Please make correct choice')
end
case 4
disp('Based on efficiency of transformers')
disp('To find:')
disp('1.Efficiency')
disp('2.Losses')
disp('3.Power factor')
a=input('Select the choice: ');
switch(a)
case 1
x=input('Load ratio: ')
kva=input('Full load kva rating: ')
pf=input('Power factor: ')
loss=input('Total loss: ')
n=(x*kva*pf)/((x*kva*pf)+loss)
pn=n*100
disp('Efficiency is: ')
n
disp('Pecentage efficiency is: ')
pn
case 2
x=input('Load ratio: ')
kva=input('Full load kva rating: ')
pf=input('Power factor: ')
n=input('Efficiency: ')
loss=((x*kva*pf)/n)-(x*kva*pf)
disp('Total loss in system is: ')
loss
case 3
x=input('Load ratio: ')
kva=input('Full load kva rating: ')
loss=input('Total loss: ')
n=input('Efficiency: ')
pf=(((x*kva)+loss)*n)/(x*kva)
disp('Power factor is: ')
pf
otherwise
disp('Sorry !!! Please make correct choice')
end
case 5
disp('Based on parallel operation of transformers, on load sharing')
disp('Whether: ')
disp('1.Parameters in polar form')
disp('2.Parameters in rectangular form')
a=input('Select the choice: ');
switch(a)
case 1
s=input('Total load: ')
d=input('Load phase angle: ')
z=input('Total impedence: ')
x=input('Resultant phase angle: ')
a=input('Given impedence: ')
b=input('Given phase impedence: ')
value=a*s/z
angle=b-x+d
disp('So, the load shared is: ')
value
disp('at the phase angle of: ')
angle
case 2
s=input('Total load: ')
z=input('Total impedence: ')
a=input('Given impedence: ')
value=s*a/z
disp('So, the load shared is: ')
value
otherwise
       disp('Sorry !!! Please make correct choice')
end
case 6
disp('To determine calculations of circuit test')
disp('for: ')
disp('1.Open circuit test')
disp('2.Short circuit test')
a=input('Select the choice: ');
switch a
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
       disp('Sorry !!! Please make correct choice')
end
otherwise
       disp('Sorry !!! Please make correct choice')
end
    case 2
        disp('Three phase transformers')
        disp('Based on 3 to 2 phase conversion or Scott connection')
disp('To find:')
disp('1.Primary teaser current')
disp('2.Secondary teaser current')
disp('3.Main Transformation ratio')
disp('4.Teaser transformation ratio')
disp('5.Primary main current')
a=input('Select the choice: ');
switch a
case 1
disp('1.Using main transformation ratio')
disp('2.Using teaser transformation ratio ')
b=input('Choose: ')
switch b
case 1
W=input('Power used on secondary side of teaser transformer: ')
V=input('Working voltage: ')
cos_x=input('Power factor: ')
k=input('Main transformation Ratio: ')
I2t=W/(V*cos_x)
I1t=(1.15*k)*I2t
disp('Primary teaser current is: ')
I1t
case 2
W=input('Power used on secondary side of teaser transformer: ')
V=input('Working voltage: ')
cos_x=input('Power factor: ')
k=input('Teaser transformation Ratio: ')
I2t=W/(V*cos_x)
I1t=(k*I2t)
disp('Primary teaser current is: ')
I1t
otherwise
disp('Wrong choice')
end
case 2
    I1t=input('Primary teaser current: ')
    k=input('Teaser Transformer ratio: ')
    I2t=(I1t/k)
    disp('Secondary teaser current is: ')
    I2t
    case 3
        I1t=input('Primary teaser current: ')
        I2t=input('Secondary teaser current: ')
        k=I1t/(1.15*I2t)
        disp('Main transformer ratio is: ')
        k
    case 4
        I1t=input('Primary teaser current: ')
        I2t=input('Secondary teaser current: ')
        k=(I1t/I2t)
        disp('Teaser transformation ratio is: ')
        k
    case 5
        w=input('Power used on secondary side of teaser transformer: ')
        v=input('Working voltage: ')
        cos_x=input('Power factor of teaser transformer: ')
        W=input('Power used on secondary side of main transformer: ')
        V=input('Working voltage: ')
        cos_y=input('Power factor of main transformer: ')
        k=input('Main transformation Ratio: ')
        I2t=w/(v*cos_x)
        I2m=W/(V*cos_y)
        I1m=sqrt(((k*(I2m))^2)+((0.575*k*(I2t))^2))
        disp('Primary main current is: ')
        I1m
    otherwise
        disp('Wrong choice')
end
otherwise
        disp('Wrong choice')
end