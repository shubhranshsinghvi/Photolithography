function [E,x,y] = plot_E_r(nleds,Ir_0,th,d,z);
    
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

r=0:d/10:l*d;

E=zeros(size(r));
for i = 1:nleds
    den=((r*cos(th)-ledcord(1,i)).^2 +(r*sin(th)-ledcord(2,i)).^2 +z^2).^2;
    E= E + (z^2 * Ir_0)*((den).^(-1));
end

plot(r,E);
xlabel('radius(m)');
ylabel('Irradinace(W/m^2)');

end