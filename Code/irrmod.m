nleds=64;
Ir_0 = 1.0;
d = 0.5;
xled=-7*d/2:d:7*d/2;
yled=-7*d/2:d:7*d/2;


ledcord=zeros(2,nleds);
temp=0;
for k=1:nleds

    ledcord(1,k)=-7*d/2 +(mod(k-1,8))*d;
    
   
    if(mod(k-1,8)==0 && k-1~= 0)
        temp=temp+1;
    end
    
    ledcord(2,k)=-7*d/2 + temp*d;

end

z = 0.35;

%x=-0.1:0.0001:0.1;
% y=-1:0.01:1;

%th=0:0.001:2*pi;
%r=1;
[x,y]=meshgrid(-0.1:0.0001:0.1,-0.1:0.0001:0.1);

r=0:0.0001:0.1;
th=pi/4;
E=zeros(size(x));


for i = 1:nleds
    %den=((r*cos(th)-ledcord(1,i)).^2 +(r*sin(th)-ledcord(2,i)).^2 +z^2).^2;
    den=((x-ledcord(1,i)).^2 +(y-ledcord(2,i)).^2 +z^2).^2;
    E= E + (z^2 * Ir_0)*((den).^(-1));
    
end

%x=-0.1:0.0001:0.1;
%y=-0.1:0.0001:0.1;

s=surf(x,y,E);

%hold on 
%plot(r,E);

s.EdgeColor = 'none';

