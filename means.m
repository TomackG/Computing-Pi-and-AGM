a=12+32*1i; %Sets value of a.
b=2-1i; %Sets value of b.
cmin=-400; %Sets minimum of range of c. 
cmax=400; %Sets maximum of range of c.
c=cmin:4:cmax; %Sets c as a vector of entries =0 (mod 4).
dmin=-403; %Sets minimum of range of d.
dmax=397; %Sets maximum of range of d.
d=dmin:4:dmax; %Sets d as a vector of entries =1 (mod 4) 

[mu1,mu2]=agmsimp(a,b,10); %Generates simplest value of a, b after 10 
                           %iterations.
mu=mu1(11); %Sets final entry of mu1 as value for mu.

[lam1,lam2]=agmsimp(a+b,a-b,10); %Generates simplest value of a+b, a- b 
                                 %after 10 iterations.
lam=lam1(11); %Sets final entry of lam1 as value for lambda.

x=zeros(length(c),length(d)); %Generates zero matrix for efficiency.
t13=zeros(length(c),length(d)); %Generates zero matrix for efficiency.

for j=1:length(c) %Runs over entries of c.
    for k=1:length(d) %Runs over entries of d.
        if gcd(c(j),d(k))==1 %Checks if jth entry of c is co-prime to kth
                             %entry of d.
            x(j,k)=1/(d(k)/mu+1i*c(j)/lam); %Calculates mu' for each c,d.
        end
        t13(j,k)=n+n1; %This is useful for plotting in 3d.
    end
end


plot(real(x),imag(x),'.') %Generates 2d plot of each mu' on complex plane.