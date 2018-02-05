function [an,bn]=agmsimp(a,b,n)
%This function finds the simplest value of the arithmetic-geometric mean
%for two real or complex numbers a and b and outputs a vector of the values
%in the sequence.
an(1)=a; %Sets first entry of vector an as a.
bn(1)=b; %Sets first entry of vector bn as b.

for j=1:n %Runs from 1 to n iterations.
     [s,t]=agmc(an(j),bn(j)); %Calculates agm of jth entris of an and bn.
     an(j+1)=s; %Sets entry an(j+1) as arithmetic mean of an(j) and bn(j).
     bn(j+1)=t; %Sets entry bn(j+1) as geometric mean of an(j) and bn(j).
         if (abs(s-t)<=abs(s+t))||(abs(s-t)==abs(s+t)&&imag(t/s)>0) %This
             %condition checks if the value t is the right choice for b_n.
             bn(j+1)=t; %If t is the right choice, we assign t to bn(j+1).
         else
             bn(j+1)=-t; %If t is not the right choice then -t is, and is 
             %assigned to bn(j+1).
         end
end
end