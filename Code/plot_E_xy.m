function plot_E_xy(ledcord,nleds,Ir_0,z)
    
l=sqrt(nleds);
[x,y]=meshgrid(-0.03:0.0001:0.03,-0.03:0.0001:0.03);

E=zeros(size(x));
for i = 1:nleds
    den=((x-ledcord(1,i)).^2 +(y-ledcord(2,i)).^2 +z^2).^2;
    E= E + (z^2 * Ir_0)*((den).^(-1));
end

s=surf(x,y,E);
xlabel('x-coordinate(m)');
ylabel('y-coordinate(m)');
zlabel('Irradinace(W/m^2)');
s.EdgeColor = 'none';
end