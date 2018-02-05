a=200; %Initialises value of a.
b=5; %Initialises value of b.
n=7; %Sets number of iterations.
nspan=[0:n]; %Generates vector of iterative steps.

x(1,1)=a; %Sets (1,1)-entry of vector x as a. 
x(1,2)=b; %Sets (1,2)-entry of vector x as b.

for i=1:n
    [s,t]=agm(x(i,1),x(i,2)); %Generates arithmetic and geometric mean of
                              %entries in previous row.
    x(i+1,1)=s; %Sets (i+1,1)-entry as arithmetic mean of x(i,1) and x(i,2).
    x(i+1,2)=t; %Sets (i+1,2)-entry as geometric mean of x(i,1) and x(i,2).
end

plot(nspan,x) %Generates plot of trajectories.