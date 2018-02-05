a=12+32*1i; %Sets value of a.
b=2-1i; %Sets value of b.
n=5; %Sets the number of iterations for all possible paths of a_n and b_n.
n1=6; %Sets the number of iterations for 'agmsimp' function.

x=zeros(n+1,2^n); %Generates matrix for efficiency.
y=zeros(n+1,2^n); %Generates matrix for efficiency.
t0=zeros(n+n1+1,2^n); %Generates matrix for efficiency.

for i=1:2^n %Loops over columns of x and y.
    x(1,i)=a; %Sets a as every entry in first row of x.
    y(1,i)=b; %Sets b as every entry in first row of y.
end

for j=1:n %Runs over rows of x and y. 
    r=length(y)/(2^j); %Calculates number of partitions of each row.
    for k=1:2^j %Runs over the entries in each partition of jth row.
        s=(k-1)*r+1; %This is the value of the leftmost entry of partition.
        for m=0:r-1 %This runs over each entry in the partition.
            y(j+1,s+m)=sqrt(y(j,s+m)*x(j,s+m)); %Sets geometric mean of
            %x(j,s+m) and y(j,s+m) as y(j+1,s+m) entry of y.
            if rem(k,2)==0
                y(j+1,s+m)=-y(j+1,s+m); %Changes entry of y(j+1,s+m) to 
                %-y(j+1,s+m) depending on parity of k.
            end
        end
    end
    for p=1:length(x) %Runs over columns of x.
        x(j+1,p)=(x(j,p)+y(j,p))/2; %Sets arithmetic mean of x(j,p) and 
        %y(j,p) as (j+1,p)-entry of x.
    end
 
end

simpx=zeros(n1,2^n); %Generates zero matrix for efficiency.
simpy=zeros(n1,2^n); %Generates zero matrix for efficiency.

for j=1:length(x) %Runs over columns of x.
    [xm, ym]=agmsimp(x(n+1,j),y(n+1,j),n1+1); %Calculates simplest value 
    %sequence of x(n+1,j) and y(n+1,j) entries for n1+1 iterations.
    simpx(1:n1,j)=xm(2:n1+1); %Sets vector xm as jth column of simpx.
    simpy(1:n1,j)=ym(2:n1+1); %Sets vector ym as jth column of simpy.
end

finx=[x;simpx]; %Concatenates matrix x with matrix simpx.
finy=[y;simpy]; %Concatenates matrix y with matrix simpy.

for j=1:length(x) %These loops generate a matrix of the same size as finx.
    for k=1:n+n1+1 %and finy where each column counts the total number of 
        t0(k,j)=k-1; %iterations of the above process for plotting.
    end
end
