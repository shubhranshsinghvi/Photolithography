function [E,x,y] = plot_dE_dr(ledcord,nleds,Ir_0,th,d,z)
    
l=sqrt(nleds);

r=-l*d:d/10:l*d;

E=zeros(size(r));
for i = 1:nleds
    den=((r*cos(th)-ledcord(1,i)).^2 +(r*sin(th)-ledcord(2,i)).^2 +z^2).^2;
    E= E + (z^2 * Ir_0)*((den).^(-1));
end

rd = (r(1:end-1)+r(2:end))/2;
plot(rd,diff(E)./diff(r));
xlabel('radius(m)');
ylabel('Irradinace(W/m^2)');

end