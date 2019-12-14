clc
disp('to find:')
disp('1.emf per turn')
disp('2.emf')
disp('3.frequency')
disp('4.flux')
disp('5.turns')
a=input('select your choice')
if(a==1)
    f=input('frequency:')
    Pm=input('flux:')
    e=4.44*f*Pm
    disp('E.M.F per turn is:')
    e
elseif(a==2)
    F=input('frequency:')
    Pm=input('flux:')
    N=input('turns:')
    E=4.44*N*F*Pm
    disp('EMF is:')
    E
elseif(a==3)
    e=input('e.m.f:')
    Pm=input('flux')
    N=input('turns:')
    F=e/(4.44*Pm*N)
    disp('frequency is:')
    f
elseif(a==4)
    f=input('frequency')
    N=input('turns:')
    e=input('EMF:')
    Pm=e/(4.44*f*N)
    disp('flux is:')
    Pm
elseif(a==5)
    e=input('EMF:')
    Pm=input('flux:')
    f=input('frequency:')
    N=e/(4.44*f*Pm)
    disp('turns are:')
    N
else
    disp('wrong input')
end

    

    
    
