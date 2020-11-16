function ledcord = arrangement_2(nleds,d)

l=sqrt(nleds);

ledcord=zeros(2,nleds);

temp=0;
for k=1:nleds
    ledcord(1,k)=-(l-1)*d/2 +(mod(k-1,l))*d;
    if(mod(k-1,l)==0 && k-1~= 0)
        temp=temp+1;
    end
    ledcord(2,k)=-(l-1)*d/2 + temp*d;
end