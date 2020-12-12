nleds=25;
Ir_0 = 0.1;
d=0.107;
z=0.126;
th=0;

ledcord = arrangement_1(nleds,d);
E_r(ledcord,nleds,Ir_0,th,z,-0.3);

figure(1)
hold on 
plot_E_r(ledcord,nleds,Ir_0,th,z,d);

% figure(2)
% plot_E_xy_full(ledcord,nleds,Ir_0,z,d);



% d=[0.005,0.009,0.015,0.02,0.025];
% for i=1:length(d)
% ledcord = arrangement_1(nleds,d(i));
% figure(2)
% hold on 
% plot_E_r(ledcord,nleds,Ir_0,th,z);
% hold off
% figure(3)
% hold on
% plot_dE_dr(ledcord,nleds,Ir_0,th,z);
% hold off
% end
% 
% figure(2)
% legend(num2str(d(1)),num2str(d(2)),num2str(d(3)),num2str(d(4)),num2str(d(5)));
% figure(3)
% legend(num2str(d(1)),num2str(d(2)),num2str(d(3)),num2str(d(4)),num2str(d(5)));