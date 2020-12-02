nleds=49;
Ir_0 = 1;
d=0.1692;
z=0.2136;
%th=0;
x_end=0;
ledcord = arrangement_1(nleds,d);
display(E_xy_end(ledcord,nleds,Ir_0,z,d,x_end));


ledcord = arrangement_1(nleds,d);
figure(1)
plot_E_xy_full(ledcord,nleds,Ir_0,z,d);
% figure(2)
% plot_E_xy_full(ledcord,nleds,Ir_0,z,d);

% ledcord = arrangement_2(nleds,d);
% figure(3)
% plot_E_xy(ledcord,nleds,Ir_0,z,d);
% figure(4)
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