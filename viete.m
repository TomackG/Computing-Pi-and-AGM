a=0; %Initialises a. 
n=4; %Sets number of iterations.
p=1; %Initialises p.

for i=1:n %Runs from 1 to n.
    a=sqrt(2+a); %Calculates a_i.
    p=p*a/2; %Calculates p_i.
    err(i)=abs(pi-1/(p/2)); %Calculates absolute error between pi and
                            %the estimate produced by the formula.
end

nspan=1:n %Generates vector of values from 1 to n.

plot(nspan,log(err),'x',[1:4],log(y(:,2)),'+') %Generates plot.