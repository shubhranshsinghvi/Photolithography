nleds=9;
Ir_0 = 1.0;
d =0.1;
z=0.35;
th=pi/4;

ledcord = arrangement_1(nleds,d);

figure(1)
plot_E_xy(ledcord,nleds,Ir_0,d,z);


figure(2)
plot_E_r(ledcord,nleds,Ir_0,th,d,z);


figure(3)
hold on
plot_dE_dr(ledcord,nleds,Ir_0,th,d,z);