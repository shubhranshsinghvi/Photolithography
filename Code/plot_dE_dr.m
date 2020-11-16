function plot_dE_dr(ledcord,nleds,Ir_0,th,z)
    
l=sqrt(nleds);

r=-0.03:0.001:0.03;

E=zeros(size(r));
for i = 1:nleds
    den=((r*cos(th)-ledcord(1,i)).^2 +(r*sin(th)-ledcord(2,i)).^2 +z^2).^2;
    E= E + (z^2 * Ir_0)*((den).^(-1));
end

rd = (r(1:end-1)+r(2:end))/2;
plot(rd,diff(E)./diff(r));
xlabel('radius(m)');
ylabel('Gradient of Irradinace[dE/dr](W/m^3)');

end