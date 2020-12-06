function plot_E_r(ledcord,nleds,Ir_0,th,z)
    
l=sqrt(nleds);

r=0:0.001:0.3;
E=zeros(size(r));
for i = 1:nleds
    den=((r*cos(th)-ledcord(1,i)).^2 +(r*sin(th)-ledcord(2,i)).^2 +z^2).^2;
    E= E + (z^2 * Ir_0)*((den).^(-1));
end

plot(r,E);
xlabel('radius(m)');
ylabel('Irradinace(W/m^2)');

end