function mn = agmcomplex( a, b, e )
an(1)=a;
bn(1)=b;
j=1;
while j>0
        an(j+1)=(an(j)+bn(j))/2;
        bi=sqrt(an(j)*bn(j));
            if (abs(an(j+1)-bi)<=abs(an(j+1)+bi))|(abs(an(j+1)-bi)==abs(an(j+1)+bi)&&imag(bi/an(j+1))>0)
                bn(j+1)=bi;
            else
                bn(j+1)=-bi;
            end
            if abs(an(j+1)-bn(j+1))<e
                j=0;
            end
end
mn=an(j+1);
end

