function plot_E_xy(ledcord,nleds,Ir_0,z,d)
    
l=sqrt(nleds);
[x,y]=meshgrid(-10:0.01:10,-10:0.01:10);

E=zeros(size(x));
for i = 1:nleds
    den=((x-ledcord(1,i)).^2 +(y-ledcord(2,i)).^2 +z^2).^2;
    E= E + (z^2 * Ir_0)*((den).^(-1));
end

a=max(max(E))*0.99
b=a*1/0.99
E=E.*((E>a).*(E<b));

nnz(E)
s=surface(x,y,E);
xlabel('x-coordinate(m)');
ylabel('y-coordinate(m)');
zlabel('Irradinace(W/m^2)');
s.EdgeColor = 'none';
end