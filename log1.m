for i=2:n %Runs loop from 2 to n
    su=0; %Initialises sum as zero
    for j=2:i %Runs over entries in third column of matrix x
        su=su+(2^j)*x(j,3); %Calculates the sum from the denominator of the
                     %equation for pi as the number of iterations increases
    end
    pa=4*x(j,1)^2/(1-su); %Estimates pi using the (i+1)th entry in first
                          %column of x as M(1,1/sqrt(2))
    y(i-1,1)=abs(pi-pa); %Calculates absolute error of pa
    pn=4*x(j,2)^2/(1-su); %Estimates pi using the (i+1)th entry in second
                         %column of x as M(1,1/sqrt(2))
    y(i-1,2)=abs(pi-pn); %Calculates absolute error of pn
end

plot([1:4],log(y(:,1)),'+',[1:4],log(y(:,2)),'x') %Generates plot