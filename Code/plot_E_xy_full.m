function plot_E_xy_full(ledcord,nleds,Ir_0,z,d)
    
l=sqrt(nleds);
[x,y]=meshgrid(-2:0.01:2,-2:0.01:2);

E=zeros(size(x));
for i = 1:nleds
    den=((x-ledcord(1,i)).^2 +(y-ledcord(2,i)).^2 +z^2).^2;
    E= E + (z^2 * Ir_0)*((den).^(-1));
end

E_half=E>(max(E)/2);
nnz(E_half);

s=surface(x,y,E);
xlabel('x-coordinate(m)');
ylabel('y-coordinate(m)');
zlabel('Irradinace(W/m^2)');
s.EdgeColor = 'none';
end