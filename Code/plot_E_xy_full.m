function plot_E_xy_full(ledcord,nleds,Ir_0,z,d)
    
l=sqrt(nleds);
plt_lim = (l-1)*d;
[x,y]=meshgrid(-plt_lim:0.001:plt_lim,-plt_lim:0.001:plt_lim);

E=zeros(size(x));
for i = 1:nleds
    den=((x-ledcord(1,i)).^2 +(y-ledcord(2,i)).^2 +z^2).^2;
    E= E + (z^2 * Ir_0)*((den).^(-1));
end

E_max = max(max(E));

s=surf(x,y,E);
colorbar
xlabel('x-coordinate(m)');
ylabel('y-coordinate(m)');
zlabel('Irradinace(W/m^2)');
zlim([0,1.1*E_max]);
s.EdgeColor = 'none';
end