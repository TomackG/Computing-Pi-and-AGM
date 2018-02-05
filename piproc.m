a=1; %Sets a as 1. 
b=1/sqrt(2); %Sets b as 1.
i=1; %Sets i as 1.
eps=10^(-15); %Sets the size of the error.
s=1; %Initialises s.
t=2; %Initialises t.

x(1,1)=a; %Sets (1,1)-entry of x as a.
x(1,2)=b; %Sets (1,2)-entry of x as b.
x(1,3)=(a^2-b^2); %Sets (1,3)-entry of x as a^2-b^2=c_0^2.

while abs(s-t)>=eps %Loops while the absolute difference between means is 
                    %greater than eps.
    [s,t]=agm(x(i,1),x(i,2)); %Generates arithmetic mean (s) and geometric.
                              %mean (t) of x(i,1) and x(i,2).
    x(i+1,1)=s; %Sets (i+1,1)-entry of x as s.
    x(i+1,2)=t; %Sets (i+1,2)-entry of x as t.
    x(i+1,3)=(x(i+1,1)^2-x(i+1,2)^2); %Calculates c_(i+1).
    i=i+1; %Increments i by 1, counting the number of iterative steps.
end
n=i; %Sets n as number of iterations

su=0; %Initialises sum as zero.

for i=2:n %Runs over rows of x.
   su=su+(2^(i))*x(i,3); %Sums 2^(i+1)*x(i+1,3) over i.
end

p=4*x(n,1)^2/(1-su) %Approximates pi using formula.