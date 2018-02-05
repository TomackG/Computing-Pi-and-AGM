a=0; %Initialises a.
p=1; %Initialises p.
eps=10^(-15); %Sets size of absolute error.
i=1; %Initialises i.
est=0; %Initialises est.

while abs(pi-est)>=eps %This loops until the difference between pi
                       %and our estimate (est) is less than eps.
    a=sqrt(2+a); %This calculates each a_i.
    p=p*a/2; %This calculates the product in the formula.
    est=1/(p/2); %This calculates the estimate using the product p.
    i=i+1; %This counter keeps track of the number of iterations.
end