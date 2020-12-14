function plot_E_r(ledcord,nleds,Ir_0,th,z,d)
    
l=sqrt(nleds);

r=-0.04:0.0001:0.04;
E=zeros(size(r));
for i = 1:nleds
    den=((r*cos(th)-ledcord(1,i)).^2 +(r*sin(th)-ledcord(2,i)).^2 +z^2).^2;
    E= E + (z^2 * Ir_0)*((den).^(-1));
end

E_max = max(max(E));

plot(r,E);
xlabel('radius(m)');
ylabel('Irradinace(W/m^2)');
% ylim([0,1.1*E_max]);
end