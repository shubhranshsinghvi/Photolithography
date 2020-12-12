function E_r(ledcord,nleds,Ir_0,th,z,r)
    
E=0;
for i = 1:nleds
     den=((r*cos(th)-ledcord(1,i)).^2 +(r*sin(th)-ledcord(2,i)).^2 +z^2).^2;
    E= E + (z^2 * Ir_0)*((den).^(-1));
end
display(E);

end
