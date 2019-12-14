clc
disp('Calculations of equivalent parameters of transformer as reffered to primary and secondary ')
R1=input('Input Primary resistance')
R2=input('Input secondary resistance')
X1=input('Input Primary reactance')
X2=input('Input Primary reatance')
 K=input('Input Transmission ratio')
 disp('Make choice : 1. equvalent parameters reffered to primary; 2. equvalent parameters reffered to secondary ')
a=input('choice')
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
        
        
        
        
        
        
    

