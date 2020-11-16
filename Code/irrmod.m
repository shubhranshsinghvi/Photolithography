nleds=64;
Ir_0 = 1.0;
d =1;
z=0.35;
th=0;

ledcord = arrangement_1(nleds,d);

figure(1)
plot_E_xy(ledcord,nleds,Ir_0,z);

d=[0.01,0.05,0.1,0.3,1];
for i=1:length(d)
ledcord = arrangement_1(nleds,d(i));
figure(2)
hold on 
plot_E_r(ledcord,nleds,Ir_0,th,z);
hold off
figure(3)
hold on
plot_dE_dr(ledcord,nleds,Ir_0,th,z);
hold off
end

figure(2)
legend(num2str(d(1)),num2str(d(2)),num2str(d(3)),num2str(d(4)),num2str(d(5)));
figure(3)
legend(num2str(d(1)),num2str(d(2)),num2str(d(3)),num2str(d(4)),num2str(d(5)));