nleds=121;
Ir_0 = 0.1;
d=0.025;
z=0.035;
th=0;

ledcord_1 = arrangement_1(nleds,d);
ledcord_2 = arrangement_2(nleds,d);
ledcord_3 = arrangement_3(nleds,d);
% E_r(ledcord,nleds,Ir_0,th,z,-0.3);

figure(1)
hold on 
plot_E_r(ledcord_1,nleds,Ir_0,th,z,d);
plot_E_r(ledcord_2,nleds,Ir_0,th,z,d);
plot_E_r(ledcord_3,nleds,Ir_0,th,z,d);
legend("1","2","3")

figure(2)
plot_E_xy_full(ledcord_1,nleds,Ir_0,z,d);
title("square grid");

figure(3)
plot_E_xy_full(ledcord_2,nleds,Ir_0,z,d);
title("inner circle grid");

figure(4)
plot_E_xy_full(ledcord_3,nleds,Ir_0,z,d);
title("outer circle grid");

figure(5)
hold on 
plot_norm_E_r(ledcord_1,nleds,Ir_0,th,z,d);
plot_norm_E_r(ledcord_2,nleds,Ir_0,th,z,d);
plot_norm_E_r(ledcord_3,nleds,Ir_0,th,z,d);
legend("1","2","3")

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