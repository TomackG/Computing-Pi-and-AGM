function[u,v]=agmc(a,b)
%This function simply outputs a 1x2 matrix with the first entry being the
%arithmetic mean of a and b and the second entry the geometric mean.
u=(a+b)/2; %Calculates arithmetic mean.
v=sqrt(a*b); %Calculates geometric mean.
end