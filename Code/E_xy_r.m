function E_r = E_xy_r(ledcord,nleds,Ir_0,z,d,x_end)
    
x=x_end;
y=0;
E=0;
for i = 1:nleds
    den=((x-ledcord(1,i)).^2 +(y-ledcord(2,i)).^2 +z^2).^2;
    E = E + (z^2 * Ir_0)*((den).^(-1));
end
E_r = E;
end
