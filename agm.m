function[u,v]=agm(a,b)
%This function simply outputs a 1x2 matrix with the first entry being the
%arithmetic mean of a and b and the second entry the geometric mean

if a<=0|b<=0;
    error('agm:argchk','Both arguments must be positive real numbers')
else if a<b
    error('agm:argchk', 'First argument must be >= second argument')
end
u=(a+b)/2; %Calculates arithmetic mean
v=sqrt(a*b); %Calculates geometric mean
end