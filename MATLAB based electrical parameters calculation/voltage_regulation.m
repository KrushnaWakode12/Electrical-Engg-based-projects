disp('voltage regulation of a single phase transformer')
disp('1:for no load and full voltages')
disp('2:for lagging power factor')
disp('3:for leading power factor')
a=input('enter your selection: ')
switch a
case 1
    E0=input('enter the value of terminal voltage at no load: ')
   v2=input('enter the value of terminal voltage at full load: ')
    disp('voltage regulation=(E0-v2)/v2*100')
    v_r=((E0-v2)/v2)*100;
    disp('The voltage regulation is: ')
    v_r
case 2
    v2=input('terminal voltage at full load: ')
    r=input('enter the value of resistance: ')
    x=input('enter the value of reactance: ')
    i2=input('enter the value of current: ')
    pf=input('enter the value of power factor: ')
    rpf=input('enter the value of reavtive power factor: ')
    disp('voltage_regulation=i2*r*pf+i2*x*rpf)/v2')
    v_r=(i2*r*pf+i2*x*rpf)/v2;
    disp('The voltage regulation is: ')
    v_r
case 3 
    v2=input('terminal voltage at full load: ')
    r=input('enter the value of resistance: ')
    x=input('enter the value of reactance: ')
    i2=input('enter the value of current: ')
    pf=input('enter the value of power factor: ')
    rpf=input('enter the value of reavtive power factor: ')
    disp('voltage_regulation=i2*r*pf+i2*x*rpf)/v2')
    v_r=(i2*r*pf-i2*x*rpf)/v2;
    disp('The voltage regulation is: ')
    v_r
end
    